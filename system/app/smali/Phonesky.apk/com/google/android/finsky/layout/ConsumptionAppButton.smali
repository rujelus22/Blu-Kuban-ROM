.class public Lcom/google/android/finsky/layout/ConsumptionAppButton;
.super Landroid/widget/Button;
.source "ConsumptionAppButton.java"


# instance fields
.field private mIconBitmap:Landroid/graphics/drawable/Drawable;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextPaint:Landroid/graphics/Paint;

    .line 23
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextPaint:Landroid/graphics/Paint;

    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextPaint:Landroid/graphics/Paint;

    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->setWillNotDraw(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v6, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_8

    .line 77
    :goto_7
    return-void

    .line 61
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v2, v6, 0x2

    .line 65
    .local v2, iconY:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getPaddingLeft()I

    move-result v4

    .line 66
    .local v4, paddingLeft:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getPaddingRight()I

    move-result v5

    .line 68
    .local v5, paddingRight:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    sub-int v3, v6, v5

    .line 69
    .local v3, leftForContent:I
    iget v6, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextWidth:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int v0, v6, v7

    .line 71
    .local v0, contentWidth:I
    add-int v6, v4, v3

    sub-int/2addr v6, v0

    div-int/lit8 v1, v6, 0x2

    .line 73
    .local v1, iconX:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getScrollX()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    int-to-float v7, v2

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    iget-object v6, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7
.end method

.method public setDocumentBackend(I)V
    .registers 7
    .parameter "backend"

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-static {p1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getOpenButtonDrawableId(I)I

    move-result v0

    .line 42
    .local v0, iconResourceId:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    .line 43
    iget-object v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mIconBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    iget-object v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    iget-object v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/ConsumptionAppButton;->mTextWidth:F

    .line 49
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->invalidate()V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ConsumptionAppButton;->requestLayout()V

    .line 51
    return-void
.end method
