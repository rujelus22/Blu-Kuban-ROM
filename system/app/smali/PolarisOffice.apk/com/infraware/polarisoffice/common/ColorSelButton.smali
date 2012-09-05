.class public Lcom/infraware/polarisoffice/common/ColorSelButton;
.super Landroid/widget/Button;
.source "ColorSelButton.java"


# instance fields
.field private mColor:I

.field private mIsRtol:Z

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v1, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mColor:I

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mPaint:Landroid/graphics/Paint;

    .line 18
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mIsRtol:Z

    .line 26
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->isRtolLocaleType(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mIsRtol:Z

    .line 28
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mIsRtol:Z

    if-eqz v0, :cond_3e

    .line 30
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setGravity(I)V

    .line 39
    :goto_34
    const/high16 v0, 0x41b0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setTextSize(F)V

    .line 40
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setTextColor(I)V

    .line 41
    return-void

    .line 35
    :cond_3e
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setGravity(I)V

    goto :goto_34
.end method


# virtual methods
.method public getColor()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mIsRtol:Z

    if-eqz v0, :cond_35

    .line 61
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getPaddingLeft()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getPaddingTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 64
    :goto_34
    return-void

    .line 63
    :cond_35
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getPaddingTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_34
.end method

.method public setColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 48
    iput p1, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mColor:I

    .line 49
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorSelButton;->mColor:I

    if-nez v0, :cond_17

    .line 51
    const v0, 0x7f08017d

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setText(I)V

    .line 54
    :goto_13
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->invalidate()V

    .line 55
    return-void

    .line 53
    :cond_17
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method
