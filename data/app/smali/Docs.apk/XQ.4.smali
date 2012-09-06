.class public LXQ;
.super Ljava/lang/Object;
.source "FileUtilitiesImpl.java"

# interfaces
.implements LXP;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 135
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 137
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 138
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 140
    :cond_10
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/Header;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 149
    if-nez p1, :cond_5

    .line 150
    const-string v0, "text/plain"

    .line 154
    :cond_4
    :goto_4
    return-object v0

    .line 152
    :cond_5
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 154
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public a(Ljava/security/Key;Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 92
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 95
    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p2, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_11} :catch_19
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_11} :catch_20

    return-object v1

    .line 96
    :catch_12
    move-exception v0

    .line 97
    new-instance v1, LFw;

    invoke-direct {v1, v0}, LFw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :catch_19
    move-exception v0

    .line 99
    new-instance v1, LFw;

    invoke-direct {v1, v0}, LFw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :catch_20
    move-exception v0

    .line 101
    new-instance v1, LFw;

    invoke-direct {v1, v0}, LFw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LXQ;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 73
    return-void
.end method

.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    :try_start_0
    invoke-direct {p0, p1, p2}, LXQ;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_c

    .line 81
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 82
    if-eqz p3, :cond_b

    .line 83
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 86
    :cond_b
    return-void

    .line 81
    :catchall_c
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 82
    if-eqz p3, :cond_15

    .line 83
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_15
    throw v0
.end method

.method public a(Ljava/security/Key;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 112
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 114
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 116
    :goto_10
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_27

    .line 117
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1f} :catch_20
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_1f} :catch_2f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_1f} :catch_36
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_1f} :catch_3d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_1f} :catch_44

    goto :goto_10

    .line 120
    :catch_20
    move-exception v0

    .line 121
    new-instance v1, LFw;

    invoke-direct {v1, v0}, LFw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 119
    :cond_27
    :try_start_27
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27 .. :try_end_2e} :catch_20
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_27 .. :try_end_2e} :catch_2f
    .catch Ljava/security/InvalidKeyException; {:try_start_27 .. :try_end_2e} :catch_36
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_27 .. :try_end_2e} :catch_3d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_27 .. :try_end_2e} :catch_44

    .line 131
    return-void

    .line 122
    :catch_2f
    move-exception v0

    .line 123
    new-instance v1, LFw;

    invoke-direct {v1, v0}, LFw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :catch_36
    move-exception v0

    .line 125
    new-instance v1, LFw;

    invoke-direct {v1, v0}, LFw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 126
    :catch_3d
    move-exception v0

    .line 127
    new-instance v1, LFw;

    invoke-direct {v1, v0}, LFw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :catch_44
    move-exception v0

    .line 129
    new-instance v1, LFw;

    invoke-direct {v1, v0}, LFw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/io/File;)Z
    .registers 3
    .parameter

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/io/InputStream;)[B
    .registers 3
    .parameter

    .prologue
    .line 159
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 160
    invoke-virtual {p0, p1, v0}, LXQ;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
