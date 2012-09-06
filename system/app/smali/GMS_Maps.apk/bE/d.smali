.class public Lbe/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([F)F
    .registers 4
    .parameter

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v0, 0x0

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_b

    .line 19
    aget v2, p0, v0

    add-float/2addr v1, v2

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 21
    :cond_b
    return v1
.end method

.method public static a([F[F)F
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    aget v0, p0, v1

    aget v1, p1, v1

    mul-float/2addr v0, v1

    aget v1, p0, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p0, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 43
    return v0
.end method

.method public static b([F)F
    .registers 5
    .parameter

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v0, 0x0

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_e

    .line 35
    aget v2, p0, v0

    aget v3, p0, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 37
    :cond_e
    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static c([F)[F
    .registers 5
    .parameter

    .prologue
    .line 47
    array-length v0, p0

    new-array v1, v0, [F

    .line 48
    invoke-static {p0}, Lbe/d;->b([F)F

    move-result v2

    .line 49
    const/4 v0, 0x0

    :goto_8
    array-length v3, p0

    if-ge v0, v3, :cond_13

    .line 50
    aget v3, p0, v0

    div-float/2addr v3, v2

    aput v3, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 52
    :cond_13
    return-object v1
.end method
