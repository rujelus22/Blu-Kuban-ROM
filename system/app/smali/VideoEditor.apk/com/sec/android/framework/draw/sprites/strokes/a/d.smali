.class public final Lcom/sec/android/framework/draw/sprites/strokes/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/framework/draw/sprites/strokes/a/c;


# static fields
.field private static h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

.field private b:Lcom/sec/android/framework/draw/sprites/strokes/f;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/RectF;

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)Landroid/graphics/RectF;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 72
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 73
    if-nez p1, :cond_31

    move v0, v1

    :goto_8
    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->i:I

    .line 74
    :cond_a
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->j:I

    .line 79
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->i:I

    move v2, v0

    :goto_1f
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->j:I

    if-lt v2, v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->e:Landroid/graphics/RectF;

    return-object v0

    .line 73
    :cond_31
    add-int/lit8 v0, p1, 0x1

    goto :goto_8

    .line 79
    :cond_34
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->g:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    iget v4, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iget v6, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    const/high16 v7, 0x4000

    mul-float/2addr v4, v7

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v0, v4, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v5, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1f
.end method

.method public final a()V
    .registers 1

    .prologue
    .line 172
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const/high16 v12, 0x4080

    const/4 v3, 0x0

    .line 85
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeEnded()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 86
    iput v3, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->i:I

    .line 87
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->j:I

    .line 90
    :cond_15
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->i:I

    move v2, v0

    :goto_18
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->j:I

    if-lt v2, v0, :cond_62

    .line 95
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isStrokeEnded()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isTrackingPoints()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 96
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    const v0, -0xff0100

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 106
    const v0, -0xff01

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move v1, v3

    .line 109
    :goto_59
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_108

    .line 114
    :cond_61
    return-void

    .line 91
    :cond_62
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->g:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 92
    iget-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->g:Ljava/util/Vector;

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

    iput v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->k:F

    iget v4, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v5, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    iget v1, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->magnitude:F

    const/high16 v6, 0x4000

    mul-float/2addr v1, v6

    float-to-int v1, v1

    neg-int v6, v1

    int-to-float v6, v6

    const/high16 v7, 0x3f00

    mul-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->h:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d6

    sget-object v7, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->h:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->c:Landroid/graphics/Bitmap;

    :goto_af
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget v6, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->k:F

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->b:Lcom/sec/android/framework/draw/sprites/strokes/f;

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->pressure:F

    const/high16 v5, 0x437f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/sec/android/framework/draw/sprites/strokes/f;->setAlpha(I)V

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->c:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->b:Lcom/sec/android/framework/draw/sprites/strokes/f;

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 90
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_18

    .line 92
    :cond_d6
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->c:Landroid/graphics/Bitmap;

    new-instance v7, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->c:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-float v8, v6

    neg-float v9, v6

    neg-float v10, v6

    iget-object v11, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object v7, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->h:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v1, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_af

    .line 103
    :cond_f9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;

    .line 104
    iget v4, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->x:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/Vector;->y:F

    invoke-virtual {p1, v4, v0, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto/16 :goto_49

    .line 110
    :cond_108
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->f:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;

    .line 111
    iget v3, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->a:F

    iget v0, v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/c;->b:F

    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_59
.end method

.method public final a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/high16 v3, 0x3f80

    .line 46
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    .line 48
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->b:Lcom/sec/android/framework/draw/sprites/strokes/f;

    .line 52
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokePoints()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->f:Ljava/util/Vector;

    .line 53
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->g:Ljava/util/Vector;

    .line 55
    sget-object v0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->h:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_22

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->h:Ljava/util/LinkedHashMap;

    .line 58
    :cond_22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->e:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->d:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->d:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/a/d;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v3, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 68
    return-void
.end method
