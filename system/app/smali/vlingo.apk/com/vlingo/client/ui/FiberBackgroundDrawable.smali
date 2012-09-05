.class public Lcom/vlingo/client/ui/FiberBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FiberBackgroundDrawable.java"


# instance fields
.field private background:Landroid/graphics/drawable/ShapeDrawable;

.field private cache:Landroid/graphics/Bitmap;

.field private cacheDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private cacheNeedsUpdate:Z

.field private pattern:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3
    .parameter "res"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cacheNeedsUpdate:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->init(Landroid/content/res/Resources;)V

    .line 43
    return-void
.end method

.method private init(Landroid/content/res/Resources;)V
    .registers 9
    .parameter "res"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 46
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v4, v6, [F

    fill-array-data v4, :array_4a

    invoke-direct {v3, v4, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v2, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->background:Landroid/graphics/drawable/ShapeDrawable;

    .line 47
    const v2, 0x7f0200ec

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 49
    .local v1, shader:Landroid/graphics/BitmapShader;
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v4, v6, [F

    fill-array-data v4, :array_5e

    invoke-direct {v3, v4, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v2, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->pattern:Landroid/graphics/drawable/ShapeDrawable;

    .line 50
    iget-object v2, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->pattern:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 51
    iget-object v2, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->pattern:Landroid/graphics/drawable/ShapeDrawable;

    const/16 v3, 0x46

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 52
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cacheNeedsUpdate:Z

    .line 53
    return-void

    .line 46
    nop

    :array_4a
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    .line 49
    :array_5e
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 56
    iget-boolean v2, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cacheNeedsUpdate:Z

    if-eqz v2, :cond_e0

    .line 60
    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cache:Landroid/graphics/Bitmap;

    .line 61
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cache:Landroid/graphics/Bitmap;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    .local v8, cacheCanvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->background:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 64
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v3

    const/4 v3, 0x2

    new-array v5, v3, [I

    fill-array-data v5, :array_f0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 65
    .local v0, gradient:Landroid/graphics/LinearGradient;
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->background:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 66
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->background:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->background:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->background:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 70
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->background:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->background:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->background:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0xafafb0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->background:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->pattern:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x2

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 76
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->pattern:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cache:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cacheDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cacheNeedsUpdate:Z

    .line 81
    .end local v0           #gradient:Landroid/graphics/LinearGradient;
    .end local v8           #cacheCanvas:Landroid/graphics/Canvas;
    :cond_e0
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cacheDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 82
    iget-object v1, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cacheDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    return-void

    .line 64
    nop

    :array_f0
    .array-data 0x4
        0x3ft 0x3ft 0x3ft 0xfft
        0x0t 0x0t 0x0t 0xfft
    .end array-data
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 86
    const/4 v0, -0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "bounds"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 98
    iget-object v0, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_22

    .line 99
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/ui/FiberBackgroundDrawable;->cacheNeedsUpdate:Z

    .line 101
    :cond_22
    return-void
.end method

.method public setAlpha(I)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 90
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .parameter "cf"

    .prologue
    .line 93
    return-void
.end method
