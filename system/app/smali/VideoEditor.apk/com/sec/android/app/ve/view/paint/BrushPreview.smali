.class public Lcom/sec/android/app/ve/view/paint/BrushPreview;
.super Landroid/view/View;
.source "BrushPreview.java"


# instance fields
.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private nThickness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->nThickness:I

    .line 22
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->nThickness:I

    .line 29
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->init()V

    .line 30
    return-void
.end method


# virtual methods
.method init()V
    .registers 3

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 38
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

    .line 50
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->nThickness:I

    add-int/lit8 v0, v0, -0xf

    iput v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->nThickness:I

    .line 59
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->nThickness:I

    if-ge v0, v7, :cond_6c

    .line 60
    iput v7, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->nThickness:I

    .line 61
    :cond_6c
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->nThickness:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 62
    return-void
.end method

.method public setmColor(I)V
    .registers 2
    .parameter "mColor"

    .prologue
    .line 44
    iput p1, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->mColor:I

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->invalidate()V

    .line 46
    return-void
.end method

.method public setnThickness(I)V
    .registers 2
    .parameter "nThickness"

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/app/ve/view/paint/BrushPreview;->nThickness:I

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/BrushPreview;->invalidate()V

    .line 42
    return-void
.end method
