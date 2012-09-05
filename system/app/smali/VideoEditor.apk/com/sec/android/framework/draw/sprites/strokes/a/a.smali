.class public final Lcom/sec/android/framework/draw/sprites/strokes/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/sprites/strokes/a/c;


# instance fields
.field private a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

.field private b:Lcom/sec/android/framework/draw/sprites/strokes/f;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/RectF;

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)Landroid/graphics/Path;
    .registers 6
    .parameter

    .prologue
    .line 160
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    .line 161
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 162
    iget v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    const/high16 v4, 0x4000

    mul-float/2addr v0, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 163
    return-object v1
.end method


# virtual methods
.method public final a(IZ)Landroid/graphics/RectF;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 63
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 64
    if-nez p1, :cond_50

    move v0, v1

    :goto_8
    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->g:I

    .line 65
    :cond_a
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->h:I

    .line 70
    const-string v0, "DIOTEK/DRAW"

    const-string v2, "strokeLine : %d => %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->g:I

    move v2, v0

    :goto_3e
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->h:I

    if-lt v2, v0, :cond_53

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->d:Landroid/graphics/RectF;

    return-object v0

    .line 64
    :cond_50
    add-int/lit8 v0, p1, 0x1

    goto :goto_8

    .line 81
    :cond_53
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->f:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    invoke-static {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->a(Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3e
.end method

.method public final a()V
    .registers 1

    .prologue
    .line 168
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4080

    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeEnded()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 88
    iput v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->g:I

    .line 89
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->h:I

    .line 92
    :cond_15
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->g:I

    move v2, v0

    :goto_18
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->h:I

    if-lt v2, v0, :cond_62

    .line 97
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeEnded()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isTrackingPoints()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 98
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 103
    const v0, -0xff0100

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c9

    .line 108
    const v0, -0xff01

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move v1, v3

    .line 111
    :goto_59
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_d8

    .line 116
    :cond_61
    return-void

    .line 93
    :cond_62
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->f:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 94
    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->f:Ljava/util/Vector;

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    iget v4, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v1, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v5, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v6, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    invoke-static {v4, v1, v5, v6}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->calculateDegree(FFFF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->i:F

    iget v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v4, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget-object v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    neg-float v5, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, v5, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget v5, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->i:F

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v6, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v0}, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->a(Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->b:Lcom/sec/android/framework/draw/sprites/strokes/f;

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    const/high16 v4, 0x437f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/sec/android/framework/draw/sprites/strokes/f;->setAlpha(I)V

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->b:Lcom/sec/android/framework/draw/sprites/strokes/f;

    invoke-virtual {p1, v0, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 92
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_18

    .line 105
    :cond_c9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 106
    iget v4, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    invoke-virtual {p1, v4, v0, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto/16 :goto_49

    .line 112
    :cond_d8
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 113
    iget v3, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_59
.end method

.method public final a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V
    .registers 4
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    .line 46
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->b:Lcom/sec/android/framework/draw/sprites/strokes/f;

    .line 47
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->b:Lcom/sec/android/framework/draw/sprites/strokes/f;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/f;->setAlpha(I)V

    .line 51
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokePoints()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->e:Ljava/util/Vector;

    .line 52
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->f:Ljava/util/Vector;

    .line 55
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->b:Lcom/sec/android/framework/draw/sprites/strokes/f;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/strokes/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->c:Landroid/graphics/Bitmap;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->d:Landroid/graphics/RectF;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/a;->i:F

    .line 59
    return-void
.end method
