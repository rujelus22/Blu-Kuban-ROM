.class public Lcom/google/android/apps/unveil/env/GeometryUtils;
.super Ljava/lang/Object;
.source "GeometryUtils.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/GeometryUtils;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(FFFF)F
    .registers 5
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 143
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/env/GeometryUtils;->squareDistance(FFFF)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public static distance(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .registers 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 151
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/env/GeometryUtils;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method public static distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .registers 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 147
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/env/GeometryUtils;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method public static fitBox(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;)Landroid/graphics/Rect;
    .registers 12
    .parameter "outerSize"
    .parameter "innerSize"

    .prologue
    const/4 v9, 0x0

    .line 117
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/Size;->aspectRatio()F

    move-result v2

    .line 118
    .local v2, innerRatio:F
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Size;->aspectRatio()F

    move-result v3

    .line 119
    .local v3, outerRatio:F
    cmpl-float v6, v2, v3

    if-lez v6, :cond_25

    .line 121
    iget v6, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    iget v7, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    mul-int/2addr v6, v7

    iget v7, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    div-int v0, v6, v7

    .line 122
    .local v0, height:I
    iget v6, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    sub-int/2addr v6, v0

    div-int/lit8 v1, v6, 0x2

    .line 123
    .local v1, heightPadding:I
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    add-int v8, v0, v1

    invoke-direct {v6, v9, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 127
    .end local v0           #height:I
    .end local v1           #heightPadding:I
    :goto_24
    return-object v6

    .line 125
    :cond_25
    iget v6, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v7, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    mul-int/2addr v6, v7

    iget v7, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    div-int v4, v6, v7

    .line 126
    .local v4, width:I
    iget v6, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    sub-int/2addr v6, v4

    div-int/lit8 v5, v6, 0x2

    .line 127
    .local v5, widthPadding:I
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v5, v4

    iget v8, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-direct {v6, v5, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_24
.end method

.method public static intersect(FFFFFF)Z
    .registers 9
    .parameter "aX"
    .parameter "aY"
    .parameter "radiusA"
    .parameter "bX"
    .parameter "bY"
    .parameter "radiusB"

    .prologue
    .line 166
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/apps/unveil/env/GeometryUtils;->squareDistance(FFFF)F

    move-result v0

    add-float v1, p2, p5

    add-float v2, p2, p5

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static intersect(Landroid/graphics/Point;FLandroid/graphics/Point;F)Z
    .registers 10
    .parameter "centerA"
    .parameter "radiusA"
    .parameter "centerB"
    .parameter "radiusB"

    .prologue
    .line 184
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v3, v2

    iget v2, p2, Landroid/graphics/Point;->y:I

    int-to-float v4, v2

    move v2, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/unveil/env/GeometryUtils;->intersect(FFFFFF)Z

    move-result v0

    return v0
.end method

.method public static intersect(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)Z
    .registers 10
    .parameter "centerA"
    .parameter "radiusA"
    .parameter "centerB"
    .parameter "radiusB"

    .prologue
    .line 175
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    move v2, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/unveil/env/GeometryUtils;->intersect(FFFFFF)Z

    move-result v0

    return v0
.end method

.method public static recenter(Landroid/graphics/RectF;FF)V
    .registers 6
    .parameter "rect"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float v0, p1, v2

    .line 29
    .local v0, deltaX:F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float v1, p2, v2

    .line 30
    .local v1, deltaY:F
    iget v2, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 31
    iget v2, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 32
    iget v2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 33
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 34
    return-void
.end method

.method public static round(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .registers 2
    .parameter "unrounded"

    .prologue
    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .local v0, rounded:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 42
    return-object v0
.end method

.method public static scale(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 10
    .parameter "unadjusted"
    .parameter "finalHeight"
    .parameter "finalWidth"

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 51
    .local v1, centerX:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 53
    .local v2, centerY:I
    div-int/lit8 v6, p2, 0x2

    sub-int v3, v1, v6

    .line 54
    .local v3, left:I
    div-int/lit8 v6, p2, 0x2

    add-int v4, v1, v6

    .line 55
    .local v4, right:I
    div-int/lit8 v6, p1, 0x2

    sub-int v5, v2, v6

    .line 56
    .local v5, top:I
    div-int/lit8 v6, p1, 0x2

    add-int v0, v2, v6

    .line 57
    .local v0, bottom:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method public static scale(Landroid/graphics/RectF;F)V
    .registers 4
    .parameter "rect"
    .parameter "scale"

    .prologue
    .line 65
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 66
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 67
    return-void
.end method

.method public static scaleRect(Landroid/graphics/Rect;Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;)V
    .registers 7
    .parameter "rectToScale"
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    .line 73
    iget v2, p2, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v2, v2

    iget v3, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 74
    .local v0, xFactor:F
    iget v2, p2, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v2, v2

    iget v3, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 76
    .local v1, yFactor:F
    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 77
    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 78
    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 79
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 80
    return-void
.end method

.method public static squareDistance(FFFF)F
    .registers 7
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 159
    sub-float v0, p2, p0

    sub-float v1, p2, p0

    mul-float/2addr v0, v1

    sub-float v1, p3, p1

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static toBoundingBox(Landroid/graphics/Rect;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 3
    .parameter "rectBox"

    .prologue
    .line 132
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setX(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setY(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setWidth(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setHeight(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static translate(Landroid/graphics/RectF;IIII)V
    .registers 14
    .parameter "boundingBox"
    .parameter "toWidth"
    .parameter "toHeight"
    .parameter "fromWidth"
    .parameter "fromHeight"

    .prologue
    const/4 v8, 0x0

    .line 97
    int-to-float v5, p1

    int-to-float v6, p3

    div-float/2addr v5, v6

    int-to-float v6, p2

    int-to-float v7, p4

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 100
    .local v3, scale:F
    int-to-float v5, p1

    int-to-float v6, p3

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 101
    .local v2, leftMargin:I
    int-to-float v5, p2

    int-to-float v6, p4

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 104
    .local v4, topMargin:I
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    add-int v0, v2, v5

    .line 105
    .local v0, centerX:I
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    add-int v1, v4, v5

    .line 108
    .local v1, centerY:I
    invoke-static {p0, v3}, Lcom/google/android/apps/unveil/env/GeometryUtils;->scale(Landroid/graphics/RectF;F)V

    .line 109
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-static {p0, v5, v6}, Lcom/google/android/apps/unveil/env/GeometryUtils;->recenter(Landroid/graphics/RectF;FF)V

    .line 110
    return-void
.end method
