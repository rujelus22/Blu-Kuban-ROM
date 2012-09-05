.class public Lcom/sec/android/app/music/common/richinfo/crypto/AesCrypt;
.super Ljava/lang/Object;
.source "AesCrypt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/richinfo/crypto/AesCrypt$KDFClass;
    }
.end annotation


# static fields
.field private static final CLASSTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/sec/android/app/music/common/richinfo/crypto/AesCrypt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/crypto/AesCrypt;->CLASSTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method

.method public static crypt(ILjava/io/File;)Ljava/io/InputStream;
    .registers 9
    .parameter "mode"
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    const-string v5, "AES/CBC/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 44
    .local v1, cipher:Ljavax/crypto/Cipher;
    const-string v5, "00000000000000000000000000000000"

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toBytes(Ljava/lang/String;I)[B

    move-result-object v2

    .line 45
    .local v2, iv:[B
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 48
    .local v3, ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lcom/sec/android/app/music/common/richinfo/crypto/AesCrypt$KDFClass;->SecCryptoKDF()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 49
    .local v4, key:Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, p0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    invoke-static {p1}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toByteFromFile(Ljava/io/File;)[B

    move-result-object v0

    .line 62
    .local v0, bytes:[B
    new-instance v5, Ljavax/crypto/CipherInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v5
.end method
