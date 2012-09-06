.class public final Lcom/google/common/base/FP;
.super Ljava/lang/Object;
.source "FP.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 38
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 39
    .local v0, tmp:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/common/base/FP;->fingerprint([BII)J

    move-result-wide v1

    return-wide v1
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
    .line 26
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lcom/google/common/base/FP;->hash32([BIII)I

    move-result v0

    .line 27
    .local v0, hi:I
    const v2, 0x18eb8

    invoke-static {p0, p1, p2, v2}, Lcom/google/common/base/FP;->hash32([BIII)I

    move-result v1

    .line 28
    .local v1, lo:I
    invoke-static {v0, v1}, Lcom/google/common/base/Hash;->combineFingerprints(II)J

    move-result-wide v2

    return-wide v2
.end method

.method static hash32([BIII)I
    .registers 9
    .parameter "value"
    .parameter "offset"
    .parameter "length"
    .parameter "seed"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 54
    const v0, -0x61c88647

    .line 55
    .local v0, a:I
    const v1, -0x61c88647

    .line 56
    .local v1, b:I
    move v2, p3

    .line 59
    .local v2, c:I
    move v3, p2

    .local v3, keylen:I
    :goto_8
    const/16 v4, 0xc

    if-lt v3, v4, :cond_51

    .line 60
    invoke-static {p0, p1}, Lcom/google/common/base/FP;->word32At([BI)I

    move-result v4

    add-int/2addr v0, v4

    .line 61
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/google/common/base/FP;->word32At([BI)I

    move-result v4

    add-int/2addr v1, v4

    .line 62
    add-int/lit8 v4, p1, 0x8

    invoke-static {p0, v4}, Lcom/google/common/base/FP;->word32At([BI)I

    move-result v4

    add-int/2addr v2, v4

    .line 65
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    ushr-int/lit8 v4, v2, 0xd

    xor-int/2addr v0, v4

    .line 66
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v4, v0, 0x8

    xor-int/2addr v1, v4

    .line 67
    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    ushr-int/lit8 v4, v1, 0xd

    xor-int/2addr v2, v4

    .line 68
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    ushr-int/lit8 v4, v2, 0xc

    xor-int/2addr v0, v4

    .line 69
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v4, v0, 0x10

    xor-int/2addr v1, v4

    .line 70
    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    ushr-int/lit8 v4, v1, 0x5

    xor-int/2addr v2, v4

    .line 71
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    ushr-int/lit8 v4, v2, 0x3

    xor-int/2addr v0, v4

    .line 72
    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v4, v0, 0xa

    xor-int/2addr v1, v4

    .line 73
    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    ushr-int/lit8 v4, v1, 0xf

    xor-int/2addr v2, v4

    .line 59
    add-int/lit8 v3, v3, -0xc

    add-int/lit8 p1, p1, 0xc

    goto :goto_8

    .line 76
    :cond_51
    add-int/2addr v2, p2

    .line 77
    packed-switch v3, :pswitch_data_ba

    .line 107
    :goto_55
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Hash;->mix32(III)I

    move-result v4

    return v4

    .line 79
    :pswitch_5a
    add-int/lit8 v4, p1, 0xa

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v2, v4

    .line 81
    :pswitch_61
    add-int/lit8 v4, p1, 0x9

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    .line 83
    :pswitch_6a
    add-int/lit8 v4, p1, 0x8

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v2, v4

    .line 86
    :pswitch_73
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/google/common/base/FP;->word32At([BI)I

    move-result v4

    add-int/2addr v1, v4

    .line 87
    invoke-static {p0, p1}, Lcom/google/common/base/FP;->word32At([BI)I

    move-result v4

    add-int/2addr v0, v4

    .line 88
    goto :goto_55

    .line 90
    :pswitch_80
    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v1, v4

    .line 92
    :pswitch_89
    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v1, v4

    .line 94
    :pswitch_92
    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    .line 96
    :pswitch_99
    invoke-static {p0, p1}, Lcom/google/common/base/FP;->word32At([BI)I

    move-result v4

    add-int/2addr v0, v4

    .line 97
    goto :goto_55

    .line 99
    :pswitch_9f
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v0, v4

    .line 101
    :pswitch_a8
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    .line 103
    :pswitch_b1
    add-int/lit8 v4, p1, 0x0

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    goto :goto_55

    .line 77
    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_a8
        :pswitch_9f
        :pswitch_99
        :pswitch_92
        :pswitch_89
        :pswitch_80
        :pswitch_73
        :pswitch_6a
        :pswitch_61
        :pswitch_5a
    .end packed-switch
.end method

.method private static word32At([BI)I
    .registers 4
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 46
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
