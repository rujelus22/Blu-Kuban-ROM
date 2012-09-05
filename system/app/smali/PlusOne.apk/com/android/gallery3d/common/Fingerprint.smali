.class public Lcom/android/gallery3d/common/Fingerprint;
.super Ljava/lang/Object;
.source "Fingerprint.java"


# static fields
.field private static final DIGESTER:Ljava/security/MessageDigest;

.field private static final FINGERPRINT_BYTE_LENGTH:I

.field private static final STREAM_ID_CS_01_LENGTH:I


# instance fields
.field private final mMd5Digest:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    :try_start_0
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/common/Fingerprint;->DIGESTER:Ljava/security/MessageDigest;

    .line 56
    sget-object v1, Lcom/android/gallery3d/common/Fingerprint;->DIGESTER:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    sput v1, Lcom/android/gallery3d/common/Fingerprint;->FINGERPRINT_BYTE_LENGTH:I

    .line 57
    const-string v1, "cs_01_"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/android/gallery3d/common/Fingerprint;->FINGERPRINT_BYTE_LENGTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/android/gallery3d/common/Fingerprint;->STREAM_ID_CS_01_LENGTH:I
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 63
    return-void

    .line 59
    :catch_1e
    move-exception v0

    .line 61
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "bytes"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_a

    array-length v0, p1

    sget v1, Lcom/android/gallery3d/common/Fingerprint;->FINGERPRINT_BYTE_LENGTH:I

    if-eq v0, v1, :cond_10

    .line 73
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_10
    iput-object p1, p0, Lcom/android/gallery3d/common/Fingerprint;->mMd5Digest:[B

    .line 76
    return-void
.end method

.method private static appendHexFingerprint(Ljava/lang/StringBuilder;[B)V
    .registers 5
    .parameter "sb"
    .parameter "bytes"

    .prologue
    .line 185
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_1
    sget v2, Lcom/android/gallery3d/common/Fingerprint;->FINGERPRINT_BYTE_LENGTH:I

    if-ge v0, v2, :cond_1e

    .line 186
    aget-byte v1, p1, v0

    .line 187
    .local v1, value:I
    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    and-int/lit8 v2, v1, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    .end local v1           #value:I
    :cond_1e
    return-void
.end method

.method public static extractFingerprint(Ljava/util/List;)Lcom/android/gallery3d/common/Fingerprint;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/gallery3d/common/Fingerprint;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, streamIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    .local v1, streamId:Ljava/lang/String;
    const-string v2, "cs_01_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    invoke-static {v1}, Lcom/android/gallery3d/common/Fingerprint;->fromStreamId(Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v2

    .line 138
    .end local v1           #streamId:Ljava/lang/String;
    :goto_1c
    return-object v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public static fromInputStream(Ljava/io/InputStream;[J)Lcom/android/gallery3d/common/Fingerprint;
    .registers 10
    .parameter "stream"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, in:Ljava/security/DigestInputStream;
    const-wide/16 v1, 0x0

    .line 90
    .local v1, count:J
    :try_start_3
    new-instance v4, Ljava/security/DigestInputStream;

    sget-object v6, Lcom/android/gallery3d/common/Fingerprint;->DIGESTER:Ljava/security/MessageDigest;

    invoke-direct {v4, p0, v6}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_32

    .line 91
    .end local v3           #in:Ljava/security/DigestInputStream;
    .local v4, in:Ljava/security/DigestInputStream;
    const/16 v6, 0x2000

    :try_start_c
    new-array v0, v6, [B

    .line 94
    .local v0, bytes:[B
    :goto_e
    invoke-virtual {v4, v0}, Ljava/security/DigestInputStream;->read([B)I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_39

    move-result v5

    .line 95
    .local v5, n:I
    if-gez v5, :cond_2f

    .line 99
    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/security/DigestInputStream;->close()V

    .line 101
    :cond_19
    if-eqz p1, :cond_21

    array-length v6, p1

    if-lez v6, :cond_21

    const/4 v6, 0x0

    aput-wide v1, p1, v6

    .line 102
    :cond_21
    new-instance v6, Lcom/android/gallery3d/common/Fingerprint;

    invoke-virtual {v4}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    return-object v6

    .line 96
    :cond_2f
    int-to-long v6, v5

    add-long/2addr v1, v6

    .line 97
    goto :goto_e

    .line 99
    .end local v0           #bytes:[B
    .end local v4           #in:Ljava/security/DigestInputStream;
    .end local v5           #n:I
    .restart local v3       #in:Ljava/security/DigestInputStream;
    :catchall_32
    move-exception v6

    :goto_33
    if-eqz v3, :cond_38

    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    :cond_38
    throw v6

    .end local v3           #in:Ljava/security/DigestInputStream;
    .restart local v4       #in:Ljava/security/DigestInputStream;
    :catchall_39
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/security/DigestInputStream;
    .restart local v3       #in:Ljava/security/DigestInputStream;
    goto :goto_33
.end method

.method public static fromStreamId(Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;
    .registers 9
    .parameter "streamId"

    .prologue
    .line 109
    if-eqz p0, :cond_12

    const-string v5, "cs_01_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/android/gallery3d/common/Fingerprint;->STREAM_ID_CS_01_LENGTH:I

    if-eq v5, v6, :cond_2b

    .line 112
    :cond_12
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad streamId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_2b
    sget v5, Lcom/android/gallery3d/common/Fingerprint;->FINGERPRINT_BYTE_LENGTH:I

    new-array v2, v5, [B

    .line 117
    .local v2, bytes:[B
    const/4 v0, 0x0

    .line 118
    .local v0, byteIdx:I
    const-string v5, "cs_01_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, idx:I
    :goto_36
    sget v5, Lcom/android/gallery3d/common/Fingerprint;->STREAM_ID_CS_01_LENGTH:I

    if-ge v3, v5, :cond_53

    .line 120
    invoke-static {p0, v3}, Lcom/android/gallery3d/common/Fingerprint;->toDigit(Ljava/lang/String;I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v3, 0x1

    invoke-static {p0, v6}, Lcom/android/gallery3d/common/Fingerprint;->toDigit(Ljava/lang/String;I)I

    move-result v6

    or-int v4, v5, v6

    .line 121
    .local v4, value:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #byteIdx:I
    .local v1, byteIdx:I
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 119
    add-int/lit8 v3, v3, 0x2

    move v0, v1

    .end local v1           #byteIdx:I
    .restart local v0       #byteIdx:I
    goto :goto_36

    .line 123
    .end local v4           #value:I
    :cond_53
    new-instance v5, Lcom/android/gallery3d/common/Fingerprint;

    invoke-direct {v5, v2}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    return-object v5
.end method

.method private static toDigit(Ljava/lang/String;I)I
    .registers 6
    .parameter "streamId"
    .parameter "index"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 178
    .local v0, digit:I
    if-gez v0, :cond_25

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal hex digit in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_25
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "obj"

    .prologue
    .line 159
    if-ne p0, p1, :cond_4

    const/4 v1, 0x1

    .line 162
    :goto_3
    return v1

    .line 160
    :cond_4
    instance-of v1, p1, Lcom/android/gallery3d/common/Fingerprint;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    move-object v0, p1

    .line 161
    check-cast v0, Lcom/android/gallery3d/common/Fingerprint;

    .line 162
    .local v0, other:Lcom/android/gallery3d/common/Fingerprint;
    iget-object v1, p0, Lcom/android/gallery3d/common/Fingerprint;->mMd5Digest:[B

    iget-object v2, v0, Lcom/android/gallery3d/common/Fingerprint;->mMd5Digest:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_3
.end method

.method public equals([B)Z
    .registers 3
    .parameter "md5Digest"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/common/Fingerprint;->mMd5Digest:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/common/Fingerprint;->mMd5Digest:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/common/Fingerprint;->mMd5Digest:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toStreamId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cs_01_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, streamId:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/gallery3d/common/Fingerprint;->mMd5Digest:[B

    invoke-static {v0, v1}, Lcom/android/gallery3d/common/Fingerprint;->appendHexFingerprint(Ljava/lang/StringBuilder;[B)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
