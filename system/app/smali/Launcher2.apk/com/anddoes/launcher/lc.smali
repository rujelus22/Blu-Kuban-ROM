.class final Lcom/anddoes/launcher/lc;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:I

.field c:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 406
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/anddoes/launcher/lc;->a:Landroid/graphics/Bitmap;

    .line 414
    iget-object v0, p0, Lcom/anddoes/launcher/lc;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 418
    :goto_6
    return-void

    .line 416
    :cond_7
    iget-object v0, p0, Lcom/anddoes/launcher/lc;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/lc;->b:I

    .line 417
    iget-object v0, p0, Lcom/anddoes/launcher/lc;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/lc;->c:I

    goto :goto_6
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/anddoes/launcher/lc;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 428
    :goto_4
    return-void

    .line 423
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 425
    iget v2, p0, Lcom/anddoes/launcher/lc;->b:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 426
    iget v2, p0, Lcom/anddoes/launcher/lc;->c:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 427
    iget-object v2, p0, Lcom/anddoes/launcher/lc;->a:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method public final getOpacity()I
    .registers 2

    .prologue
    .line 432
    const/4 v0, -0x1

    return v0
.end method

.method public final setAlpha(I)V
    .registers 2
    .parameter

    .prologue
    .line 438
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .parameter

    .prologue
    .line 443
    return-void
.end method
