.class public abstract Lcom/google/android/apps/unveil/env/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final format(FI)Ljava/lang/String;
    .registers 7
    .parameter "number"
    .parameter "precision"

    .prologue
    .line 87
    if-nez p1, :cond_17

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-int v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    :goto_16
    return-object v3

    .line 91
    :cond_17
    const/16 v0, 0xa

    .line 92
    .local v0, base:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1a
    if-ge v1, p1, :cond_21

    .line 93
    mul-int/lit8 v0, v0, 0xa

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 99
    :cond_21
    int-to-float v3, v0

    mul-float/2addr v3, p0

    float-to-int v2, v3

    .line 100
    .local v2, multipliedNumber:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_16
.end method

.method public static final getMeanIndex([I)F
    .registers 6
    .parameter "numbers"

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, total:I
    const/4 v2, 0x0

    .line 72
    .local v2, weightedTotal:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_10

    .line 73
    aget v3, p0, v0

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 74
    aget v3, p0, v0

    add-int/2addr v1, v3

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 76
    :cond_10
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    return v3
.end method

.method public static final getMedianIndex([I)I
    .registers 9
    .parameter "numbers"

    .prologue
    .line 43
    const/4 v6, 0x0

    .line 44
    .local v6, total:I
    move-object v0, p0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_c

    aget v5, v0, v2

    .line 45
    .local v5, number:I
    add-int/2addr v6, v5

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 48
    .end local v5           #number:I
    :cond_c
    div-int/lit8 v4, v6, 0x2

    .line 49
    .local v4, median:I
    const/4 v6, 0x0

    .line 50
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    array-length v7, p0

    if-ge v1, v7, :cond_1c

    .line 51
    aget v7, p0, v1

    add-int/2addr v6, v7

    .line 52
    if-lt v6, v4, :cond_19

    .line 58
    .end local v1           #i:I
    :goto_18
    return v1

    .line 50
    .restart local v1       #i:I
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 58
    :cond_1c
    const/4 v1, -0x1

    goto :goto_18
.end method

.method public static final getNormalizedStdDev([I)F
    .registers 14
    .parameter "numbers"

    .prologue
    .line 20
    const/4 v7, 0x0

    .line 21
    .local v7, numbersTotal:I
    const-wide/16 v5, 0x0

    .line 22
    .local v5, numbersSquaredTotal:J
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_12

    aget v4, v0, v1

    .line 23
    .local v4, number:I
    add-int/2addr v7, v4

    .line 24
    int-to-long v9, v4

    int-to-long v11, v4

    mul-long/2addr v9, v11

    add-long/2addr v5, v9

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 28
    .end local v4           #number:I
    :cond_12
    int-to-float v9, v7

    array-length v10, p0

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 29
    .local v3, meanNumber:F
    long-to-float v9, v5

    int-to-float v10, v7

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    array-length v10, p0

    int-to-float v10, v10

    div-float v8, v9, v10

    .line 32
    .local v8, variance:F
    mul-int v9, v7, v7

    int-to-float v9, v9

    div-float v9, v8, v9

    invoke-static {v9}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v9

    return v9
.end method

.method public static normalizeDegrees(F)F
    .registers 4
    .parameter "angleInDegrees"

    .prologue
    const/high16 v2, 0x43b4

    .line 107
    div-float v1, p0, v2

    float-to-int v0, v1

    .line 109
    .local v0, periods:I
    mul-int/lit16 v1, v0, 0x168

    int-to-float v1, v1

    sub-float/2addr p0, v1

    .line 111
    const/high16 v1, 0x4334

    cmpl-float v1, p0, v1

    if-lez v1, :cond_11

    .line 112
    sub-float/2addr p0, v2

    .line 117
    :cond_10
    :goto_10
    return p0

    .line 113
    :cond_11
    const/high16 v1, -0x3ccc

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_10

    .line 114
    add-float/2addr p0, v2

    goto :goto_10
.end method

.method public static radiansToNormalizedDegrees(F)F
    .registers 3
    .parameter "angleInRadians"

    .prologue
    .line 121
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/NumberUtils;->normalizeDegrees(F)F

    move-result v0

    return v0
.end method
