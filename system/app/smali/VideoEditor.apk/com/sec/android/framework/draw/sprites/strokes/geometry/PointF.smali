.class public Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
.super Landroid/graphics/PointF;
.source "SourceFile"


# static fields
.field protected static final NEARLY_ZERO:F = 1.2357884E-4f


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->set(FF)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .registers 4
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    .line 29
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->set(FF)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .registers 4
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    .line 24
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->set(FF)V

    .line 25
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    .line 39
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->set(FF)V

    .line 40
    return-void
.end method

.method public static calculateDegree(FFFF)F
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    sub-float v0, p2, p0

    .line 63
    sub-float v1, p3, p1

    .line 64
    float-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 65
    return v0
.end method

.method public static calculateDelta(FFFF)F
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    sub-float v0, p2, p0

    .line 70
    sub-float v1, p3, p1

    .line 71
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public static calculateDirection(FFFF)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    sub-float v0, p2, p0

    .line 76
    sub-float v1, p3, p1

    .line 77
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static calculateDistance(FFFF)F
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    sub-float v0, p0, p2

    .line 52
    sub-float v1, p1, p3

    .line 54
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static calculateDistance(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    iget v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    iget v2, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    iget v3, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->calculateDistance(FFFF)F

    move-result v0

    return v0
.end method

.method public static isClockWise(FFFF)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isNearlyZero(F)Z
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x390194f1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public rotate(F)V
    .registers 7
    .parameter

    .prologue
    const/high16 v2, 0x4334

    const-wide v3, 0x400921fb54442d18L

    .line 85
    div-float v0, p1, v2

    float-to-double v0, v0

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 86
    div-float v1, p1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 88
    iget v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->set(FF)V

    .line 89
    return-void
.end method

.method public translate(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->offset(FF)V

    .line 82
    return-void
.end method
