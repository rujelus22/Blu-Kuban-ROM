.class public Ld/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private final b:Ljavax/crypto/spec/SecretKeySpec;

.field private c:Ljavax/crypto/Cipher;

.field private d:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "AES"

    sput-object v0, Ld/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Ld/a;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Ld/a;->b:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method

.method private a([BI)[B
    .registers 5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_21

    const-string v0, "encrypt"

    :goto_5
    if-ne p2, v1, :cond_24

    :try_start_7
    iget-object v0, p0, Ld/a;->c:Ljavax/crypto/Cipher;

    if-nez v0, :cond_1a

    sget-object v0, Ld/a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Ld/a;->c:Ljavax/crypto/Cipher;

    iget-object v0, p0, Ld/a;->c:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ld/a;->b:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :cond_1a
    iget-object v0, p0, Ld/a;->c:Ljavax/crypto/Cipher;

    :goto_1c
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_1f} :catch_43
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_1f} :catch_41
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_1f} :catch_3f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_1f} :catch_3d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_1f} :catch_3a

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    const-string v0, "decrypt"

    goto :goto_5

    :cond_24
    :try_start_24
    iget-object v0, p0, Ld/a;->d:Ljavax/crypto/Cipher;

    if-nez v0, :cond_37

    sget-object v0, Ld/a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Ld/a;->d:Ljavax/crypto/Cipher;

    iget-object v0, p0, Ld/a;->d:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ld/a;->b:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :cond_37
    iget-object v0, p0, Ld/a;->d:Ljavax/crypto/Cipher;
    :try_end_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_39} :catch_43
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_24 .. :try_end_39} :catch_41
    .catch Ljava/security/InvalidKeyException; {:try_start_24 .. :try_end_39} :catch_3f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_24 .. :try_end_39} :catch_3d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_24 .. :try_end_39} :catch_3a

    goto :goto_1c

    :catch_3a
    move-exception v0

    :goto_3b
    const/4 v0, 0x0

    goto :goto_20

    :catch_3d
    move-exception v0

    goto :goto_3b

    :catch_3f
    move-exception v0

    goto :goto_3b

    :catch_41
    move-exception v0

    goto :goto_3b

    :catch_43
    move-exception v0

    goto :goto_3b
.end method


# virtual methods
.method public a([B)[B
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ld/a;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public b([B)[B
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ld/a;->a([BI)[B

    move-result-object v0

    return-object v0
.end method
