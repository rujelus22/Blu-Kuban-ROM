.class public Lcom/sec/android/app/twlauncher/MultipleSize;
.super Ljava/lang/Object;
.source "MultipleSize.java"


# instance fields
.field private mBits:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "bits"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    .line 49
    return-void
.end method

.method static getIndexBit(II)J
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/MultipleSize;->isInvalidSize(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 218
    const-wide/16 v0, 0x0

    .line 222
    :goto_8
    return-wide v0

    .line 220
    :cond_9
    const/4 v2, 0x1

    add-int/lit8 v3, p0, -0x1

    shl-int/2addr v2, v3

    int-to-long v0, v2

    .line 221
    .local v0, bit:J
    add-int/lit8 v2, p1, -0x1

    mul-int/lit8 v2, v2, 0x8

    shl-long/2addr v0, v2

    .line 222
    goto :goto_8
.end method

.method static isInvalidSize(II)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    .line 203
    if-lt p0, v0, :cond_7

    if-ge v1, p0, :cond_8

    .line 209
    :cond_7
    :goto_7
    return v0

    .line 206
    :cond_8
    if-lt p1, v0, :cond_7

    if-lt v1, p1, :cond_7

    .line 209
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public countAvailableSizes()I
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, count:I
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    .line 94
    .local v0, bits:J
    :goto_5
    cmp-long v3, v5, v0

    if-eqz v3, :cond_15

    .line 95
    const-wide/16 v3, 0x1

    and-long/2addr v3, v0

    cmp-long v3, v5, v3

    if-eqz v3, :cond_12

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 98
    :cond_12
    const/4 v3, 0x1

    shr-long/2addr v0, v3

    goto :goto_5

    .line 100
    :cond_15
    return v2
.end method

.method public getBestFit(II)[I
    .registers 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 104
    const v5, 0xffff

    .line 105
    .local v5, minDiff:I
    const/4 v0, -0x1

    .local v0, bestX:I
    const/4 v1, -0x1

    .line 107
    .local v1, bestY:I
    const/4 v4, 0x1

    .local v4, iy:I
    :goto_6
    if-gt v4, p2, :cond_1e

    .line 108
    const/4 v3, 0x1

    .local v3, ix:I
    :goto_9
    if-gt v3, p1, :cond_2b

    .line 109
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 110
    sub-int v7, p1, v3

    sub-int v8, p2, v4

    add-int v2, v7, v8

    .line 111
    .local v2, diff:I
    if-ge v2, v5, :cond_1c

    .line 112
    move v0, v3

    .line 113
    move v1, v4

    .line 114
    move v5, v2

    .line 116
    :cond_1c
    if-nez v2, :cond_28

    .line 123
    .end local v2           #diff:I
    .end local v3           #ix:I
    :cond_1e
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 124
    .local v6, xy:[I
    const/4 v7, 0x0

    aput v0, v6, v7

    .line 125
    const/4 v7, 0x1

    aput v1, v6, v7

    .line 126
    return-object v6

    .line 108
    .end local v6           #xy:[I
    .restart local v3       #ix:I
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 107
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method

.method public getMaxX()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    .line 130
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 131
    const/4 v0, 0x1

    .line 144
    :cond_b
    return v0

    .line 133
    :cond_c
    const/4 v0, 0x1

    .line 134
    .local v0, maxX:I
    const/4 v2, 0x1

    .local v2, y:I
    :goto_e
    if-gt v2, v7, :cond_b

    .line 135
    add-int/lit8 v1, v0, 0x1

    .local v1, x:I
    :goto_12
    if-gt v1, v7, :cond_20

    .line 136
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 137
    move v0, v1

    .line 138
    if-eq v7, v0, :cond_b

    .line 135
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 134
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method

.method public getMaxY()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    .line 148
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 149
    const/4 v0, 0x1

    .line 162
    :cond_b
    return v0

    .line 151
    :cond_c
    const/4 v0, 0x1

    .line 152
    .local v0, maxY:I
    const/4 v1, 0x1

    .local v1, x:I
    :goto_e
    if-gt v1, v7, :cond_b

    .line 153
    add-int/lit8 v2, v0, 0x1

    .local v2, y:I
    :goto_12
    if-gt v2, v7, :cond_20

    .line 154
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 155
    move v0, v2

    .line 156
    if-eq v7, v0, :cond_b

    .line 153
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 152
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public getMinX()I
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 167
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    move v0, v3

    .line 181
    :cond_a
    return v0

    .line 170
    :cond_b
    const/16 v0, 0x8

    .line 171
    .local v0, minX:I
    const/4 v2, 0x1

    .local v2, y:I
    :goto_e
    const/16 v4, 0x8

    if-gt v2, v4, :cond_a

    .line 172
    const/4 v1, 0x1

    .local v1, x:I
    :goto_13
    if-ge v1, v0, :cond_21

    .line 173
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 174
    move v0, v1

    .line 175
    if-eq v3, v0, :cond_a

    .line 172
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 171
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method

.method public getMinY()I
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 185
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    move v0, v3

    .line 199
    :cond_a
    return v0

    .line 188
    :cond_b
    const/16 v0, 0x8

    .line 189
    .local v0, minY:I
    const/4 v1, 0x1

    .local v1, x:I
    :goto_e
    const/16 v4, 0x8

    if-gt v1, v4, :cond_a

    .line 190
    const/4 v2, 0x1

    .local v2, y:I
    :goto_13
    if-ge v2, v0, :cond_21

    .line 191
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 192
    move v0, v2

    .line 193
    if-eq v3, v0, :cond_a

    .line 190
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 189
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public isAvailableSize(II)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/MultipleSize;->getIndexBit(II)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setSize(II)Z
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/MultipleSize;->getIndexBit(II)J

    move-result-wide v0

    .line 65
    .local v0, bit:J
    cmp-long v3, v0, v5

    if-nez v3, :cond_c

    .line 72
    :cond_b
    :goto_b
    return v2

    .line 68
    :cond_c
    iget-wide v3, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    and-long/2addr v3, v0

    cmp-long v3, v5, v3

    if-nez v3, :cond_b

    .line 71
    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    .line 72
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public toLong()J
    .registers 3

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    return-wide v0
.end method
