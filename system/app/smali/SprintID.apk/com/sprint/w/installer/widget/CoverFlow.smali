.class public Lcom/sprint/w/installer/widget/CoverFlow;
.super Landroid/widget/Gallery;
.source "CoverFlow.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCoveflowCenter:I

.field private mMaxRotationAngle:I

.field private mMaxZoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    .line 42
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxRotationAngle:I

    .line 47
    const/16 v0, -0xc8

    iput v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxZoom:I

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/CoverFlow;->setStaticTransformationsEnabled(Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    .line 42
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxRotationAngle:I

    .line 47
    const/16 v0, -0xc8

    iput v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxZoom:I

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/CoverFlow;->setStaticTransformationsEnabled(Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    .line 42
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxRotationAngle:I

    .line 47
    const/16 v0, -0xc8

    iput v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxZoom:I

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/CoverFlow;->setStaticTransformationsEnabled(Z)V

    .line 67
    return-void
.end method

.method private getCenterOfCoverflow()I
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/CoverFlow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/CoverFlow;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/CoverFlow;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/CoverFlow;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .registers 3
    .parameter "view"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V
    .registers 16
    .parameter "child"
    .parameter "t"
    .parameter "rotationAngle"

    .prologue
    const/4 v11, 0x0

    .line 173
    if-nez p1, :cond_4

    .line 195
    :goto_3
    return-void

    .line 176
    :cond_4
    iget-object v5, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 177
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 178
    .local v1, imageMatrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    .local v0, imageHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    .local v2, imageWidth:I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 182
    .local v3, rotation:I
    iget-object v5, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    const/high16 v6, 0x4348

    invoke-virtual {v5, v11, v11, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 185
    iget v5, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxRotationAngle:I

    if-ge v3, v5, :cond_39

    .line 186
    iget v5, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxZoom:I

    int-to-double v5, v5

    int-to-double v7, v3

    const-wide v9, 0x400a666666666666L

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 187
    .local v4, zoomAmount:F
    iget-object v5, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v11, v11, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 190
    .end local v4           #zoomAmount:F
    :cond_39
    iget-object v5, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    int-to-float v6, p3

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 191
    iget-object v5, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 192
    div-int/lit8 v5, v2, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, -0x5

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 193
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, -0x5

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 194
    iget-object v5, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    goto :goto_3
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 8
    .parameter "child"
    .parameter "t"

    .prologue
    .line 131
    invoke-static {p1}, Lcom/sprint/w/installer/widget/CoverFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 132
    .local v0, childCenter:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 133
    .local v1, childWidth:I
    const/4 v2, 0x0

    .line 135
    .local v2, rotationAngle:I
    sget v3, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v3}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 137
    iget v3, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCoveflowCenter:I

    if-ne v0, v3, :cond_18

    .line 138
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/sprint/w/installer/widget/CoverFlow;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V

    .line 147
    :goto_16
    const/4 v3, 0x1

    return v3

    .line 140
    :cond_18
    iget v3, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCoveflowCenter:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxRotationAngle:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 141
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxRotationAngle:I

    if-le v3, v4, :cond_33

    .line 142
    if-gez v2, :cond_37

    iget v3, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxRotationAngle:I

    neg-int v2, v3

    .line 144
    :cond_33
    :goto_33
    invoke-direct {p0, p1, p2, v2}, Lcom/sprint/w/installer/widget/CoverFlow;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;I)V

    goto :goto_16

    .line 142
    :cond_37
    iget v2, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxRotationAngle:I

    goto :goto_33
.end method

.method public getMaxRotationAngle()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxRotationAngle:I

    return v0
.end method

.method public getMaxZoom()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxZoom:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/sprint/w/installer/widget/CoverFlow;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mCoveflowCenter:I

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    .line 163
    return-void
.end method

.method public setMaxRotationAngle(I)V
    .registers 2
    .parameter "maxRotationAngle"

    .prologue
    .line 84
    iput p1, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxRotationAngle:I

    .line 85
    return-void
.end method

.method public setMaxZoom(I)V
    .registers 2
    .parameter "maxZoom"

    .prologue
    .line 102
    iput p1, p0, Lcom/sprint/w/installer/widget/CoverFlow;->mMaxZoom:I

    .line 103
    return-void
.end method
