.class public Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;
.super Landroid/view/View;
.source "DrawSizeCircle.java"


# instance fields
.field private colorSelected:I

.field private cx:F

.field private cy:F

.field private penSize:I

.field private radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x4000

    const/high16 v3, 0x3f00

    .line 35
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->isEraser()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 38
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEraserPopup:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->getEraserThickness()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->penSize:I

    .line 39
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->penSize:I

    int-to-float v1, v1

    const/high16 v2, 0x4220

    mul-float/2addr v1, v2

    const/high16 v2, 0x4248

    div-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->radius:F

    .line 40
    const/high16 v1, 0x4230

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->cx:F

    .line 41
    const/high16 v1, 0x4238

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->cy:F

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 44
    .local v0, mPaint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->cx:F

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->cy:F

    iget v3, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    const/4 v0, 0x0

    .line 60
    :goto_46
    return-void

    .line 49
    .end local v0           #mPaint:Landroid/graphics/Paint;
    :cond_47
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenColor()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->colorSelected:I

    .line 50
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenThickness()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->penSize:I

    .line 51
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->penSize:I

    int-to-float v1, v1

    const/high16 v2, 0x428c

    mul-float/2addr v1, v2

    const/high16 v2, 0x4290

    div-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->radius:F

    .line 52
    const/high16 v1, 0x421e

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->cx:F

    .line 53
    const/high16 v1, 0x4224

    iput v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->cy:F

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 55
    .restart local v0       #mPaint:Landroid/graphics/Paint;
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->colorSelected:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->cx:F

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->cy:F

    iget v3, p0, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_46
.end method
