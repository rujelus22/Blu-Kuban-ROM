.class public final Lcom/widevine/drm/internal/y;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I[B[BLjava/security/cert/X509Certificate;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v5, -0x100

    :try_start_2
    invoke-direct {p0}, Lcom/widevine/drm/internal/y;->a()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_9
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_9} :catch_75
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_9} :catch_b9
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_9} :catch_fd
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_9} :catch_141
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_9} :catch_185

    :try_start_9
    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    array-length v0, p2

    array-length v2, v1

    if-ne v0, v2, :cond_233

    const/4 v0, 0x0

    :goto_20
    array-length v2, p2

    if-ge v0, v2, :cond_1cd

    aget-byte v2, p2, v0

    aget-byte v3, v1, v0

    if-eq v2, v3, :cond_1c9

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Digest mismatch."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_31} :catch_31
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_9 .. :try_end_31} :catch_23b
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_31} :catch_27f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9 .. :try_end_31} :catch_2c3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9 .. :try_end_31} :catch_307

    :catch_31
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sig verify algo error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_75
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cert verify encoding error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_b9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cert verify algo error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_fd
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cert verify key error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_141
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cert verify provider error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_185
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cert verify signature error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_20

    :cond_1cd
    :try_start_1cd
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    rem-int/lit8 v2, v1, 0x3

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x0

    rem-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v2, 0x0

    rem-int/lit16 v3, v3, 0xff

    const/high16 v4, 0xff

    and-int/2addr v4, p1

    ushr-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, p1, 0xff

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0xff

    and-int v4, p1, v5

    ushr-int/lit8 v4, v4, 0x18

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v1, 0xff

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0xff

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v4, 0xffc000

    and-int/2addr v0, v4

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v2, v5

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0x3f00

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    or-int/2addr v0, v1

    return v0

    :cond_233
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Digest  mismatch."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1cd .. :try_end_23b} :catch_31
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1cd .. :try_end_23b} :catch_23b
    .catch Ljava/security/InvalidKeyException; {:try_start_1cd .. :try_end_23b} :catch_27f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1cd .. :try_end_23b} :catch_2c3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1cd .. :try_end_23b} :catch_307

    :catch_23b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sig verify padding error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_27f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sig verify key error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2c3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sig verify padding error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_307
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sig verify block size error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a()Ljava/security/PublicKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v0, "MIIEIjANBgkqhkiG9w0BAQEFAAOCBA8AMIIECgKCBAEAtsUF62b/riY/U947T2A7FHEYuulzEZc3v0HjTuSDphMy3KhHpgFQX23Ui7X99HLFbH0yflOtwsXN4JFUk3C36bjT4MyiGalx4BA9ykzSJ9Ctzu6/n4IsV3eOoaS9wI8QTI7RLGqNAeVnCkqXHmQuf4mXIR/yfyjd45fGhaCTTdreia2Gve+B5jNeaINHNezjBjX428r9TfvM3/FOWIfNKNqYbUsYUMUrIMddC6VaDhUP/j614wxrwHfjn0l85yZCj4Q2Ls8YkIhKVkB5DJshkVOOpG1KxgAouHsEDYCojqQNCDzDl+UBx/68JClmjPCYiC2BUNdXnl5fO5myKkw393ZWr4RvNPPS/n5CmY+Ox7ifeydgedy9lJy9N5OyA52j41lYASWii1R5pimHM04kEXyhPdUvB+pWZy19D+1+tnZkuB6FqolAn922gWIEcoAyBzWOtS+gWMXyg9Kd9v8VGWIELvvJoQQXp2uwYIvudye+HBvGtTNm3cPO4opIc5MswHDcdpsrUhWL+ViyXHgau3iQ6LItujL2ftDX139Js8orEkK+czVsFVZHev+uROzVG0WWSUrTGcIvKHqS+bew88opXOt4fiuCYMt3uQNM+1TNeiG0704y9UnbMiAsJlnr4n4uUF734QyxlILH6bnJkjwfp0FM3xArhMHg0pi2GAoQBzCHe59mCefuQn40QMCYPithI1vAUEt+wb1lK3YIwDlcshhe8ttSsQi2AXd8TqBdvBKGYTZ/ZibWTzx9gGhf3OFEEBlFN9WEeHv54Er9/DuL3FSGYzOYSVg9C0fwH40EtjD4Pq4ol+WDII21MFGgCch3sx7jp+n8WfKt6tQq9jdiKeSRrD6xtHfAB3HP6mCDkU6m+ulwOIcx2xHATSEtXSD9B7Vtl4Z1oVOWoveXSEua2yC+5mziLEEhqn5BSJF0kK2YCXuYITrM0vulFqiFRynQ/PesYcqacFQmI6mpHp2tlxfVfH0Zfd1Lv3xCLZMRoV2AleAoCrcBFtk3QGRE7opQMs/w8WiKg/DfXb4ysPqqt5KLMJnJXvthf/tETxLQlUhrRibIioBE4rVGXozuJBypEjWe1f2Z9UcC3S19/hTh9q7ITH/YxqCGLWkrsJ9IQ4RQD+AOy6tJJrPaopmtAN2p21IrBgDyQPaVDL0vsnZZ8xwGZ4GkRKa5fGBhtFqwWypibT7HKnBknoS4CxlFNAxLYQG5Bmpom5W3rjcAfpcVBbdjBunYiV4k//zn4gEoHiGIMda3GUfcQY8rFt1YiEwF0ewPamD+OvrtxNXRohgP5JeyDBp7QWklFEqv5pWRIdp9s31zhn3qbPDNgD+qcXHEM8ZKpm/K3WOmvWcwmwIDAQAB"

    invoke-static {v0}, Lcom/widevine/drm/internal/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_14
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_14} :catch_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_9e

    move-result-object v0

    return-object v0

    :catch_16
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root CA parsing errors. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_5a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root CA algo errors. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_9e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root CA errors. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_17
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate parsing Error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)Ljava/util/Properties;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v2, Ljava/util/jar/JarFile;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2a

    new-array v3, v0, [I

    fill-array-data v3, :array_c6

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_19
    array-length v5, v3

    if-ge v0, v5, :cond_2a

    aget v5, v3, v0

    rem-int/lit8 v6, v0, 0x12

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_19

    :cond_2a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_3c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3c} :catch_81

    return-object v1

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property retrieval zip file error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_81
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property retrieval io error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_c6
    .array-data 0x4
        0x70t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a(Lcom/widevine/drm/internal/z;Landroid/content/pm/ApplicationInfo;)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v9, 0x8

    const/4 v0, 0x0

    const/16 v2, 0x16

    :try_start_6
    new-array v3, v2, [I

    fill-array-data v3, :array_1fe

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v0

    :goto_11
    array-length v5, v3

    if-ge v2, v5, :cond_22

    aget v5, v3, v2

    rem-int/lit8 v6, v2, 0x12

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x2

    goto :goto_11

    :cond_22
    new-instance v3, Ljava/util/jar/JarFile;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    sget-object v2, Lcom/widevine/drm/internal/z;->b:Lcom/widevine/drm/internal/z;

    if-ne p1, v2, :cond_9d

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    :goto_3f
    const/16 v5, 0x2000

    new-array v5, v5, [B

    :cond_43
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    add-int/2addr v0, v6

    if-lez v6, :cond_52

    sget-object v7, Lcom/widevine/drm/internal/z;->b:Lcom/widevine/drm/internal/z;

    if-ne p1, v7, :cond_12d

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    :cond_52
    :goto_52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read in len: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", totalLen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-gtz v6, :cond_43

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total Hash Len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    sget-object v0, Lcom/widevine/drm/internal/z;->b:Lcom/widevine/drm/internal/z;

    if-ne p1, v0, :cond_17b

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    :goto_9c
    return-object v0

    :cond_9d
    sget-object v2, Lcom/widevine/drm/internal/z;->a:Lcom/widevine/drm/internal/z;

    if-ne p1, v2, :cond_aa

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_3f

    :cond_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown hash type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/widevine/drm/internal/z;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hash type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/widevine/drm/internal/z;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_e9} :catch_e9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e9} :catch_137

    :catch_e9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hashing algo error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12d
    :try_start_12d
    sget-object v7, Lcom/widevine/drm/internal/z;->a:Lcom/widevine/drm/internal/z;

    if-ne p1, v7, :cond_52

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v6}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_135
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12d .. :try_end_135} :catch_e9
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_135} :catch_137

    goto/16 :goto_52

    :catch_137
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hashing io error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17b
    :try_start_17b
    sget-object v0, Lcom/widevine/drm/internal/z;->a:Lcom/widevine/drm/internal/z;

    if-ne p1, v0, :cond_1dd

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRC: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/16 v4, 0x38

    ushr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x2

    const/16 v4, 0x28

    ushr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    const/16 v4, 0x20

    ushr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x4

    const/16 v4, 0x18

    ushr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x5

    const/16 v4, 0x10

    ushr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x6

    ushr-long v4, v1, v9

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x7

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3
    :try_end_1db
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17b .. :try_end_1db} :catch_e9
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_1db} :catch_137

    goto/16 :goto_9c

    :cond_1dd
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hash type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/widevine/drm/internal/z;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :array_1fe
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xact 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xd3t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public final a(I)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v6, -0x100

    const/4 v2, 0x0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/util/Random;->setSeed(J)V

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    rem-int/lit8 v3, v1, 0x5

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    const v3, 0xff00

    and-int/2addr v3, p1

    ushr-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x0

    rem-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v3, 0x0

    rem-int/lit16 v4, v4, 0xff

    const/high16 v5, 0xff

    and-int/2addr v5, p1

    ushr-int/lit8 v5, v5, 0x10

    add-int/2addr v3, v5

    rem-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    rem-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, p1, 0xff

    add-int/2addr v3, v5

    rem-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    rem-int/lit16 v4, v4, 0xff

    and-int v5, p1, v6

    ushr-int/lit8 v5, v5, 0x18

    add-int/2addr v3, v5

    rem-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    rem-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v1, 0xff

    add-int/2addr v3, v5

    rem-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    rem-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x7b

    rem-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    rem-int/lit16 v4, v4, 0xff

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v5, 0xffc000

    and-int/2addr v0, v5

    shl-int/lit8 v3, v3, 0x18

    and-int/2addr v3, v6

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0x3f00

    or-int/2addr v0, v1

    and-int/lit16 v1, v4, 0xff

    or-int/2addr v0, v1

    const/4 v1, 0x4

    :try_start_66
    new-array v3, v1, [I

    fill-array-data v3, :array_1ea

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_71
    array-length v5, v3

    if-ge v1, v5, :cond_82

    aget v5, v3, v1

    rem-int/lit8 v6, v1, 0x12

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x2

    goto :goto_71

    :cond_82
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    if-nez v1, :cond_c6

    const-string v1, "Warning: 0x801"

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Error: 0x801"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_9d} :catch_9d
    .catch Ljava/lang/SecurityException; {:try_start_66 .. :try_end_9d} :catch_1b6

    :catch_9d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "Warning: 0x805"

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->b(Ljava/lang/String;)V

    :cond_c5
    :goto_c5
    return v0

    :cond_c6
    :try_start_c6
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v1, 0x16

    new-array v5, v1, [I

    fill-array-data v5, :array_1f6

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_ea
    array-length v7, v5

    if-ge v1, v7, :cond_fb

    aget v7, v5, v1

    rem-int/lit8 v8, v1, 0x12

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x2

    goto :goto_ea

    :cond_fb
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e7

    const/16 v1, 0x58

    new-array v3, v1, [I

    fill-array-data v3, :array_226

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_118
    array-length v5, v3

    if-ge v1, v5, :cond_129

    aget v5, v3, v1

    rem-int/lit8 v6, v1, 0x12

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x2

    goto :goto_118

    :cond_129
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_12e
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x4

    new-array v5, v1, [I

    fill-array-data v5, :array_2da

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_13d
    array-length v7, v5

    if-ge v1, v7, :cond_14e

    aget v7, v5, v1

    rem-int/lit8 v8, v1, 0x12

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x2

    goto :goto_13d

    :cond_14e
    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0xe

    new-array v5, v1, [I

    fill-array-data v5, :array_2e6

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_162
    array-length v7, v5

    if-ge v1, v7, :cond_173

    aget v7, v5, v1

    rem-int/lit8 v8, v1, 0x12

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x2

    goto :goto_162

    :cond_173
    const/4 v1, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_182
    if-ge v3, v6, :cond_c5

    aget-object v7, v5, v3

    move v1, v2

    :goto_187
    array-length v8, v4

    if-ge v1, v8, :cond_1e3

    new-instance v8, Ljava/io/File;

    aget-object v9, v4, v1

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1e0

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v1, v1, 0x810

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1b6
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_1b6} :catch_9d
    .catch Ljava/lang/SecurityException; {:try_start_c6 .. :try_end_1b6} :catch_1b6

    :catch_1b6
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "Warning: 0x806"

    invoke-static {v1}, Lcom/widevine/drm/internal/p;->b(Ljava/lang/String;)V

    goto/16 :goto_c5

    :cond_1e0
    add-int/lit8 v1, v1, 0x1

    goto :goto_187

    :cond_1e3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_182

    :cond_1e7
    move-object v3, v1

    goto/16 :goto_12e

    :array_1ea
    .array-data 0x4
        0x71t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
    .end array-data

    :array_1f6
    .array-data 0x4
        0x63t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
    .end array-data

    :array_226
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x83t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x95t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0xd7t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0xf2t 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0xact 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0xf6t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xaft 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
    .end array-data

    :array_2da
    .array-data 0x4
        0x71t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    :array_2e6
    .array-data 0x4
        0x72t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final a(ILandroid/content/pm/ApplicationInfo;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v8, 0x8

    const/4 v1, 0x0

    sget-object v0, Lcom/widevine/drm/internal/z;->b:Lcom/widevine/drm/internal/z;

    invoke-direct {p0, v0, p2}, Lcom/widevine/drm/internal/y;->a(Lcom/widevine/drm/internal/z;Landroid/content/pm/ApplicationInfo;)[B

    move-result-object v2

    if-nez v2, :cond_13

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Hash computation failed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-direct {p0, p2}, Lcom/widevine/drm/internal/y;->a(Landroid/content/pm/ApplicationInfo;)Ljava/util/Properties;

    move-result-object v3

    if-nez v3, :cond_1a

    :goto_19
    return v1

    :cond_1a
    sget-object v4, Lcom/widevine/drm/internal/z;->a:Lcom/widevine/drm/internal/z;

    if-ne v0, v4, :cond_4c

    new-array v4, v8, [I

    fill-array-data v4, :array_e2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_29
    array-length v6, v4

    if-ge v0, v6, :cond_3a

    aget v6, v4, v0

    rem-int/lit8 v7, v0, 0x12

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_29

    :cond_3a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_42
    if-nez v0, :cond_9b

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Signature absent."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    sget-object v4, Lcom/widevine/drm/internal/z;->b:Lcom/widevine/drm/internal/z;

    if-ne v0, v4, :cond_75

    new-array v4, v8, [I

    fill-array-data v4, :array_f6

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_5b
    array-length v6, v4

    if-ge v0, v6, :cond_6c

    aget v6, v4, v0

    rem-int/lit8 v7, v0, 0x12

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_5b

    :cond_6c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized hash type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/widevine/drm/internal/z;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/widevine/drm/internal/p;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unknown hash type."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9b
    invoke-static {v0}, Lcom/widevine/drm/internal/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v4, v0

    if-nez v4, :cond_aa

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Empty signature decoded."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_aa
    new-array v4, v8, [I

    fill-array-data v4, :array_10a

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_b4
    array-length v6, v4

    if-ge v1, v6, :cond_c5

    aget v6, v4, v1

    rem-int/lit8 v7, v1, 0x12

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x2

    goto :goto_b4

    :cond_c5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d7

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Certificate absent."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d7
    invoke-direct {p0, v1}, Lcom/widevine/drm/internal/y;->a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/widevine/drm/internal/y;->a(I[B[BLjava/security/cert/X509Certificate;)I

    move-result v1

    goto/16 :goto_19

    nop

    :array_e2
    .array-data 0x4
        0x71t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xaft 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
    .end array-data

    :array_f6
    .array-data 0x4
        0x71t 0x0t 0x0t 0x0t
        0x9dt 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_10a
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data
.end method
