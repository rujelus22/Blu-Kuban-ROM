.class public Lcom/sec/android/framework/draw/Layer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final identityMatrix:Landroid/graphics/Matrix;


# instance fields
.field protected bitmap:Landroid/graphics/Bitmap;

.field protected canvas:Landroid/graphics/Canvas;

.field public inverseTranslateMatrix:Landroid/graphics/Matrix;

.field public panning:Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

.field public translateMatrix:Landroid/graphics/Matrix;

.field public zoom:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/sec/android/framework/draw/Layer;->identityMatrix:Landroid/graphics/Matrix;

    .line 22
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/Layer;->panning:Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    .line 41
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/framework/draw/Layer;->zoom:F

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/Layer;->translateMatrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/Layer;->inverseTranslateMatrix:Landroid/graphics/Matrix;

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/Layer;->buildTranslateMatrix()V

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/Layer;->allocateLayer(II)V

    .line 48
    return-void
.end method


# virtual methods
.method protected allocateLayer(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 104
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/Layer;->bitmap:Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/Layer;->clearLayer()V

    .line 107
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/Layer;->canvas:Landroid/graphics/Canvas;

    .line 108
    iget-object v0, p0, Lcom/sec/android/framework/draw/Layer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/framework/draw/Layer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    return-void
.end method

.method protected buildTranslateMatrix()V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/framework/draw/Layer;->translateMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sec/android/framework/draw/Layer;->zoom:F

    iget v2, p0, Lcom/sec/android/framework/draw/Layer;->zoom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/framework/draw/Layer;->translateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/framework/draw/Layer;->panning:Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    iget v1, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/sec/android/framework/draw/Layer;->panning:Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    iget v2, v2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 153
    iget-object v0, p0, Lcom/sec/android/framework/draw/Layer;->translateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/framework/draw/Layer;->inverseTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 154
    return-void
.end method

.method public changeLayerSize(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/framework/draw/Layer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/framework/draw/Layer;->bitmap:Landroid/graphics/Bitmap;

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/Layer;->allocateLayer(II)V

    .line 93
    return-void
.end method

.method public clearLayer()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/framework/draw/Layer;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 116
    return-void
.end method

.method public clearLayer(Landroid/graphics/RectF;)V
    .registers 5
    .parameter

    .prologue
    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 130
    iget-object v1, p0, Lcom/sec/android/framework/draw/Layer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 131
    return-void
.end method

.method public dispose()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/sec/android/framework/draw/Layer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    iput-object v1, p0, Lcom/sec/android/framework/draw/Layer;->bitmap:Landroid/graphics/Bitmap;

    .line 56
    iput-object v1, p0, Lcom/sec/android/framework/draw/Layer;->canvas:Landroid/graphics/Canvas;

    .line 57
    return-void
.end method

.method public renderSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Landroid/graphics/RectF;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->isHitted(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 147
    :cond_c
    :goto_c
    return-void

    .line 146
    :cond_d
    iget-object v0, p0, Lcom/sec/android/framework/draw/Layer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0, p2}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->render(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_c
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/framework/draw/Layer;->translateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/framework/draw/Layer;->translateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/framework/draw/Layer;->inverseTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 159
    return-void
.end method

.method public setPanning(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)V
    .registers 3
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v0, p1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/Layer;->panning:Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/Layer;->buildTranslateMatrix()V

    .line 68
    return-void
.end method

.method public setZoom(F)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/android/framework/draw/Layer;->zoom:F

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/Layer;->buildTranslateMatrix()V

    .line 79
    return-void
.end method
