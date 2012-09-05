.class public Lcom/sec/android/app/ve/view/paint/EraserPreview;
.super Landroid/view/View;
.source "EraserPreview.java"


# instance fields
.field private mBitmapPaint:Landroid/graphics/Paint;

.field private nThickness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->nThickness:I

    .line 18
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/EraserPreview;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->nThickness:I

    .line 25
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/EraserPreview;->init()V

    .line 26
    return-void
.end method


# virtual methods
.method init()V
    .registers 3

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 34
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x100

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/EraserPreview;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/EraserPreview;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/EraserPreview;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/EraserPreview;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/EraserPreview;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/EraserPreview;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->nThickness:I

    add-int/lit8 v0, v0, -0xf

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->nThickness:I

    .line 51
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->nThickness:I

    if-ge v0, v7, :cond_6b

    .line 52
    iput v7, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->nThickness:I

    .line 53
    :cond_6b
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/EraserPreview;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/EraserPreview;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->nThickness:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 54
    return-void
.end method

.method public setnThickness(I)V
    .registers 2
    .parameter "nThickness"

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/android/app/ve/view/paint/EraserPreview;->nThickness:I

    .line 37
    return-void
.end method
