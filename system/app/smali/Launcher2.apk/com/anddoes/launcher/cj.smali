.class final Lcom/anddoes/launcher/cj;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:I

.field private final e:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/cj;->e:Landroid/graphics/Paint;

    .line 35
    const/16 v0, 0xff

    iput v0, p0, Lcom/anddoes/launcher/cj;->b:I

    .line 36
    iput-object p1, p0, Lcom/anddoes/launcher/cj;->a:Landroid/graphics/Bitmap;

    .line 37
    if-eqz p1, :cond_23

    .line 38
    iget-object v0, p0, Lcom/anddoes/launcher/cj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/cj;->c:I

    .line 39
    iget-object v0, p0, Lcom/anddoes/launcher/cj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/cj;->d:I

    .line 43
    :goto_22
    return-void

    .line 41
    :cond_23
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/cj;->d:I

    iput v0, p0, Lcom/anddoes/launcher/cj;->c:I

    goto :goto_22
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anddoes/launcher/cj;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/anddoes/launcher/cj;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/anddoes/launcher/cj;->a:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/anddoes/launcher/cj;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method public final getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/anddoes/launcher/cj;->d:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/anddoes/launcher/cj;->c:I

    return v0
.end method

.method public final getMinimumHeight()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/anddoes/launcher/cj;->d:I

    return v0
.end method

.method public final getMinimumWidth()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/anddoes/launcher/cj;->c:I

    return v0
.end method

.method public final getOpacity()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .registers 3
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/anddoes/launcher/cj;->b:I

    .line 64
    iget-object v0, p0, Lcom/anddoes/launcher/cj;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/anddoes/launcher/cj;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 54
    return-void
.end method

.method public final setFilterBitmap(Z)V
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/anddoes/launcher/cj;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 69
    return-void
.end method
