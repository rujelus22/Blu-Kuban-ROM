.class public Lcom/vlingo/client/car/CarTryAgainButton;
.super Landroid/widget/Button;
.source "CarTryAgainButton.java"


# instance fields
.field private icon:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/CarTryAgainButton;->icon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 28
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarTryAgainButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/vlingo/client/car/CarTryAgainButton;->icon:Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/16 v7, 0xa

    .line 38
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 40
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarTryAgainButton;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v1

    .line 41
    .local v1, h:I
    int-to-float v5, v1

    iget-object v6, p0, Lcom/vlingo/client/car/CarTryAgainButton;->icon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 42
    .local v0, factor:F
    iget-object v5, p0, Lcom/vlingo/client/car/CarTryAgainButton;->icon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v2, v5

    .line 43
    .local v2, w:I
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarTryAgainButton;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarTryAgainButton;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarTryAgainButton;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v6

    sub-int v3, v5, v6

    .line 44
    .local v3, x:I
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarTryAgainButton;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarTryAgainButton;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/vlingo/client/ui/UIUtils;->convertDipsToPixels(Landroid/content/res/Resources;I)I

    move-result v6

    add-int v4, v5, v6

    .line 46
    .local v4, y:I
    iget-object v5, p0, Lcom/vlingo/client/car/CarTryAgainButton;->icon:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v2

    add-int v8, v4, v1

    invoke-direct {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 47
    return-void
.end method
