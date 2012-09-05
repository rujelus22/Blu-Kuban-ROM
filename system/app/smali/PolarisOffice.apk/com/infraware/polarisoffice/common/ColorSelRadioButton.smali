.class public Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
.super Landroid/widget/RadioButton;
.source "ColorSelRadioButton.java"


# instance fields
.field private mBgColor:Landroid/graphics/Bitmap;

.field private mColor:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mColor:I

    .line 17
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mFillPaint:Landroid/graphics/Paint;

    .line 18
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mStrokePaint:Landroid/graphics/Paint;

    .line 19
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mBgColor:Landroid/graphics/Bitmap;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mColor:I

    .line 17
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mFillPaint:Landroid/graphics/Paint;

    .line 18
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mStrokePaint:Landroid/graphics/Paint;

    .line 19
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mBgColor:Landroid/graphics/Bitmap;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mColor:I

    .line 17
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mFillPaint:Landroid/graphics/Paint;

    .line 18
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mStrokePaint:Landroid/graphics/Paint;

    .line 19
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mBgColor:Landroid/graphics/Bitmap;

    .line 23
    return-void
.end method


# virtual methods
.method public GetButtonColor()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mColor:I

    return v0
.end method

.method public SetButtonColor(I)V
    .registers 4
    .parameter "colorId"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mColor:I

    .line 39
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mColor:I

    if-eqz v0, :cond_23

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mFillPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    :cond_23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mStrokePaint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mStrokePaint:Landroid/graphics/Paint;

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mBgColor:Landroid/graphics/Bitmap;

    .line 49
    const v0, 0x7f020060

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->setBackgroundResource(I)V

    .line 50
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->isChecked()Z

    move-result v6

    if-nez v6, :cond_38

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->isFocused()Z

    move-result v6

    if-nez v6, :cond_38

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->isPressed()Z

    move-result v6

    if-nez v6, :cond_38

    .line 55
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mBgColor:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mBgColor:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mBgColor:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 57
    :cond_38
    const/4 v6, 0x1

    const v7, 0x40ea8f5c

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v3, v6

    .line 58
    .local v3, padding:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    .local v1, drawRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getHeight()I

    move-result v7

    invoke-direct {v5, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    .local v5, viewRect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    if-lt v6, v7, :cond_6d

    .line 61
    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 62
    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 64
    :cond_6d
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    if-lt v6, v7, :cond_7f

    .line 65
    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 66
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 69
    :cond_7f
    iget v6, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mColor:I

    if-nez v6, :cond_c3

    .line 70
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200a1

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    .local v4, srcRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getLeft()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getTop()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getRight()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->getBottom()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    .local v2, dstRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0, v4, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 79
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #dstRect:Landroid/graphics/Rect;
    .end local v4           #srcRect:Landroid/graphics/Rect;
    :cond_b7
    :goto_b7
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c2

    .line 80
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 81
    :cond_c2
    return-void

    .line 76
    :cond_c3
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b7

    .line 77
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_b7
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "checked"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->invalidate()V

    .line 92
    return-void
.end method
