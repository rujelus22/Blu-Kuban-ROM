.class public Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;
.super Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
.source "SourceFile"


# instance fields
.field public innerX:F

.field public innerY:F

.field public magnitude:F

.field public normalVectorX:F

.field public normalVectorY:F

.field public outerX:F

.field public outerY:F

.field public pressure:F

.field public width:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>()V

    .line 16
    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorX:F

    .line 17
    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorY:F

    .line 25
    iput v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    .line 26
    iput v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->set(FF)V

    .line 35
    iput p3, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->width:F

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;F)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>()V

    .line 16
    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorX:F

    .line 17
    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorY:F

    .line 25
    iput v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    .line 26
    iput v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->set(Landroid/graphics/PointF;)V

    .line 30
    iput p2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->width:F

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V
    .registers 5
    .parameter

    .prologue
    .line 39
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v1, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v2, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->width:F

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;-><init>(FFF)V

    .line 41
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorX:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorX:F

    .line 42
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorY:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorY:F

    .line 44
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    .line 45
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    .line 46
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    .line 47
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    .line 49
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    .line 50
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    .line 51
    return-void
.end method


# virtual methods
.method public calculateDirectionPoint(Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;F)Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 105
    iget v0, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    sub-float/2addr v0, v1

    .line 106
    iget v1, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    sub-float/2addr v1, v2

    .line 108
    new-instance v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>()V

    .line 110
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 112
    invoke-static {v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->isNearlyZero(F)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 113
    div-float v3, p2, v3

    .line 114
    mul-float/2addr v0, v3

    .line 115
    mul-float/2addr v1, v3

    .line 117
    iget v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->set(FF)V

    .line 120
    :cond_2d
    return-object v2
.end method

.method public calculateParallelPoints(FFF)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    sub-float v1, p2, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p3, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->calculateParallelPoints(FFFZ)V

    .line 71
    return-void
.end method

.method public calculateParallelPoints(FFFZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    .line 80
    if-eqz p4, :cond_5

    .line 84
    neg-float v0, p1

    move p1, p2

    move p2, v0

    .line 87
    :cond_5
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 89
    invoke-static {v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->isNearlyZero(F)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 90
    div-float v0, p3, v0

    .line 91
    mul-float v1, p1, v0

    .line 92
    mul-float/2addr v0, p2

    .line 94
    iput v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorX:F

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorY:F

    iput p3, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    .line 95
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorY:F

    add-float/2addr v1, v2

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    iput v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->normalVectorY:F

    sub-float/2addr v1, v2

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    iput v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    .line 97
    :cond_3d
    return-void
.end method

.method public calculateParallelPoints(Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;F)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v1, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v2, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->calculateParallelPoints(FFFZ)V

    .line 75
    return-void
.end method
