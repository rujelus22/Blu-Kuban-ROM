.class public final Lcom/sec/android/framework/draw/sprites/strokes/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/sprites/strokes/a/c/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;ILandroid/graphics/Path;Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x40a0

    .line 16
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v0

    .line 17
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 19
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokePoints()Ljava/util/Vector;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    .line 22
    const/4 v1, 0x4

    if-lt v4, v1, :cond_c3

    .line 23
    add-int/lit8 v1, v4, -0x4

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 24
    add-int/lit8 v2, v4, -0x3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 25
    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 26
    iget v4, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v1, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v5, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v6, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    invoke-static {v4, v1, v5, v6}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->isClockWise(FFFF)Z

    move-result v1

    .line 27
    iget v4, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v2, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    iget v5, v3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v3, v3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    invoke-static {v4, v2, v5, v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->isClockWise(FFFF)Z

    move-result v2

    .line 28
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/sprites/strokes/f;->a()Z

    move-result v3

    .line 30
    if-eqz p4, :cond_a8

    if-eqz v3, :cond_a8

    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/sprites/strokes/f;->getAlpha()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_a8

    if-ne v1, v2, :cond_a8

    .line 31
    iget v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    iget v2, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-gtz v1, :cond_a8

    .line 32
    iget v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    iget v2, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-gtz v1, :cond_a8

    .line 33
    iget v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    iget v2, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-gtz v1, :cond_a8

    .line 34
    iget v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    iget v2, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-lez v1, :cond_b3

    .line 35
    :cond_a8
    iget v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v2, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, v1, v2, v0, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 38
    :cond_b3
    if-eqz p4, :cond_c3

    .line 39
    iget v0, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerX:F

    iget v1, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->innerY:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 40
    iget v0, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerX:F

    iget v1, p4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->outerY:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    :cond_c3
    return-void
.end method
