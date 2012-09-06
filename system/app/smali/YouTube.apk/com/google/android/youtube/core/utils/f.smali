.class public final Lcom/google/android/youtube/core/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a()Ljava/security/Key;
    .registers 4

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    :try_start_1
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 42
    const/16 v2, 0x80

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 43
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_14} :catch_16

    move-result-object v0

    .line 48
    :goto_15
    return-object v0

    .line 44
    :catch_16
    move-exception v1

    .line 45
    const-string v2, "AES not recognized as a supported algorithm"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public static a(Landroid/content/SharedPreferences;)Ljava/security/Key;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 52
    const-string v0, "downloads_encryption_key"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "downloads_encryption_key"

    invoke-static {}, Lcom/google/android/youtube/core/utils/f;->a()Ljava/security/Key;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 58
    :cond_22
    const-string v0, "downloads_encryption_key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 60
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljavax/crypto/spec/IvParameterSpec;
    .registers 4
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6} :catch_15

    move-result-object v0

    .line 71
    :goto_7
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v1

    .line 67
    :catch_15
    move-exception v1

    .line 68
    const-string v2, "MD5 not recognized as a supported algorithm"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private static a([BIILjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;IJ)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    const-wide/16 v0, 0x10

    div-long v1, p6, v0

    .line 102
    const-wide/16 v3, 0x10

    rem-long v3, p6, v3

    long-to-int v3, v3

    .line 105
    add-int v0, v3, p2

    new-array v4, v0, [B

    .line 106
    const/4 v0, 0x0

    :goto_e
    if-ge v0, p2, :cond_1b

    .line 107
    add-int v5, v3, v0

    add-int v6, p1, v0

    aget-byte v6, p0, v6

    aput-byte v6, v4, v5

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 110
    :cond_1b
    const-string v0, "AES/CTR/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {p4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v6, 0x8

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v7

    add-long/2addr v1, v7

    invoke-virtual {v5, v6, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p5, p3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 111
    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 113
    const/4 v0, 0x0

    :goto_4b
    if-ge v0, p2, :cond_58

    .line 114
    add-int v2, p1, v0

    add-int v4, v3, v0

    aget-byte v4, v1, v4

    aput-byte v4, p0, v2

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 116
    :cond_58
    return-void
.end method

.method public static a([BIILjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;J)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/youtube/core/utils/f;->a([BIILjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;IJ)V

    .line 123
    return-void
.end method

.method public static b([BIILjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;J)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/youtube/core/utils/f;->a([BIILjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;IJ)V

    .line 130
    return-void
.end method
