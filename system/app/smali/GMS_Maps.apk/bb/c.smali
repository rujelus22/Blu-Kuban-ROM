.class public Lbb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DD)F
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 66
    sub-double v0, p2, p0

    double-to-float v1, v0

    .line 68
    cmpg-double v0, p0, p2

    if-gez v0, :cond_12

    .line 69
    double-to-float v0, p0

    .line 73
    :goto_8
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v1

    mul-double v1, v2, v4

    double-to-float v1, v1

    add-float/2addr v0, v1

    return v0

    .line 71
    :cond_12
    double-to-float v0, p2

    goto :goto_8
.end method

.method public static a(FF)F
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 55
    sub-float v0, p1, p0

    .line 57
    cmpg-float v1, p0, p1

    if-gez v1, :cond_10

    .line 62
    :goto_6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    float-to-double v3, v0

    mul-double v0, v1, v3

    double-to-float v0, v0

    add-float/2addr v0, p0

    return v0

    :cond_10
    move p0, p1

    .line 60
    goto :goto_6
.end method

.method public static a(FFFF)F
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    sub-float v0, p1, p3

    float-to-double v0, v0

    sub-float v2, p0, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(I)F
    .registers 7
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    sub-int v1, p0, v0

    int-to-float v1, v1

    .line 46
    if-ge v0, p0, :cond_11

    .line 47
    int-to-float v0, v0

    .line 51
    :goto_7
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v1

    mul-double v1, v2, v4

    double-to-float v1, v1

    add-float/2addr v0, v1

    return v0

    .line 49
    :cond_11
    int-to-float v0, p0

    goto :goto_7
.end method

.method public static a()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-static {v0}, Lbb/c;->a(I)F

    move-result v1

    .line 34
    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    .line 39
    :goto_b
    return v0

    .line 37
    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static b(FFFF)F
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v4, 0x4000

    .line 23
    sub-float v0, p2, p0

    float-to-double v0, v0

    .line 24
    sub-float v2, p3, p1

    float-to-double v2, v2

    .line 25
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
