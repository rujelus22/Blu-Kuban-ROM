.class public Lcom/google/android/apps/books/util/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;,
        Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;,
        Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
    }
.end annotation


# static fields
.field public static final SEPARATOR:[B

.field public static final UPGRADE_SEPARATOR:[B

.field private static sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

.field private static sRANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, ":"

    invoke-static {v0}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    .line 50
    const-string v0, ","

    invoke-static {v0}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->UPGRADE_SEPARATOR:[B

    .line 55
    new-instance v0, Lcom/google/android/apps/books/util/PlatformK_rStorage;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/PlatformK_rStorage;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    .line 59
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->sRANDOM:Ljava/util/Random;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method

.method private static D_r([B)[B
    .registers 9
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 173
    sget-object v5, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v5}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_r()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 174
    .local v0, K_r:Ljavax/crypto/SecretKey;
    sget-object v5, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v5}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_rVersion()I

    move-result v1

    .line 178
    .local v1, K_rVersion:I
    sget-object v5, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    invoke-static {p0, v6, v5}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v3

    .line 179
    .local v3, offset:I
    invoke-static {p0, v6, v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readIntString([B)I

    move-result v4

    .line 180
    .local v4, version:I
    sget-object v5, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    array-length v5, v5

    add-int/2addr v5, v3

    invoke-static {p0, v5}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object p0

    .line 182
    if-eq v4, v1, :cond_50

    .line 183
    new-instance v5, Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected K_r \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' (expecting \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'); recoverable by refreshing with server."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    :cond_50
    const/16 v5, 0xb

    invoke-static {p0, v5}, Lcom/google/android/apps/books/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 189
    invoke-static {p0, v6, v7}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v2

    .line 190
    .local v2, iv:[B
    invoke-static {p0, v7}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object p0

    .line 193
    invoke-static {v0, v2, p0}, Lcom/google/android/apps/books/util/EncryptionUtils;->decrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    return-object v5
.end method

.method public static D_s(Ljava/io/InputStream;[BLjava/lang/String;)Ljava/io/InputStream;
    .registers 14
    .parameter "input"
    .parameter "encryptedK_sClause"
    .parameter "expectedK_sVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p1}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_sVersionAndK_s([B)Landroid/util/Pair;

    move-result-object v2

    .line 229
    .local v2, K_sVersion_and_K_s:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 230
    .local v1, K_sVersion:Ljava/lang/String;
    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/apps/books/util/Hex;->decodeHex(Ljava/lang/String;)[B

    move-result-object v0

    .line 232
    .local v0, K_s:[B
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected session key \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' (expecting \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 236
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v0, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 239
    .local v7, sessionKey:Ljavax/crypto/SecretKey;
    const/16 v8, 0x10

    new-array v4, v8, [B

    .line 240
    .local v4, iv:[B
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    .line 243
    const/4 v8, 0x4

    new-array v6, v8, [B

    .line 244
    .local v6, lengthBuffer:[B
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->read([B)I

    .line 245
    invoke-static {v6}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readIntLittle([B)I

    move-result v5

    .line 247
    .local v5, length:I
    const-string v8, "AES/CBC/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 248
    .local v3, cipher:Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v8, v7, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 250
    new-instance v8, Ljavax/crypto/CipherInputStream;

    invoke-direct {v8, p0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v8
.end method

.method public static E_r([B)[B
    .registers 9
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v3}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_r()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 148
    .local v0, K_r:Ljavax/crypto/SecretKey;
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v3}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_rVersion()I

    move-result v1

    .line 149
    .local v1, K_rVersion:I
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->generateRandomIv()[B

    move-result-object v2

    .line 152
    .local v2, iv:[B
    invoke-static {v0, v2, p0}, Lcom/google/android/apps/books/util/EncryptionUtils;->encrypt(Ljavax/crypto/SecretKey;[B[B)[B

    move-result-object p0

    .line 153
    new-array v3, v7, [[B

    aput-object v2, v3, v5

    aput-object p0, v3, v6

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object p0

    .line 154
    const/16 v3, 0xb

    invoke-static {p0, v3}, Lcom/google/android/apps/books/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 155
    const/4 v3, 0x3

    new-array v3, v3, [[B

    invoke-static {v1}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeIntString(I)[B

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    aput-object v4, v3, v6

    aput-object p0, v3, v7

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object v3

    return-object v3
.end method

.method public static createSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "key"
    .parameter "value"

    .prologue
    .line 327
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "HmacSHA1"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 330
    .local v4, signingKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_b
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 331
    .local v1, mac:Ljavax/crypto/Mac;
    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_14} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_14} :catch_33
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_14} :catch_3a

    .line 339
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 340
    .local v2, rawHmac:[B
    new-instance v5, Ljava/lang/String;

    const/16 v6, 0x8

    invoke-static {v2, v6}, Lcom/google/android/apps/books/util/Base64;->encode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, signature:Ljava/lang/String;
    return-object v3

    .line 332
    .end local v1           #mac:Ljavax/crypto/Mac;
    .end local v2           #rawHmac:[B
    .end local v3           #signature:Ljava/lang/String;
    :catch_2c
    move-exception v0

    .line 333
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 334
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_33
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 336
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_3a
    move-exception v0

    .line 337
    .local v0, e:Ljava/security/InvalidKeyException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static decrypt(Ljavax/crypto/SecretKey;[B[B)[B
    .registers 9
    .parameter "key"
    .parameter "iv"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 125
    invoke-static {p2, v5, v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readIntLittle([B)I

    move-result v2

    .line 126
    .local v2, length:I
    invoke-static {p2, v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object p2

    .line 128
    const-string v3, "AES/CBC/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 129
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 130
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 134
    .local v1, decrypted:[B
    array-length v3, v1

    if-gt v2, v3, :cond_2a

    array-length v3, v1

    sub-int/2addr v3, v2

    const/16 v4, 0x10

    if-le v3, v4, :cond_4e

    .line 135
    :cond_2a
    new-instance v3, Ljava/security/GeneralSecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid expected mesg length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " decrypted length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_4e
    invoke-static {v1, v5, v2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v3

    return-object v3
.end method

.method private static encrypt(Ljavax/crypto/SecretKey;[B[B)[B
    .registers 9
    .parameter "key"
    .parameter "iv"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 110
    const-string v3, "AES/CBC/ZeroBytePadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 111
    .local v0, cipher:Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v5, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 112
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 115
    .local v1, encrypted:[B
    array-length v3, p2

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeIntLittle(I)[B

    move-result-object v2

    .line 116
    .local v2, lengthRaw:[B
    const/4 v3, 0x2

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object v3

    return-object v3
.end method

.method public static extractK_sMetadata([B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    .registers 6
    .parameter "encryptedK_sClause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 271
    new-instance v1, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;

    invoke-direct {v1}, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;-><init>()V

    .line 274
    .local v1, meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    invoke-static {p0}, Lcom/google/android/apps/books/util/EncryptionUtils;->D_r([B)[B

    move-result-object v0

    .line 278
    .local v0, K_sClause:[B
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    invoke-static {v0, v4, v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v2

    .line 279
    .local v2, offset:I
    invoke-static {v0, v4, v2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->nonce:[B

    .line 280
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    array-length v3, v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object v0

    .line 283
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    invoke-static {v0, v4, v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v2

    .line 284
    invoke-static {v0, v4, v2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_sVersion:Ljava/lang/String;

    .line 285
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v3}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_rVersion()I

    move-result v3

    iput v3, v1, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_rVersion:I

    .line 287
    return-object v1
.end method

.method public static extractSessionKeyInHexFormat([B)Ljava/lang/String;
    .registers 3
    .parameter "encryptedK_sClause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {p0}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_sVersionAndK_s([B)Landroid/util/Pair;

    move-result-object v0

    .line 262
    .local v0, K_sVersion_and_K_s:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static generateAppInfo(Landroid/content/Context;)[B
    .registers 7
    .parameter "context"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    .line 83
    .local v1, config:Lcom/google/android/apps/books/util/Config;
    invoke-virtual {v1}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, source:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 86
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "android_id"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, androidId:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeString(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4
.end method

.method public static generateNonce()J
    .registers 2

    .prologue
    .line 92
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getSecureRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static generateNonceString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getSecureRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateRandomIv()[B
    .registers 2

    .prologue
    .line 100
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 101
    .local v0, iv:[B
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getSecureRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 102
    return-object v0
.end method

.method public static getK_rVersion()I
    .registers 1

    .prologue
    .line 291
    sget-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    invoke-interface {v0}, Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;->getK_rVersion()I

    move-result v0

    return v0
.end method

.method private static getK_sVersionAndK_s([B)Landroid/util/Pair;
    .registers 7
    .parameter "encryptedK_sClause"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-static {p0}, Lcom/google/android/apps/books/util/EncryptionUtils;->D_r([B)[B

    move-result-object v1

    .line 203
    .local v1, K_sClause:[B
    sget-object v4, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    invoke-static {v1, v5, v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v3

    .line 204
    .local v3, offset:I
    sget-object v4, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    array-length v4, v4

    add-int/2addr v4, v3

    invoke-static {v1, v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object v1

    .line 207
    sget-object v4, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    invoke-static {v1, v5, v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->bufferIndexOf([BI[B)I

    move-result v3

    .line 208
    invoke-static {v1, v5, v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, K_sVersion:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    array-length v4, v4

    add-int/2addr v4, v3

    invoke-static {v1, v4}, Lcom/google/android/apps/books/util/ByteArrayUtils;->subBuffer([BI)[B

    move-result-object v1

    .line 212
    invoke-static {v1}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, K_s:Ljava/lang/String;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private static getSecureRandom()Ljava/util/Random;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/apps/books/util/EncryptionUtils;->sRANDOM:Ljava/util/Random;

    return-object v0
.end method

.method public static setK_rStorage(Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;)V
    .registers 1
    .parameter "value"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    sput-object p0, Lcom/google/android/apps/books/util/EncryptionUtils;->sK_rStorage:Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;

    .line 65
    return-void
.end method

.method public static setRandom(Ljava/util/Random;)V
    .registers 1
    .parameter "random"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 69
    sput-object p0, Lcom/google/android/apps/books/util/EncryptionUtils;->sRANDOM:Ljava/util/Random;

    .line 70
    return-void
.end method
