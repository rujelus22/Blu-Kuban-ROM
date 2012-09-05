.class Lorg/apache/commons/compress/archivers/cpio/CpioUtil;
.super Ljava/lang/Object;
.source "CpioUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArray2long([BZ)J
    .registers 10
    .parameter "number"
    .parameter "swapHalfWord"

    .prologue
    const/4 v7, 0x0

    .line 39
    array-length v6, p0

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_c

    .line 40
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 43
    :cond_c
    const-wide/16 v2, 0x0

    .line 44
    .local v2, ret:J
    const/4 v0, 0x0

    .line 45
    .local v0, pos:I
    array-length v6, p0

    new-array v5, v6, [B

    .line 46
    .local v5, tmp_number:[B
    array-length v6, p0

    invoke-static {p0, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    if-nez p1, :cond_2a

    .line 49
    const/4 v4, 0x0

    .line 50
    .local v4, tmp:B
    const/4 v0, 0x0

    :goto_1a
    array-length v6, v5

    if-ge v0, v6, :cond_2a

    .line 51
    aget-byte v4, v5, v0

    .line 52
    add-int/lit8 v1, v0, 0x1

    .end local v0           #pos:I
    .local v1, pos:I
    aget-byte v6, v5, v1

    aput-byte v6, v5, v0

    .line 53
    aput-byte v4, v5, v1

    .line 50
    add-int/lit8 v0, v1, 0x1

    .end local v1           #pos:I
    .restart local v0       #pos:I
    goto :goto_1a

    .line 57
    .end local v4           #tmp:B
    :cond_2a
    aget-byte v6, v5, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v2, v6

    .line 58
    const/4 v0, 0x1

    :goto_30
    array-length v6, v5

    if-ge v0, v6, :cond_3f

    .line 59
    const/16 v6, 0x8

    shl-long/2addr v2, v6

    .line 60
    aget-byte v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v2, v6

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 62
    :cond_3f
    return-wide v2
.end method

.method static long2byteArray(JIZ)[B
    .registers 12
    .parameter "number"
    .parameter "length"
    .parameter "swapHalfWord"

    .prologue
    .line 81
    new-array v2, p2, [B

    .line 82
    .local v2, ret:[B
    const/4 v0, 0x0

    .line 83
    .local v0, pos:I
    const-wide/16 v4, 0x0

    .line 85
    .local v4, tmp_number:J
    rem-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_c

    const/4 v6, 0x2

    if-ge p2, v6, :cond_12

    .line 86
    :cond_c
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 89
    :cond_12
    move-wide v4, p0

    .line 90
    add-int/lit8 v0, p2, -0x1

    :goto_15
    if-ltz v0, :cond_24

    .line 91
    const-wide/16 v6, 0xff

    and-long/2addr v6, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    .line 92
    const/16 v6, 0x8

    shr-long/2addr v4, v6

    .line 90
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 95
    :cond_24
    if-nez p3, :cond_3a

    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, tmp:B
    const/4 v0, 0x0

    move v1, v0

    .end local v0           #pos:I
    .local v1, pos:I
    :goto_29
    if-ge v1, p2, :cond_39

    .line 98
    aget-byte v3, v2, v1

    .line 99
    add-int/lit8 v0, v1, 0x1

    .end local v1           #pos:I
    .restart local v0       #pos:I
    aget-byte v6, v2, v0

    aput-byte v6, v2, v1

    .line 100
    aput-byte v3, v2, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .end local v0           #pos:I
    .restart local v1       #pos:I
    goto :goto_29

    :cond_39
    move v0, v1

    .line 104
    .end local v1           #pos:I
    .end local v3           #tmp:B
    .restart local v0       #pos:I
    :cond_3a
    return-object v2
.end method
