.class public final Lcom/google/common/base/Hash;
.super Ljava/lang/Object;
.source "Hash.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation


# static fields
.field private static final CONSTANT32:I = -0x61c88647

.field static final CONSTANT64:J = -0x1f73e299748a907eL

.field private static final SEED32:I = 0x12b9b0a1

.field static final SEED64:J = 0x2b992ddfa23249d6L


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static combineFingerprints(II)J
    .registers 8
    .parameter "hi"
    .parameter "lo"

    .prologue
    .line 704
    if-nez p0, :cond_f

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 706
    :cond_7
    const v0, 0x130f9bef

    xor-int/2addr p0, v0

    .line 707
    const v0, -0x6b5f56d8

    xor-int/2addr p1, v0

    .line 709
    :cond_f
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static fingerprint(Ljava/lang/String;)J
    .registers 4
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 258
    .local v0, temp:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Hash;->fingerprint([BII)J

    move-result-wide v1

    return-wide v1
.end method

.method public static fingerprint([B)J
    .registers 3
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 680
    if-nez p0, :cond_9

    move v0, v1

    :goto_4
    invoke-static {p0, v1, v0}, Lcom/google/common/base/Hash;->fingerprint([BII)J

    move-result-wide v0

    return-wide v0

    :cond_9
    array-length v0, p0

    goto :goto_4
.end method

.method public static fingerprint([BII)J
    .registers 7
    .parameter "value"
    .parameter "offset"
    .parameter "length"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 698
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lcom/google/common/base/Hash;->hash32([BIII)I

    move-result v0

    .line 699
    .local v0, hi:I
    const v2, 0x18eb8

    invoke-static {p0, p1, p2, v2}, Lcom/google/common/base/Hash;->hash32([BIII)I

    move-result v1

    .line 700
    .local v1, lo:I
    invoke-static {v0, v1}, Lcom/google/common/base/Hash;->combineFingerprints(II)J

    move-result-wide v2

    return-wide v2
.end method

.method public static formatFprint96AsString([B)Ljava/lang/String;
    .registers 15
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide v12, 0xffffffffL

    .line 406
    array-length v7, p0

    const/16 v10, 0xc

    if-ne v7, v10, :cond_4a

    move v7, v8

    :goto_d
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 408
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    .line 409
    .local v6, ib:Ljava/nio/IntBuffer;
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->get()I

    move-result v7

    int-to-long v10, v7

    and-long v0, v10, v12

    .line 410
    .local v0, group0:J
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->get()I

    move-result v7

    int-to-long v10, v7

    and-long v2, v10, v12

    .line 411
    .local v2, group1:J
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->get()I

    move-result v7

    int-to-long v10, v7

    and-long v4, v10, v12

    .line 412
    .local v4, group2:J
    const-string v7, "%08X_%08X_%08X"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v10, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v0           #group0:J
    .end local v2           #group1:J
    .end local v4           #group2:J
    .end local v6           #ib:Ljava/nio/IntBuffer;
    :cond_4a
    move v7, v9

    .line 406
    goto :goto_d
.end method

.method public static fprint96(Ljava/lang/String;)[B
    .registers 2
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Hash;->fprint96([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static fprint96([B)[B
    .registers 6
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_5} :catch_15

    move-result-object v2

    .line 301
    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 302
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 303
    .local v1, hash:[B
    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3

    .line 298
    .end local v1           #hash:[B
    .end local v2           #md:Ljava/security/MessageDigest;
    :catch_15
    move-exception v0

    .line 299
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SHA-1 should be available in the JVM."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static fprint96AsKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v4, 0xc

    .line 339
    sget-object v3, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Hash;->fprint96([B)[B

    move-result-object v1

    .line 340
    .local v1, fp96:[B
    new-array v0, v4, [C

    .line 341
    .local v0, chars:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v4, :cond_1b

    .line 342
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 344
    :cond_1b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static fprint96AsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 323
    invoke-static {p0}, Lcom/google/common/base/Hash;->fprint96(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Hash;->formatFprint96AsString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fprint96KeyModShardFromKey(Ljava/lang/String;I)I
    .registers 13
    .parameter "key"
    .parameter "numShards"

    .prologue
    const/16 v10, 0x20

    const-wide v8, 0xffffffffL

    .line 375
    if-lez p1, :cond_59

    const/4 v6, 0x1

    :goto_a
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 377
    invoke-static {p0}, Lcom/google/common/base/Hash;->keyToFprint96(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 378
    .local v3, ib:Ljava/nio/IntBuffer;
    int-to-long v6, p1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 384
    .local v4, mod:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 385
    .local v0, group0:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 386
    .local v1, group1:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 387
    .local v2, group2:Ljava/math/BigInteger;
    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 388
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 389
    .local v5, remainder:Ljava/math/BigInteger;
    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    return v6

    .line 375
    .end local v0           #group0:Ljava/math/BigInteger;
    .end local v1           #group1:Ljava/math/BigInteger;
    .end local v2           #group2:Ljava/math/BigInteger;
    .end local v3           #ib:Ljava/nio/IntBuffer;
    .end local v4           #mod:Ljava/math/BigInteger;
    .end local v5           #remainder:Ljava/math/BigInteger;
    :cond_59
    const/4 v6, 0x0

    goto :goto_a
.end method

.method public static hash32(I)I
    .registers 3
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    const v0, -0x61c88647

    const v1, 0x12b9b0a1

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Hash;->mix32(III)I

    move-result v0

    return v0
.end method

.method public static hash32(II)I
    .registers 3
    .parameter "value"
    .parameter "seed"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const v0, -0x61c88647

    invoke-static {p0, v0, p1}, Lcom/google/common/base/Hash;->mix32(III)I

    move-result v0

    return v0
.end method

.method public static hash32(J)I
    .registers 8
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    const-wide v2, -0x1f73e299748a907eL

    const-wide v4, 0x2b992ddfa23249d6L

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/base/Hash;->mix64(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static hash32(JJ)I
    .registers 10
    .parameter "value"
    .parameter "seed"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    const-wide v2, -0x1f73e299748a907eL

    move-wide v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/base/Hash;->mix64(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static hash32(Ljava/lang/String;)I
    .registers 2
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    const v0, 0x12b9b0a1

    invoke-static {p0, v0}, Lcom/google/common/base/Hash;->hash32(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hash32(Ljava/lang/String;I)I
    .registers 4
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "seed"
    .end parameter
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 171
    if-nez p0, :cond_9

    .line 172
    const/4 v0, 0x0

    invoke-static {v0, v1, v1, p1}, Lcom/google/common/base/Hash;->hash32([BIII)I

    move-result v0

    .line 174
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Hash;->hash32([BI)I

    move-result v0

    goto :goto_8
.end method

.method public static hash32(Ljava/lang/String;Ljava/nio/charset/Charset;)I
    .registers 3
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "charset"
    .end parameter
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    const v0, 0x12b9b0a1

    invoke-static {p0, p1, v0}, Lcom/google/common/base/Hash;->hash32(Ljava/lang/String;Ljava/nio/charset/Charset;I)I

    move-result v0

    return v0
.end method

.method public static hash32(Ljava/lang/String;Ljava/nio/charset/Charset;I)I
    .registers 5
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "charset"
    .end parameter
    .parameter "seed"
    .end parameter
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    if-nez p0, :cond_c

    .line 156
    const/4 v0, 0x0

    invoke-static {v0, v1, v1, p2}, Lcom/google/common/base/Hash;->hash32([BIII)I

    move-result v0

    .line 158
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/base/Hash;->hash32([BI)I

    move-result v0

    goto :goto_b
.end method

.method public static hash32([B)I
    .registers 3
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 424
    if-nez p0, :cond_9

    move v0, v1

    :goto_4
    invoke-static {p0, v1, v0}, Lcom/google/common/base/Hash;->hash32([BII)I

    move-result v0

    return v0

    :cond_9
    array-length v0, p0

    goto :goto_4
.end method

.method public static hash32([BI)I
    .registers 4
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "seed"
    .end parameter
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 437
    if-nez p0, :cond_9

    move v0, v1

    :goto_4
    invoke-static {p0, v1, v0, p1}, Lcom/google/common/base/Hash;->hash32([BIII)I

    move-result v0

    return v0

    :cond_9
    array-length v0, p0

    goto :goto_4
.end method

.method static hash32([BII)I
    .registers 4
    .parameter "value"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 449
    const v0, 0x12b9b0a1

    invoke-static {p0, p1, p2, v0}, Lcom/google/common/base/Hash;->hash32([BIII)I

    move-result v0

    return v0
.end method

.method private static hash32([BIII)I
    .registers 9
    .parameter "value"
    .parameter "offset"
    .parameter "length"
    .parameter "seed"

    .prologue
    .line 462
    const v0, -0x61c88647

    .line 463
    .local v0, a:I
    move v1, v0

    .line 464
    .local v1, b:I
    move v2, p3

    .line 467
    .local v2, c:I
    move v3, p2

    .local v3, keylen:I
    :goto_6
    const/16 v4, 0xc

    if-lt v3, v4, :cond_4f

    .line 468
    invoke-static {p0, p1}, Lcom/google/common/base/Hash;->word32At([BI)I

    move-result v4

    add-int/2addr v0, v4

    .line 469
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/google/common/base/Hash;->word32At([BI)I

    move-result v4

    add-int/2addr v1, v4

    .line 470
    add-int/lit8 v4, p1, 0x8

    invoke-static {p0, v4}, Lcom/google/common/base/Hash;->word32At([BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 473
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    ushr-int/lit8 v4, v2, 0xd

    xor-int/2addr v0, v4

    .line 474
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v4, v0, 0x8

    xor-int/2addr v1, v4

    .line 475
    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    ushr-int/lit8 v4, v1, 0xd

    xor-int/2addr v2, v4

    .line 476
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    ushr-int/lit8 v4, v2, 0xc

    xor-int/2addr v0, v4

    .line 477
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v4, v0, 0x10

    xor-int/2addr v1, v4

    .line 478
    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    ushr-int/lit8 v4, v1, 0x5

    xor-int/2addr v2, v4

    .line 479
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    ushr-int/lit8 v4, v2, 0x3

    xor-int/2addr v0, v4

    .line 480
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v4, v0, 0xa

    xor-int/2addr v1, v4

    .line 481
    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    ushr-int/lit8 v4, v1, 0xf

    xor-int/2addr v2, v4

    .line 467
    add-int/lit8 v3, v3, -0xc

    add-int/lit8 p1, p1, 0xc

    goto :goto_6

    .line 485
    :cond_4f
    add-int/2addr v2, p2

    .line 486
    packed-switch v3, :pswitch_data_b8

    .line 515
    :goto_53
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Hash;->mix32(III)I

    move-result v4

    return v4

    .line 488
    :pswitch_58
    add-int/lit8 v4, p1, 0xa

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v2, v4

    .line 490
    :pswitch_5f
    add-int/lit8 v4, p1, 0x9

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    .line 492
    :pswitch_68
    add-int/lit8 v4, p1, 0x8

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    .line 495
    :pswitch_71
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/google/common/base/Hash;->word32At([BI)I

    move-result v4

    add-int/2addr v1, v4

    .line 496
    invoke-static {p0, p1}, Lcom/google/common/base/Hash;->word32At([BI)I

    move-result v4

    add-int/2addr v0, v4

    .line 497
    goto :goto_53

    .line 499
    :pswitch_7e
    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v1, v4

    .line 501
    :pswitch_87
    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v1, v4

    .line 503
    :pswitch_90
    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    .line 505
    :pswitch_97
    invoke-static {p0, p1}, Lcom/google/common/base/Hash;->word32At([BI)I

    move-result v4

    add-int/2addr v0, v4

    .line 506
    goto :goto_53

    .line 508
    :pswitch_9d
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v0, v4

    .line 510
    :pswitch_a6
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    .line 512
    :pswitch_af
    add-int/lit8 v4, p1, 0x0

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    goto :goto_53

    .line 486
    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_af
        :pswitch_a6
        :pswitch_9d
        :pswitch_97
        :pswitch_90
        :pswitch_87
        :pswitch_7e
        :pswitch_71
        :pswitch_68
        :pswitch_5f
        :pswitch_58
    .end packed-switch
.end method

.method public static hash64(J)J
    .registers 8
    .parameter "value"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    const-wide v2, -0x1f73e299748a907eL

    const-wide v4, 0x2b992ddfa23249d6L

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/common/base/Hash;->mix64(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64(JJ)J
    .registers 10
    .parameter "value"
    .parameter "seed"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    const-wide v2, -0x1f73e299748a907eL

    move-wide v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/base/Hash;->mix64(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64(Ljava/lang/String;)J
    .registers 3
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    const-wide v0, 0x2b992ddfa23249d6L

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Hash;->hash64(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64(Ljava/lang/String;J)J
    .registers 5
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "seed"
    .end parameter
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 230
    if-nez p0, :cond_9

    .line 231
    const/4 v0, 0x0

    invoke-static {v0, v1, v1, p1, p2}, Lcom/google/common/base/Hash;->hash64([BIIJ)J

    move-result-wide v0

    .line 233
    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/common/base/Hash;->hash64([BJ)J

    move-result-wide v0

    goto :goto_8
.end method

.method public static hash64(Ljava/lang/String;Ljava/nio/charset/Charset;)J
    .registers 4
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "charset"
    .end parameter
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 187
    const-wide v0, 0x2b992ddfa23249d6L

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/base/Hash;->hash64(Ljava/lang/String;Ljava/nio/charset/Charset;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64(Ljava/lang/String;Ljava/nio/charset/Charset;J)J
    .registers 6
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "charset"
    .end parameter
    .parameter "seed"
    .end parameter
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    if-nez p0, :cond_c

    .line 215
    const/4 v0, 0x0

    invoke-static {v0, v1, v1, p2, p3}, Lcom/google/common/base/Hash;->hash64([BIIJ)J

    move-result-wide v0

    .line 217
    :goto_b
    return-wide v0

    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/google/common/base/Hash;->hash64([BJ)J

    move-result-wide v0

    goto :goto_b
.end method

.method public static hash64([B)J
    .registers 3
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-core-libraries-team"
        date = "2012-09-01"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 527
    if-nez p0, :cond_9

    move v0, v1

    :goto_4
    invoke-static {p0, v1, v0}, Lcom/google/common/base/Hash;->hash64([BII)J

    move-result-wide v0

    return-wide v0

    :cond_9
    array-length v0, p0

    goto :goto_4
.end method

.method static hash64([BII)J
    .registers 5
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "offset"
    .end parameter
    .parameter "length"
    .end parameter

    .prologue
    .line 538
    const-wide v0, 0x2b992ddfa23249d6L

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/base/Hash;->hash64([BIIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static hash64([BIIJ)J
    .registers 16
    .parameter "value"
    .parameter "offset"
    .parameter "length"
    .parameter "seed"

    .prologue
    .line 562
    const-wide v0, -0x1f73e299748a907eL

    .line 563
    .local v0, a:J
    move-wide v2, v0

    .line 564
    .local v2, b:J
    move-wide v4, p3

    .line 567
    .local v4, c:J
    move v6, p2

    .local v6, keylen:I
    :goto_8
    const/16 v7, 0x18

    if-lt v6, v7, :cond_77

    .line 568
    invoke-static {p0, p1}, Lcom/google/common/base/Hash;->word64At([BI)J

    move-result-wide v7

    add-long/2addr v0, v7

    .line 569
    add-int/lit8 v7, p1, 0x8

    invoke-static {p0, v7}, Lcom/google/common/base/Hash;->word64At([BI)J

    move-result-wide v7

    add-long/2addr v2, v7

    .line 570
    add-int/lit8 v7, p1, 0x10

    invoke-static {p0, v7}, Lcom/google/common/base/Hash;->word64At([BI)J

    move-result-wide v7

    add-long/2addr v4, v7

    .line 573
    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    const/16 v7, 0x2b

    ushr-long v7, v4, v7

    xor-long/2addr v0, v7

    .line 574
    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    const/16 v7, 0x9

    shl-long v7, v0, v7

    xor-long/2addr v2, v7

    .line 575
    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    const/16 v7, 0x8

    ushr-long v7, v2, v7

    xor-long/2addr v4, v7

    .line 576
    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    const/16 v7, 0x26

    ushr-long v7, v4, v7

    xor-long/2addr v0, v7

    .line 577
    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    const/16 v7, 0x17

    shl-long v7, v0, v7

    xor-long/2addr v2, v7

    .line 578
    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    const/4 v7, 0x5

    ushr-long v7, v2, v7

    xor-long/2addr v4, v7

    .line 579
    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    const/16 v7, 0x23

    ushr-long v7, v4, v7

    xor-long/2addr v0, v7

    .line 580
    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    const/16 v7, 0x31

    shl-long v7, v0, v7

    xor-long/2addr v2, v7

    .line 581
    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    const/16 v7, 0xb

    ushr-long v7, v2, v7

    xor-long/2addr v4, v7

    .line 582
    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    const/16 v7, 0xc

    ushr-long v7, v4, v7

    xor-long/2addr v0, v7

    .line 583
    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    const/16 v7, 0x12

    shl-long v7, v0, v7

    xor-long/2addr v2, v7

    .line 584
    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    const/16 v7, 0x16

    ushr-long v7, v2, v7

    xor-long/2addr v4, v7

    .line 567
    add-int/lit8 v6, v6, -0x18

    add-int/lit8 p1, p1, 0x18

    goto :goto_8

    .line 587
    :cond_77
    int-to-long v7, p2

    add-long/2addr v4, v7

    .line 588
    packed-switch v6, :pswitch_data_18a

    .line 641
    :goto_7c
    invoke-static/range {v0 .. v5}, Lcom/google/common/base/Hash;->mix64(JJJ)J

    move-result-wide v7

    return-wide v7

    .line 590
    :pswitch_81
    add-int/lit8 v7, p1, 0x16

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 592
    :pswitch_8a
    add-int/lit8 v7, p1, 0x15

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 594
    :pswitch_96
    add-int/lit8 v7, p1, 0x14

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 596
    :pswitch_a2
    add-int/lit8 v7, p1, 0x13

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 598
    :pswitch_ae
    add-int/lit8 v7, p1, 0x12

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 600
    :pswitch_ba
    add-int/lit8 v7, p1, 0x11

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 602
    :pswitch_c6
    add-int/lit8 v7, p1, 0x10

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 605
    :pswitch_d2
    add-int/lit8 v7, p1, 0x8

    invoke-static {p0, v7}, Lcom/google/common/base/Hash;->word64At([BI)J

    move-result-wide v7

    add-long/2addr v2, v7

    .line 606
    invoke-static {p0, p1}, Lcom/google/common/base/Hash;->word64At([BI)J

    move-result-wide v7

    add-long/2addr v0, v7

    .line 607
    goto :goto_7c

    .line 609
    :pswitch_df
    add-int/lit8 v7, p1, 0xe

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    add-long/2addr v2, v7

    .line 611
    :pswitch_eb
    add-int/lit8 v7, p1, 0xd

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    add-long/2addr v2, v7

    .line 613
    :pswitch_f7
    add-int/lit8 v7, p1, 0xc

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v2, v7

    .line 615
    :pswitch_103
    add-int/lit8 v7, p1, 0xb

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    add-long/2addr v2, v7

    .line 617
    :pswitch_10f
    add-int/lit8 v7, p1, 0xa

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    add-long/2addr v2, v7

    .line 619
    :pswitch_11b
    add-int/lit8 v7, p1, 0x9

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v2, v7

    .line 621
    :pswitch_127
    add-int/lit8 v7, p1, 0x8

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    add-long/2addr v2, v7

    .line 623
    :pswitch_130
    invoke-static {p0, p1}, Lcom/google/common/base/Hash;->word64At([BI)J

    move-result-wide v7

    add-long/2addr v0, v7

    .line 624
    goto/16 :goto_7c

    .line 626
    :pswitch_137
    add-int/lit8 v7, p1, 0x6

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 628
    :pswitch_143
    add-int/lit8 v7, p1, 0x5

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 630
    :pswitch_14f
    add-int/lit8 v7, p1, 0x4

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 632
    :pswitch_15b
    add-int/lit8 v7, p1, 0x3

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 634
    :pswitch_167
    add-int/lit8 v7, p1, 0x2

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 636
    :pswitch_173
    add-int/lit8 v7, p1, 0x1

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 638
    :pswitch_17f
    add-int/lit8 v7, p1, 0x0

    aget-byte v7, p0, v7

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    add-long/2addr v0, v7

    goto/16 :goto_7c

    .line 588
    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_17f
        :pswitch_173
        :pswitch_167
        :pswitch_15b
        :pswitch_14f
        :pswitch_143
        :pswitch_137
        :pswitch_130
        :pswitch_127
        :pswitch_11b
        :pswitch_10f
        :pswitch_103
        :pswitch_f7
        :pswitch_eb
        :pswitch_df
        :pswitch_d2
        :pswitch_c6
        :pswitch_ba
        :pswitch_ae
        :pswitch_a2
        :pswitch_96
        :pswitch_8a
        :pswitch_81
    .end packed-switch
.end method

.method static hash64([BJ)J
    .registers 5
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "seed"
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 549
    if-nez p0, :cond_9

    move v0, v1

    :goto_4
    invoke-static {p0, v1, v0, p1, p2}, Lcom/google/common/base/Hash;->hash64([BIIJ)J

    move-result-wide v0

    return-wide v0

    :cond_9
    array-length v0, p0

    goto :goto_4
.end method

.method static keyToFprint96(Ljava/lang/String;)[B
    .registers 5
    .parameter "key"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 357
    new-array v0, v3, [B

    .line 358
    .local v0, fprint96:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v3, :cond_13

    .line 359
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 361
    :cond_13
    return-object v0
.end method

.method static mix32(III)I
    .registers 4
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 716
    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    ushr-int/lit8 v0, p2, 0xd

    xor-int/2addr p0, v0

    .line 717
    sub-int/2addr p1, p2

    sub-int/2addr p1, p0

    shl-int/lit8 v0, p0, 0x8

    xor-int/2addr p1, v0

    .line 718
    sub-int/2addr p2, p0

    sub-int/2addr p2, p1

    ushr-int/lit8 v0, p1, 0xd

    xor-int/2addr p2, v0

    .line 719
    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    ushr-int/lit8 v0, p2, 0xc

    xor-int/2addr p0, v0

    .line 720
    sub-int/2addr p1, p2

    sub-int/2addr p1, p0

    shl-int/lit8 v0, p0, 0x10

    xor-int/2addr p1, v0

    .line 721
    sub-int/2addr p2, p0

    sub-int/2addr p2, p1

    ushr-int/lit8 v0, p1, 0x5

    xor-int/2addr p2, v0

    .line 722
    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    ushr-int/lit8 v0, p2, 0x3

    xor-int/2addr p0, v0

    .line 723
    sub-int/2addr p1, p2

    sub-int/2addr p1, p0

    shl-int/lit8 v0, p0, 0xa

    xor-int/2addr p1, v0

    .line 724
    sub-int/2addr p2, p0

    sub-int/2addr p2, p1

    ushr-int/lit8 v0, p1, 0xf

    xor-int/2addr p2, v0

    .line 725
    return p2
.end method

.method static mix64(JJJ)J
    .registers 8
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 732
    sub-long/2addr p0, p2

    sub-long/2addr p0, p4

    const/16 v0, 0x2b

    ushr-long v0, p4, v0

    xor-long/2addr p0, v0

    .line 733
    sub-long/2addr p2, p4

    sub-long/2addr p2, p0

    const/16 v0, 0x9

    shl-long v0, p0, v0

    xor-long/2addr p2, v0

    .line 734
    sub-long/2addr p4, p0

    sub-long/2addr p4, p2

    const/16 v0, 0x8

    ushr-long v0, p2, v0

    xor-long/2addr p4, v0

    .line 735
    sub-long/2addr p0, p2

    sub-long/2addr p0, p4

    const/16 v0, 0x26

    ushr-long v0, p4, v0

    xor-long/2addr p0, v0

    .line 736
    sub-long/2addr p2, p4

    sub-long/2addr p2, p0

    const/16 v0, 0x17

    shl-long v0, p0, v0

    xor-long/2addr p2, v0

    .line 737
    sub-long/2addr p4, p0

    sub-long/2addr p4, p2

    const/4 v0, 0x5

    ushr-long v0, p2, v0

    xor-long/2addr p4, v0

    .line 738
    sub-long/2addr p0, p2

    sub-long/2addr p0, p4

    const/16 v0, 0x23

    ushr-long v0, p4, v0

    xor-long/2addr p0, v0

    .line 739
    sub-long/2addr p2, p4

    sub-long/2addr p2, p0

    const/16 v0, 0x31

    shl-long v0, p0, v0

    xor-long/2addr p2, v0

    .line 740
    sub-long/2addr p4, p0

    sub-long/2addr p4, p2

    const/16 v0, 0xb

    ushr-long v0, p2, v0

    xor-long/2addr p4, v0

    .line 741
    sub-long/2addr p0, p2

    sub-long/2addr p0, p4

    const/16 v0, 0xc

    ushr-long v0, p4, v0

    xor-long/2addr p0, v0

    .line 742
    sub-long/2addr p2, p4

    sub-long/2addr p2, p0

    const/16 v0, 0x12

    shl-long v0, p0, v0

    xor-long/2addr p2, v0

    .line 743
    sub-long/2addr p4, p0

    sub-long/2addr p4, p2

    const/16 v0, 0x16

    ushr-long v0, p2, v0

    xor-long/2addr p4, v0

    .line 744
    return-wide p4
.end method

.method private static word32At([BI)I
    .registers 4
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 651
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method private static word64At([BI)J
    .registers 9
    .parameter "bytes"
    .parameter "offset"

    .prologue
    const-wide/16 v5, 0xff

    .line 658
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method
