.class public Lcom/swype/android/connect/util/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static final publicKeyExponent:Ljava/lang/String; = "10001"

.field private static final publicKeyModulus:Ljava/lang/String; = "b62a557144ca38d42e69cb430a08d629066fc687713ec7c11c2825369a48b97756d7eb958d7b4eef9786a2467bccfa4dae228709b12efcfadaf8fea6dd149df77db523fd41758a0ca7de1d6765936960b6bcaaaac8029d9214983a19298318dfe4289f1dc8978ee49a158ec3fdf44fd44617444576d288c0c9289a7bcec6f6c5"

.field private static final secretKey:Ljava/lang/String; = "75DE491A38FD348E06C1B0313A97CB00"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decrypt([B)[B
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x80

    .line 239
    invoke-static {p0}, Lcom/swype/android/connect/util/EncryptUtils;->decryptAESKey([B)[B

    move-result-object v0

    .line 240
    if-eqz v0, :cond_2e

    .line 241
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/swype/android/connect/util/EncryptUtils;->strToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 242
    if-eqz v0, :cond_2e

    .line 243
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 245
    :try_start_1a
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 246
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 247
    const/16 v1, 0x80

    array-length v2, p0

    sub-int/2addr v2, v3

    invoke-virtual {v0, p0, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_2d

    move-result-object v0

    .line 254
    :goto_2c
    return-object v0

    :catch_2d
    move-exception v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private static decryptAESKey([B)[B
    .registers 5
    .parameter

    .prologue
    const/16 v3, 0x10

    .line 257
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "b62a557144ca38d42e69cb430a08d629066fc687713ec7c11c2825369a48b97756d7eb958d7b4eef9786a2467bccfa4dae228709b12efcfadaf8fea6dd149df77db523fd41758a0ca7de1d6765936960b6bcaaaac8029d9214983a19298318dfe4289f1dc8978ee49a158ec3fdf44fd44617444576d288c0c9289a7bcec6f6c5"

    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 258
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "10001"

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 259
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 261
    :try_start_15
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 263
    const-string v1, "RSA/ECB/Pkcs1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 264
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 265
    const/4 v0, 0x0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2f} :catch_31

    move-result-object v0

    .line 269
    :goto_30
    return-object v0

    :catch_31
    move-exception v0

    const/4 v0, 0x0

    goto :goto_30
.end method

.method public static final decryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 196
    if-eqz p0, :cond_b

    .line 197
    invoke-static {p0}, Lcom/swype/android/connect/compat/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/swype/android/connect/util/EncryptUtils;->secretDecrypt([B)Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final encryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 183
    if-eqz p0, :cond_b

    .line 184
    invoke-static {p0}, Lcom/swype/android/connect/util/EncryptUtils;->secretEncrypt(Ljava/lang/String;)[B

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/swype/android/connect/compat/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getBytesOfFile(Ljava/lang/String;)[B
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 29
    .line 31
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_3f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_1f

    .line 33
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 35
    if-lez v0, :cond_1a

    .line 36
    new-array v0, v0, [B

    .line 37
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_54

    .line 46
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_47

    .line 54
    :goto_19
    return-object v0

    .line 46
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_49

    :cond_1d
    :goto_1d
    move-object v0, v3

    .line 54
    goto :goto_19

    .line 43
    :catch_1f
    move-exception v0

    move-object v0, v3

    :goto_21
    :try_start_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open the file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_4f

    .line 46
    if-eqz v0, :cond_1d

    .line 48
    :try_start_39
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_1d

    .line 51
    :catch_3d
    move-exception v0

    goto :goto_1d

    .line 46
    :catchall_3f
    move-exception v0

    move-object v1, v3

    :goto_41
    if-eqz v1, :cond_46

    .line 48
    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_4b

    .line 51
    :cond_46
    :goto_46
    throw v0

    :catch_47
    move-exception v1

    goto :goto_19

    :catch_49
    move-exception v0

    goto :goto_1d

    :catch_4b
    move-exception v1

    goto :goto_46

    .line 46
    :catchall_4d
    move-exception v0

    goto :goto_41

    :catchall_4f
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_41

    .line 43
    :catch_54
    move-exception v0

    move-object v0, v1

    goto :goto_21
.end method

.method public static final md5(Ljava/io/File;)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 93
    .line 96
    if-eqz p0, :cond_21c

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_8} :catch_11

    move-result v0

    if-ne v0, v1, :cond_21c

    move v0, v1

    .line 104
    :goto_c
    if-nez v0, :cond_2e

    .line 105
    const-string v0, ""

    .line 169
    :goto_10
    return-object v0

    .line 99
    :catch_11
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error accessing file to create MD5 for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    move v0, v10

    .line 101
    goto :goto_c

    .line 112
    :cond_2e
    :try_start_2e
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 115
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_1dc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_41} :catch_213
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_41} :catch_12c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_41} :catch_158
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2e .. :try_end_41} :catch_184
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_41} :catch_1b0

    .line 116
    :try_start_41
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_1ec
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_46} :catch_218
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_46} :catch_208
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_200
    .catch Ljava/lang/OutOfMemoryError; {:try_start_41 .. :try_end_46} :catch_1fa
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_1f4

    .line 118
    const/16 v4, 0x2000

    :try_start_48
    new-array v4, v4, [B

    .line 120
    :goto_4a
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_7e

    .line 121
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_1ef
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_48 .. :try_end_54} :catch_55
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_54} :catch_20c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_54} :catch_204
    .catch Ljava/lang/OutOfMemoryError; {:try_start_48 .. :try_end_54} :catch_1fd
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_54} :catch_1f7

    goto :goto_4a

    .line 147
    :catch_55
    move-exception v0

    move-object v1, v3

    .line 148
    :goto_57
    :try_start_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting the md5!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_57 .. :try_end_71} :catchall_1f2

    .line 159
    if-eqz v1, :cond_76

    .line 160
    :try_start_73
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    :cond_76
    if-eqz v2, :cond_7b

    .line 163
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7b} :catch_210

    .line 169
    :cond_7b
    :goto_7b
    const-string v0, ""

    goto :goto_10

    .line 124
    :cond_7e
    :try_start_7e
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    array-length v5, v0

    move v6, v10

    :goto_8c
    if-ge v6, v5, :cond_ab

    aget-byte v7, v0, v6

    .line 127
    const-string v8, "0123456789abcdef"

    and-int/lit16 v9, v7, 0xf0

    shr-int/lit8 v9, v9, 0x4

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    const-string v8, "0123456789abcdef"

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_8c

    .line 133
    :cond_ab
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v5, v10

    .line 134
    :goto_b1
    array-length v6, v1

    if-ge v5, v6, :cond_dd

    .line 135
    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 136
    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x10

    if-ge v7, v8, :cond_d7

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 139
    :cond_d7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_b1

    .line 142
    :cond_dd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New: ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old: ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_120
    .catchall {:try_start_7e .. :try_end_120} :catchall_1ef
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7e .. :try_end_120} :catch_55
    .catch Ljava/io/FileNotFoundException; {:try_start_7e .. :try_end_120} :catch_20c
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_120} :catch_204
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7e .. :try_end_120} :catch_1fd
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_120} :catch_1f7

    move-result-object v0

    .line 159
    :try_start_121
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_127} :catch_129

    goto/16 :goto_10

    :catch_129
    move-exception v1

    goto/16 :goto_10

    .line 149
    :catch_12c
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 150
    :goto_12f
    :try_start_12f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find file."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_12f .. :try_end_149} :catchall_1f2

    .line 159
    if-eqz v1, :cond_14e

    .line 160
    :try_start_14b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    :cond_14e
    if-eqz v2, :cond_7b

    .line 163
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_153} :catch_155

    goto/16 :goto_7b

    .line 167
    :catch_155
    move-exception v0

    goto/16 :goto_7b

    .line 151
    :catch_158
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 152
    :goto_15b
    :try_start_15b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File reading failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_175
    .catchall {:try_start_15b .. :try_end_175} :catchall_1f2

    .line 159
    if-eqz v1, :cond_17a

    .line 160
    :try_start_177
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    :cond_17a
    if-eqz v2, :cond_7b

    .line 163
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_17f} :catch_181

    goto/16 :goto_7b

    .line 167
    :catch_181
    move-exception v0

    goto/16 :goto_7b

    .line 153
    :catch_184
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 154
    :goto_187
    :try_start_187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ran out of memory trying to generate MD5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_1a1
    .catchall {:try_start_187 .. :try_end_1a1} :catchall_1f2

    .line 159
    if-eqz v1, :cond_1a6

    .line 160
    :try_start_1a3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    :cond_1a6
    if-eqz v2, :cond_7b

    .line 163
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1ab} :catch_1ad

    goto/16 :goto_7b

    .line 167
    :catch_1ad
    move-exception v0

    goto/16 :goto_7b

    .line 155
    :catch_1b0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 156
    :goto_1b3
    :try_start_1b3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while attempting to generate MD5 from file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V
    :try_end_1cd
    .catchall {:try_start_1b3 .. :try_end_1cd} :catchall_1f2

    .line 159
    if-eqz v1, :cond_1d2

    .line 160
    :try_start_1cf
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    :cond_1d2
    if-eqz v2, :cond_7b

    .line 163
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d7} :catch_1d9

    goto/16 :goto_7b

    .line 167
    :catch_1d9
    move-exception v0

    goto/16 :goto_7b

    .line 158
    :catchall_1dc
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 159
    :goto_1df
    if-eqz v1, :cond_1e4

    .line 160
    :try_start_1e1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    :cond_1e4
    if-eqz v2, :cond_1e9

    .line 163
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_1e9} :catch_1ea

    .line 166
    :cond_1e9
    :goto_1e9
    throw v0

    :catch_1ea
    move-exception v1

    goto :goto_1e9

    .line 158
    :catchall_1ec
    move-exception v0

    move-object v1, v4

    goto :goto_1df

    :catchall_1ef
    move-exception v0

    move-object v1, v3

    goto :goto_1df

    :catchall_1f2
    move-exception v0

    goto :goto_1df

    .line 155
    :catch_1f4
    move-exception v0

    move-object v1, v4

    goto :goto_1b3

    :catch_1f7
    move-exception v0

    move-object v1, v3

    goto :goto_1b3

    .line 153
    :catch_1fa
    move-exception v0

    move-object v1, v4

    goto :goto_187

    :catch_1fd
    move-exception v0

    move-object v1, v3

    goto :goto_187

    .line 151
    :catch_200
    move-exception v0

    move-object v1, v4

    goto/16 :goto_15b

    :catch_204
    move-exception v0

    move-object v1, v3

    goto/16 :goto_15b

    .line 149
    :catch_208
    move-exception v0

    move-object v1, v4

    goto/16 :goto_12f

    :catch_20c
    move-exception v0

    move-object v1, v3

    goto/16 :goto_12f

    .line 167
    :catch_210
    move-exception v0

    goto/16 :goto_7b

    .line 147
    :catch_213
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto/16 :goto_57

    :catch_218
    move-exception v0

    move-object v1, v4

    goto/16 :goto_57

    :cond_21c
    move v0, v10

    goto/16 :goto_c
.end method

.method public static final md5([B)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 63
    if-nez p0, :cond_5

    .line 64
    const-string v0, ""

    .line 88
    :goto_4
    return-object v0

    .line 68
    :cond_5
    :try_start_5
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 70
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    const/4 v2, 0x0

    :goto_18
    array-length v3, v0

    if-ge v2, v3, :cond_44

    .line 75
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    if-ge v4, v5, :cond_3e

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    :cond_3e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 81
    :cond_44
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_47
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_47} :catch_49
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_47} :catch_52

    move-result-object v0

    goto :goto_4

    .line 84
    :catch_49
    move-exception v0

    const-string v0, "Error getting the md5!!"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 88
    :goto_4f
    const-string v0, ""

    goto :goto_4

    .line 85
    :catch_52
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of Memory attempting to generate an MD5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_4f
.end method

.method public static final secretDecrypt([B)Ljava/lang/String;
    .registers 5
    .parameter "raw"

    .prologue
    .line 221
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "75DE491A38FD348E06C1B0313A97CB00"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 223
    .local v1, key:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_d
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 224
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 225
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_21

    .line 229
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :goto_20
    return-object v2

    :catch_21
    move-exception v2

    const/4 v2, 0x0

    goto :goto_20
.end method

.method public static final secretEncrypt(Ljava/lang/String;)[B
    .registers 5
    .parameter "message"

    .prologue
    .line 209
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "75DE491A38FD348E06C1B0313A97CB00"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 211
    .local v1, key:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_d
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 212
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_20

    move-result-object v2

    .line 217
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :goto_1f
    return-object v2

    :catch_20
    move-exception v2

    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public static strToBytes(Ljava/lang/String;)[B
    .registers 5
    .parameter

    .prologue
    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 276
    const/4 v1, 0x0

    :goto_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 277
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 278
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 279
    and-int/lit16 v2, v2, 0xff

    .line 280
    div-int/lit8 v3, v1, 0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_22} :catch_25

    .line 276
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    .line 284
    :catch_25
    move-exception v0

    const/4 v0, 0x0

    :cond_27
    return-object v0
.end method
