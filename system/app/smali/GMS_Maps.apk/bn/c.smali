.class public Lbn/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DD)F
    .registers 10

    sub-double v0, p2, p0

    double-to-float v1, v0

    cmpg-double v0, p0, p2

    if-gez v0, :cond_12

    double-to-float v0, p0

    :goto_8
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v1

    mul-double v1, v2, v4

    double-to-float v1, v1

    add-float/2addr v0, v1

    return v0

    :cond_12
    double-to-float v0, p2

    goto :goto_8
.end method

.method public static a(FF)F
    .registers 7

    sub-float v0, p1, p0

    cmpg-float v1, p0, p1

    if-gez v1, :cond_10

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

    goto :goto_6
.end method

.method public static a(FFFF)F
    .registers 8

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

    const/4 v0, 0x0

    sub-int v1, p0, v0

    int-to-float v1, v1

    if-ge v0, p0, :cond_11

    int-to-float v0, v0

    :goto_7
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v1

    mul-double v1, v2, v4

    double-to-float v1, v1

    add-float/2addr v0, v1

    return v0

    :cond_11
    int-to-float v0, p0

    goto :goto_7
.end method

.method public static a()I
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Lbn/c;->a(I)F

    move-result v1

    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public static b(FFFF)F
    .registers 10

    const-wide/high16 v4, 0x4000

    sub-float v0, p2, p0

    float-to-double v0, v0

    sub-float v2, p3, p1

    float-to-double v2, v2

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
