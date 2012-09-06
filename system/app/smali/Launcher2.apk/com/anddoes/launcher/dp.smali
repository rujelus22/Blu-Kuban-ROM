.class public final Lcom/anddoes/launcher/dp;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field a:Lcom/anddoes/launcher/PagedViewIcon;

.field b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anddoes/launcher/PagedViewIcon;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/anddoes/launcher/dp;->a:Lcom/anddoes/launcher/PagedViewIcon;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/dp;->b:Landroid/graphics/Paint;

    .line 37
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anddoes/launcher/dp;->a:Lcom/anddoes/launcher/PagedViewIcon;

    invoke-virtual {v0}, Lcom/anddoes/launcher/PagedViewIcon;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_32

    .line 43
    invoke-virtual {p0}, Lcom/anddoes/launcher/dp;->getScrollX()I

    move-result v1

    .line 44
    invoke-virtual {p0}, Lcom/anddoes/launcher/dp;->getCompoundPaddingLeft()I

    move-result v2

    .line 45
    invoke-virtual {p0}, Lcom/anddoes/launcher/dp;->getCompoundPaddingRight()I

    move-result v3

    .line 46
    invoke-virtual {p0}, Lcom/anddoes/launcher/dp;->getWidth()I

    move-result v4

    sub-int v3, v4, v3

    sub-int/2addr v3, v2

    .line 48
    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 49
    iget-object v2, p0, Lcom/anddoes/launcher/dp;->a:Lcom/anddoes/launcher/PagedViewIcon;

    invoke-virtual {v2}, Lcom/anddoes/launcher/PagedViewIcon;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    .line 50
    iget-object v3, p0, Lcom/anddoes/launcher/dp;->b:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 52
    :cond_32
    return-void
.end method
