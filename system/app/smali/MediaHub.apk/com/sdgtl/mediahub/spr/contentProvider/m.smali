.class public final Lcom/sdgtl/mediahub/spr/contentProvider/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljavax/crypto/spec/DESedeKeySpec;

.field private b:Ljavax/crypto/SecretKeyFactory;

.field private c:Ljavax/crypto/SecretKey;

.field private d:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    const-string v1, "QWaBRKR!@#$%^&*()jtiapps"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a:Ljavax/crypto/spec/DESedeKeySpec;

    const-string v0, "DESede"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/m;->b:Ljavax/crypto/SecretKeyFactory;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/m;->b:Ljavax/crypto/SecretKeyFactory;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a:Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/m;->c:Ljavax/crypto/SecretKey;

    const-string v0, "DESede/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/m;->d:Ljavax/crypto/Cipher;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    const-string v1, "MediaHubAPP"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    aget-byte v3, p0, v0

    const/16 v4, 0x10

    new-array v4, v4, [C

    fill-array-data v4, :array_2a

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v5, v4, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :array_2a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    :goto_15
    rsub-int/lit8 v2, v1, 0x8

    if-lt v0, v2, :cond_30

    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :try_start_1d
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/m;->d:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/m;->c:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/m;->d:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a([B)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2e} :catch_46

    move-result-object v0

    goto :goto_b

    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :catch_46
    move-exception v0

    const-string v1, "MediaHubAPP"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "*********************"

    goto :goto_b
.end method
