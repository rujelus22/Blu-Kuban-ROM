.class public final Lcom/sec/android/framework/draw/sprites/strokes/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/sprites/strokes/a/a/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;Landroid/graphics/Path;Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 11
    iget v0, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v1, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 14
    iget v0, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v1, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    sub-float v1, v0, v1

    iget v0, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v2, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    sub-float v2, v0, v2

    iget v0, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    .line 15
    iget v3, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    add-float/2addr v3, v0

    iget v0, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v4, p3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    add-float/2addr v4, v0

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p2

    .line 14
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 17
    :cond_2e
    return-void
.end method
