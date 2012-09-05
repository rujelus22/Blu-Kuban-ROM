.class public Lcom/infraware/polarisoffice/common/ImgSelButton;
.super Landroid/widget/Button;
.source "ImgSelButton.java"


# instance fields
.field private mCurIdx:I

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRtol:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/polarisoffice/common/ImgSelButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v1, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mCurIdx:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mImages:Ljava/util/ArrayList;

    .line 22
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mIsRtol:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mImages:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->isRtolLocaleType(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mIsRtol:Z

    .line 33
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mIsRtol:Z

    if-eqz v0, :cond_33

    .line 34
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :goto_32
    return-void

    .line 36
    :cond_33
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_32
.end method


# virtual methods
.method public addAllImageID(I)V
    .registers 6
    .parameter "arrayId"

    .prologue
    .line 45
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mImages:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    .line 46
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_14

    .line 50
    .end local v0           #array:Landroid/content/res/TypedArray;
    .end local v1           #i:I
    :cond_13
    return-void

    .line 48
    .restart local v0       #array:Landroid/content/res/TypedArray;
    .restart local v1       #i:I
    :cond_14
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mImages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public addImageID(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 41
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mImages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_d
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mImages:Ljava/util/ArrayList;

    if-eqz v9, :cond_66

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mCurIdx:I

    if-le v9, v10, :cond_66

    .line 62
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .local v8, paint:Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->getPaddingLeft()I

    move-result v7

    .line 66
    .local v7, nPaddingL:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->getHeight()I

    move-result v3

    .line 68
    .local v3, nHeight:I
    iget-object v9, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mImages:Ljava/util/ArrayList;

    iget v10, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mCurIdx:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 69
    .local v4, nID:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 70
    .local v1, img:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 71
    .local v6, nImgHeight:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 72
    .local v5, nImgBottom:I
    sub-int v9, v3, v6

    div-int/lit8 v2, v9, 0x2

    .line 76
    .local v2, nCalcT:I
    iget-boolean v9, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mIsRtol:Z

    if-eqz v9, :cond_67

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->getWidth()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x7

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-direct {v0, v9, v2, v10, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    .local v0, dstRect:Landroid/graphics/Rect;
    :goto_62
    const/4 v9, 0x0

    invoke-virtual {p1, v1, v9, v0, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 82
    .end local v0           #dstRect:Landroid/graphics/Rect;
    .end local v1           #img:Landroid/graphics/Bitmap;
    .end local v2           #nCalcT:I
    .end local v3           #nHeight:I
    .end local v4           #nID:I
    .end local v5           #nImgBottom:I
    .end local v6           #nImgHeight:I
    .end local v7           #nPaddingL:I
    .end local v8           #paint:Landroid/graphics/Paint;
    :cond_66
    return-void

    .line 79
    .restart local v1       #img:Landroid/graphics/Bitmap;
    .restart local v2       #nCalcT:I
    .restart local v3       #nHeight:I
    .restart local v4       #nID:I
    .restart local v5       #nImgBottom:I
    .restart local v6       #nImgHeight:I
    .restart local v7       #nPaddingL:I
    .restart local v8       #paint:Landroid/graphics/Paint;
    :cond_67
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->getWidth()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x7

    invoke-direct {v0, v7, v2, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #dstRect:Landroid/graphics/Rect;
    goto :goto_62
.end method

.method public setCurrentIdx(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 53
    iput p1, p0, Lcom/infraware/polarisoffice/common/ImgSelButton;->mCurIdx:I

    .line 54
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->invalidate()V

    .line 55
    return-void
.end method
