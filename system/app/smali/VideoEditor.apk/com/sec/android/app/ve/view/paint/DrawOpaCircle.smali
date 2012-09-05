.class public Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;
.super Landroid/view/View;
.source "DrawOpaCircle.java"


# instance fields
.field private alpha:F

.field private colorSelected:I

.field private cx:F

.field private cy:F

.field private mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

.field private opaSize:I

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

.method private getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    if-nez v0, :cond_a

    .line 36
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getInstance()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 38
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/high16 v1, 0x437f

    .line 44
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getColorSelected()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->colorSelected:I

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getOpaSize()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->opaSize:I

    .line 48
    const/high16 v2, 0x41dc

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->radius:F

    .line 49
    const/high16 v2, 0x421e

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->cx:F

    .line 50
    const/high16 v2, 0x4222

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->cy:F

    .line 51
    iget v2, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->opaSize:I

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->alpha:F

    .line 52
    iget v2, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->alpha:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_6c

    :goto_31
    iput v1, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->alpha:F

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 55
    .local v0, mPaint:Landroid/graphics/Paint;
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->colorSelected:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->alpha:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->cx:F

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->cy:F

    iget v3, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 58
    const/4 v0, 0x0

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    .end local v0           #mPaint:Landroid/graphics/Paint;
    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 61
    .restart local v0       #mPaint:Landroid/graphics/Paint;
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    const/high16 v1, 0x3fc0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->cx:F

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->cy:F

    iget v3, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 65
    const/4 v0, 0x0

    .line 66
    return-void

    .line 52
    .end local v0           #mPaint:Landroid/graphics/Paint;
    :cond_6c
    iget v1, p0, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->alpha:F

    goto :goto_31
.end method
