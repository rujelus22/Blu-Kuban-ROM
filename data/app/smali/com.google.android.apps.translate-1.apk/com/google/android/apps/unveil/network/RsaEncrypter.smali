.class public Lcom/google/android/apps/unveil/network/RsaEncrypter;
.super Ljava/lang/Object;
.source "RsaEncrypter.java"


# static fields
.field private static final CRYPT_ALGORITHM:Ljava/lang/String; = "RSA/ECB/OAEPWITHSHA1ANDMGF1PADDING"

.field public static final DEFAULT_PRELOAD_DELAY_SECONDS:I = 0x5

.field private static final DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-1"

.field private static final KEY_ALG:Ljava/lang/String; = "RSA"

.field private static final KEY_HASH_LENGTH:I = 0x4

.field private static final VERSION:B

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final hashValue:[B

.field private final publicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/network/RsaEncrypter;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 10
    .parameter "derEncodedPublicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 134
    .local v2, spec:Ljava/security/spec/X509EncodedKeySpec;
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 135
    .local v1, kf:Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    iput-object v3, p0, Lcom/google/android/apps/unveil/network/RsaEncrypter;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 136
    new-array v3, v7, [B

    iput-object v3, p0, Lcom/google/android/apps/unveil/network/RsaEncrypter;->hashValue:[B

    .line 137
    const/4 v3, 0x2

    new-array v3, v3, [[B

    iget-object v4, p0, Lcom/google/android/apps/unveil/network/RsaEncrypter;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v4}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/apps/unveil/network/RsaEncrypter;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/google/android/apps/unveil/network/RsaEncrypter;->hashValues([[B)[B

    move-result-object v0

    .line 139
    .local v0, keyHash:[B
    iget-object v3, p0, Lcom/google/android/apps/unveil/network/RsaEncrypter;->hashValue:[B

    invoke-static {v0, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/apps/unveil/network/RsaEncrypter;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method private static fromInt(I)[B
    .registers 4
    .parameter "input"

    .prologue
    .line 123
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 124
    .local v0, output:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 128
    return-object v0
.end method

.method private static varargs hashValues([[B)[B
    .registers 8
    .parameter "inputs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 97
    .local v1, digest:Ljava/security/MessageDigest;
    move-object v0, p0

    .local v0, arr$:[[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v4, :cond_1f

    aget-object v3, v0, v2

    .line 98
    .local v3, input:[B
    invoke-static {v3}, Lcom/google/android/apps/unveil/network/RsaEncrypter;->stripLeadingZeros([B)[B

    move-result-object v5

    .line 99
    .local v5, stripped:[B
    array-length v6, v5

    invoke-static {v6}, Lcom/google/android/apps/unveil/network/RsaEncrypter;->fromInt(I)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 102
    .end local v3           #input:[B
    .end local v5           #stripped:[B
    :cond_1f
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    return-object v6
.end method

.method public static prefetchEncryptor(I)V
    .registers 6
    .parameter "delaySeconds"

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/apps/unveil/network/RsaEncrypter$1;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/network/RsaEncrypter$1;-><init>()V

    .line 87
    .local v0, encrypterLoader:Ljava/lang/Runnable;
    sget-object v1, Lcom/google/android/apps/unveil/network/RsaEncrypter;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Scheduling preloading of RSAEncrypter"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    int-to-long v2, p0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 92
    return-void
.end method

.method private static stripLeadingZeros([B)[B
    .registers 5
    .parameter "input"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 109
    .local v1, zeros:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_b

    aget-byte v2, p0, v1

    if-nez v2, :cond_b

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_b
    if-nez v1, :cond_e

    .line 118
    .end local p0
    :goto_d
    return-object p0

    .line 116
    .restart local p0
    :cond_e
    array-length v2, p0

    sub-int/2addr v2, v1

    new-array v0, v2, [B

    .line 117
    .local v0, output:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 118
    goto :goto_d
.end method


# virtual methods
.method public encrypt([B)[B
    .registers 10
    .parameter "plaintext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 143
    const-string v5, "RSA/ECB/OAEPWITHSHA1ANDMGF1PADDING"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 144
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/apps/unveil/network/RsaEncrypter;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 145
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 146
    .local v1, ciphertext:[B
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x4

    new-array v4, v5, [B

    .line 147
    .local v4, output:[B
    const/4 v2, 0x0

    .line 148
    .local v2, offset:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .local v3, offset:I
    aput-byte v7, v4, v2

    .line 149
    iget-object v5, p0, Lcom/google/android/apps/unveil/network/RsaEncrypter;->hashValue:[B

    const/4 v6, 0x4

    invoke-static {v5, v7, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    add-int/lit8 v2, v3, 0x4

    .line 151
    .end local v3           #offset:I
    .restart local v2       #offset:I
    array-length v5, v1

    invoke-static {v1, v7, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    return-object v4
.end method
