.class public final Lcom/anddoes/launcher/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private b:Ljavax/crypto/Cipher;

.field private c:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x4a

    const/16 v2, 0x10

    .line 24
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    .line 23
    sput-object v0, Lcom/anddoes/launcher/a/a;->a:[B

    .line 19
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_3
    const-string v0, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 34
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/16 v3, 0x400

    const/16 v4, 0x100

    invoke-direct {v1, v2, p1, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 35
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 36
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 37
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/a/a;->b:Ljavax/crypto/Cipher;

    .line 38
    iget-object v0, p0, Lcom/anddoes/launcher/a/a;->b:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/anddoes/launcher/a/a;->a:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/a/a;->c:Ljavax/crypto/Cipher;

    .line 40
    iget-object v0, p0, Lcom/anddoes/launcher/a/a;->c:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/anddoes/launcher/a/a;->a:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_60
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_60} :catch_61

    return-void

    .line 41
    :catch_61
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 48
    if-nez p1, :cond_4

    .line 49
    const/4 v0, 0x0

    .line 53
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/anddoes/launcher/a/a;->b:Ljavax/crypto/Cipher;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.anddoes.launcher.AESObfuscator-1|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/a/b;->a([B)Ljava/lang/String;
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_22} :catch_24
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_22} :catch_2d

    move-result-object v0

    goto :goto_3

    .line 54
    :catch_24
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :catch_2d
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 62
    if-nez p1, :cond_4

    .line 63
    const/4 v0, 0x0

    .line 74
    :goto_3
    return-object v0

    .line 66
    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/anddoes/launcher/a/a;->c:Ljavax/crypto/Cipher;

    invoke-static {p1}, Lcom/anddoes/launcher/a/b;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 69
    const-string v1, "com.anddoes.launcher.AESObfuscator-1|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 70
    if-eqz v1, :cond_54

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header not found (invalid data or key):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catch Lcom/anddoes/launcher/a/c; {:try_start_4 .. :try_end_32} :catch_32
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_32} :catch_5f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_32} :catch_81
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_32} :catch_a3

    .line 75
    :catch_32
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_54
    const/16 v1, 0x25

    :try_start_56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5d
    .catch Lcom/anddoes/launcher/a/c; {:try_start_56 .. :try_end_5d} :catch_32
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_56 .. :try_end_5d} :catch_5f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_56 .. :try_end_5d} :catch_81
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_56 .. :try_end_5d} :catch_a3

    move-result-object v0

    goto :goto_3

    .line 77
    :catch_5f
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :catch_81
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :catch_a3
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
