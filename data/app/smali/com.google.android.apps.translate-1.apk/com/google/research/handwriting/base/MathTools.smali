.class public Lcom/google/research/handwriting/base/MathTools;
.super Ljava/lang/Object;
.source "MathTools.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argmax([D)I
    .registers 7
    .parameter "a"

    .prologue
    .line 50
    const-wide v2, -0x10000000000001L

    .line 51
    .local v2, max:D
    const/4 v0, -0x1

    .line 52
    .local v0, argmax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v4, p0

    if-ge v1, v4, :cond_16

    .line 53
    aget-wide v4, p0, v1

    cmpl-double v4, v4, v2

    if-ltz v4, :cond_13

    .line 54
    move v0, v1

    .line 55
    aget-wide v2, p0, v1

    .line 52
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 58
    :cond_16
    return v0
.end method

.method public static argmax([F)I
    .registers 5
    .parameter "a"

    .prologue
    .line 62
    const v2, -0x800001

    .line 63
    .local v2, max:F
    const/4 v0, -0x1

    .line 64
    .local v0, argmax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_14

    .line 65
    aget v3, p0, v1

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_11

    .line 66
    move v0, v1

    .line 67
    aget v2, p0, v1

    .line 64
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 70
    :cond_14
    return v0
.end method

.method public static semiringLogSum([D)D
    .registers 9
    .parameter "a"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/google/research/handwriting/base/MathTools;->argmax([D)I

    move-result v0

    .line 19
    .local v0, argmax:I
    aget-wide v2, p0, v0

    .line 21
    .local v2, max:D
    const-wide/16 v4, 0x0

    .line 22
    .local v4, res:D
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    array-length v6, p0

    if-ge v1, v6, :cond_19

    .line 23
    if-eq v1, v0, :cond_16

    .line 24
    aget-wide v6, p0, v1

    sub-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 22
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 27
    :cond_19
    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v6

    add-double/2addr v6, v2

    return-wide v6
.end method

.method public static semiringLogSum([F)F
    .registers 9
    .parameter "a"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/research/handwriting/base/MathTools;->argmax([F)I

    move-result v0

    .line 32
    .local v0, argmax:I
    aget v2, p0, v0

    .line 34
    .local v2, max:F
    const/4 v3, 0x0

    .line 35
    .local v3, res:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    array-length v4, p0

    if-ge v1, v4, :cond_1b

    .line 36
    if-eq v1, v0, :cond_18

    .line 37
    float-to-double v4, v3

    aget v6, p0, v1

    sub-float/2addr v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 35
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 40
    :cond_1b
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v4, v2

    return v4
.end method
