.class public Lcom/infraware/polarisoffice/common/SelectibleRadioButton;
.super Landroid/widget/RadioButton;
.source "SelectibleRadioButton.java"


# instance fields
.field private mNormalDrawableID:I

.field private mSelecteddDrawableID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput v1, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mSelecteddDrawableID:I

    .line 14
    iput v1, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mNormalDrawableID:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput v0, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mSelecteddDrawableID:I

    .line 14
    iput v0, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mNormalDrawableID:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput v0, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mSelecteddDrawableID:I

    .line 14
    iput v0, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mNormalDrawableID:I

    .line 18
    return-void
.end method


# virtual methods
.method public SetButtonImg(II)V
    .registers 3
    .parameter "normalID"
    .parameter "selectedID"

    .prologue
    .line 29
    iput p2, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mSelecteddDrawableID:I

    .line 30
    iput p1, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mNormalDrawableID:I

    .line 31
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v9, -0x1

    .line 35
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .local v7, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->getHeight()I

    move-result v1

    .line 41
    .local v1, nHeight:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->getWidth()I

    move-result v6

    .line 43
    .local v6, nWidth:I
    const/4 v0, 0x0

    .line 44
    .local v0, img:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_46

    iget v8, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mSelecteddDrawableID:I

    if-eq v8, v9, :cond_46

    .line 45
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mSelecteddDrawableID:I

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    :cond_2e
    :goto_2e
    if-eqz v0, :cond_45

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 52
    .local v2, nImgHeight:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 54
    .local v3, nImgWidth:I
    sub-int v8, v6, v3

    div-int/lit8 v4, v8, 0x2

    .line 55
    .local v4, nLeft:I
    sub-int v8, v1, v2

    div-int/lit8 v5, v8, 0x2

    .line 56
    .local v5, nTop:I
    int-to-float v8, v4

    int-to-float v9, v5

    invoke-virtual {p1, v0, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 59
    .end local v2           #nImgHeight:I
    .end local v3           #nImgWidth:I
    .end local v4           #nLeft:I
    .end local v5           #nTop:I
    :cond_45
    return-void

    .line 46
    :cond_46
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->isChecked()Z

    move-result v8

    if-nez v8, :cond_2e

    iget v8, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mNormalDrawableID:I

    if-eq v8, v9, :cond_2e

    .line 47
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->mNormalDrawableID:I

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2e
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "checked"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->invalidate()V

    .line 72
    return-void
.end method
