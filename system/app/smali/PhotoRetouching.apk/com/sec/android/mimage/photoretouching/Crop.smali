.class public Lcom/sec/android/mimage/photoretouching/Crop;
.super Ljava/lang/Object;
.source "Crop.java"


# instance fields
.field private mDrawROI:Landroid/graphics/Rect;

.field private mPrevX:F

.field private mPrevY:F

.field private mROI:Landroid/graphics/Rect;

.field private mROIHeight:I

.field private mROIWidth:I

.field private mTouchType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V
    .registers 7
    .parameter "imgInfo"

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    .line 20
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    .line 22
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 23
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 24
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 25
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 27
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 28
    .local v0, hoffset:I
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 30
    .local v1, voffset:I
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 31
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 32
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 33
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 35
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 36
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 37
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 38
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 40
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    .line 41
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    .line 42
    return-void
.end method


# virtual methods
.method public Destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    .line 47
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    .line 48
    return-void
.end method

.method public EndMoveObject(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    .line 332
    return-void
.end method

.method public ExecuteCROP(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V
    .registers 10
    .parameter "imgInfo"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 336
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 337
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 338
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 339
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 341
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v1

    .line 342
    .local v1, width:I
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v0

    .line 344
    .local v0, height:I
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 345
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 347
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 348
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 350
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 351
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 353
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 354
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 356
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    .line 357
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    .line 359
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    if-ge v2, v6, :cond_d9

    .line 361
    iput v7, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    .line 362
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 365
    :cond_d9
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    if-ge v2, v6, :cond_e9

    .line 367
    iput v7, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    .line 368
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 371
    :cond_e9
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    invoke-static {v2, v1, v0, v3}, Lcom/sec/android/mimage/photoretouching/Effect;->native_crop([IIILandroid/graphics/Rect;)V

    .line 372
    return-void
.end method

.method public GetDrawROI(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)Landroid/graphics/Rect;
    .registers 5
    .parameter "imgInfo"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    if-eqz v0, :cond_43

    .line 54
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 55
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 56
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 57
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 59
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    .line 62
    :goto_42
    return-object v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_42
.end method

.method public GetROI()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    return-object v0
.end method

.method public GetROIHeight()I
    .registers 2

    .prologue
    .line 381
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    return v0
.end method

.method public GetROIWidth()I
    .registers 2

    .prologue
    .line 376
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    return v0
.end method

.method public InitMoveObject(FF)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 67
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    .line 69
    const/16 v1, 0x1e

    .line 71
    .local v1, offset:I
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 72
    .local v0, h_mid:I
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 74
    .local v2, v_mid:I
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3f

    int-to-float v3, v2

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3f

    .line 75
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    .line 93
    :cond_38
    :goto_38
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mPrevX:F

    .line 94
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mPrevY:F

    .line 96
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    return v3

    .line 76
    :cond_3f
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5f

    int-to-float v3, v2

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5f

    .line 77
    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    goto :goto_38

    .line 78
    :cond_5f
    int-to-float v3, v0

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7f

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7f

    .line 79
    const/4 v3, 0x4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    goto :goto_38

    .line 80
    :cond_7f
    int-to-float v3, v0

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9f

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9f

    .line 81
    const/4 v3, 0x5

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    goto :goto_38

    .line 82
    :cond_9f
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c4

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c4

    .line 83
    const/4 v3, 0x6

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    goto/16 :goto_38

    .line 84
    :cond_c4
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_e9

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_e9

    .line 85
    const/4 v3, 0x7

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    goto/16 :goto_38

    .line 86
    :cond_e9
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_10f

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_10f

    .line 87
    const/16 v3, 0x8

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    goto/16 :goto_38

    .line 88
    :cond_10f
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_135

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_135

    .line 89
    const/16 v3, 0x9

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    goto/16 :goto_38

    .line 90
    :cond_135
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_38

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_38

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_38

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_38

    .line 91
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    goto/16 :goto_38
.end method

.method public Reset(Landroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V
    .registers 6
    .parameter "r"
    .parameter "imgInfo"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 393
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 394
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 395
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mDrawROI:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 397
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    .line 398
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    .line 400
    return-void
.end method

.method public StartMoveObject(FFLcom/sec/android/mimage/photoretouching/common/ImageInfo;)V
    .registers 15
    .parameter "x"
    .parameter "y"
    .parameter "imgInfo"

    .prologue
    .line 102
    const/16 v4, 0x32

    .line 107
    .local v4, offset:I
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mPrevX:F

    sub-float v9, p1, v9

    float-to-int v5, v9

    .line 108
    .local v5, offsetx:I
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mPrevY:F

    sub-float v9, p2, v9

    float-to-int v6, v9

    .line 110
    .local v6, offsety:I
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_65

    .line 112
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v9, v5

    .line 113
    .local v3, left:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v7, v9, v5

    .line 114
    .local v7, right:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v8, v9, v6

    .line 115
    .local v8, top:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v0, v9, v6

    .line 117
    .local v0, bottom:I
    if-gez v3, :cond_30

    .line 119
    const/4 v3, 0x0

    .line 120
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    add-int/lit8 v7, v9, -0x1

    .line 123
    :cond_30
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v9

    if-le v7, v9, :cond_42

    .line 125
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 126
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    sub-int v9, v7, v9

    add-int/lit8 v3, v9, 0x1

    .line 129
    :cond_42
    if-gez v8, :cond_49

    .line 131
    const/4 v8, 0x0

    .line 132
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    add-int/lit8 v0, v9, -0x1

    .line 135
    :cond_49
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    if-lt v0, v9, :cond_5b

    .line 137
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 138
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    sub-int v9, v0, v9

    add-int/lit8 v8, v9, 0x1

    .line 141
    :cond_5b
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    invoke-virtual {v9, v3, v8, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 325
    .end local v0           #bottom:I
    .end local v3           #left:I
    .end local v7           #right:I
    .end local v8           #top:I
    :cond_60
    :goto_60
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mPrevX:F

    .line 326
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mPrevY:F

    .line 327
    return-void

    .line 143
    :cond_65
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_96

    .line 145
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v9, v5

    .line 146
    .restart local v3       #left:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    add-int/lit8 v2, v9, 0x1

    .line 148
    .local v2, dwidth:I
    if-gt v2, v4, :cond_7a

    .line 149
    move v2, v4

    .line 151
    :cond_7a
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    add-int/lit8 v3, v9, 0x1

    .line 153
    if-gez v3, :cond_84

    .line 154
    const/4 v3, 0x0

    .line 156
    :cond_84
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 157
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    goto :goto_60

    .line 159
    .end local v2           #dwidth:I
    .end local v3           #left:I
    :cond_96
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_d1

    .line 161
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v7, v9, v5

    .line 162
    .restart local v7       #right:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v7, v9

    add-int/lit8 v2, v9, 0x1

    .line 164
    .restart local v2       #dwidth:I
    if-gt v2, v4, :cond_ac

    .line 165
    move v2, v4

    .line 167
    :cond_ac
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    add-int/lit8 v7, v9, -0x1

    .line 168
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v9

    if-le v7, v9, :cond_bf

    .line 169
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 171
    :cond_bf
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v7, v9, Landroid/graphics/Rect;->right:I

    .line 172
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    goto :goto_60

    .line 174
    .end local v2           #dwidth:I
    .end local v7           #right:I
    :cond_d1
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_103

    .line 176
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v8, v9, v6

    .line 177
    .restart local v8       #top:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v8

    add-int/lit8 v1, v9, 0x1

    .line 179
    .local v1, dheight:I
    if-gt v1, v4, :cond_e6

    .line 180
    move v1, v4

    .line 182
    :cond_e6
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    add-int/lit8 v8, v9, 0x1

    .line 184
    if-gez v8, :cond_f0

    .line 185
    const/4 v8, 0x0

    .line 187
    :cond_f0
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 188
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    goto/16 :goto_60

    .line 190
    .end local v1           #dheight:I
    .end local v8           #top:I
    :cond_103
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_13f

    .line 192
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v0, v9, v6

    .line 193
    .restart local v0       #bottom:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v0, v9

    add-int/lit8 v1, v9, 0x1

    .line 195
    .restart local v1       #dheight:I
    if-gt v1, v4, :cond_119

    .line 196
    move v1, v4

    .line 198
    :cond_119
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v1

    add-int/lit8 v0, v9, -0x1

    .line 200
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    if-le v0, v9, :cond_12c

    .line 201
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 203
    :cond_12c
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 204
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    goto/16 :goto_60

    .line 206
    .end local v0           #bottom:I
    .end local v1           #dheight:I
    :cond_13f
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_19c

    .line 208
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v9, v5

    .line 209
    .restart local v3       #left:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    add-int/lit8 v2, v9, 0x1

    .line 211
    .restart local v2       #dwidth:I
    if-gt v2, v4, :cond_154

    .line 212
    move v2, v4

    .line 214
    :cond_154
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    add-int/lit8 v3, v9, 0x1

    .line 216
    if-gez v3, :cond_15e

    .line 217
    const/4 v3, 0x0

    .line 219
    :cond_15e
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 220
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    .line 222
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v8, v9, v6

    .line 223
    .restart local v8       #top:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v8

    add-int/lit8 v1, v9, 0x1

    .line 225
    .restart local v1       #dheight:I
    if-gt v1, v4, :cond_17f

    .line 226
    move v1, v4

    .line 228
    :cond_17f
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    add-int/lit8 v8, v9, 0x1

    .line 230
    if-gez v8, :cond_189

    .line 231
    const/4 v8, 0x0

    .line 233
    :cond_189
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 234
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    goto/16 :goto_60

    .line 236
    .end local v1           #dheight:I
    .end local v2           #dwidth:I
    .end local v3           #left:I
    .end local v8           #top:I
    :cond_19c
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_203

    .line 238
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v7, v9, v5

    .line 239
    .restart local v7       #right:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v7, v9

    add-int/lit8 v2, v9, 0x1

    .line 241
    .restart local v2       #dwidth:I
    if-gt v2, v4, :cond_1b2

    .line 242
    move v2, v4

    .line 244
    :cond_1b2
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    add-int/lit8 v7, v9, -0x1

    .line 245
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v9

    if-le v7, v9, :cond_1c5

    .line 246
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 248
    :cond_1c5
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v7, v9, Landroid/graphics/Rect;->right:I

    .line 249
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    .line 251
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v8, v9, v6

    .line 252
    .restart local v8       #top:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v8

    add-int/lit8 v1, v9, 0x1

    .line 254
    .restart local v1       #dheight:I
    if-gt v1, v4, :cond_1e6

    .line 255
    move v1, v4

    .line 257
    :cond_1e6
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    add-int/lit8 v8, v9, 0x1

    .line 259
    if-gez v8, :cond_1f0

    .line 260
    const/4 v8, 0x0

    .line 262
    :cond_1f0
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 263
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    goto/16 :goto_60

    .line 265
    .end local v1           #dheight:I
    .end local v2           #dwidth:I
    .end local v7           #right:I
    .end local v8           #top:I
    :cond_203
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_275

    .line 267
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v7, v9, v5

    .line 268
    .restart local v7       #right:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v7, v9

    add-int/lit8 v2, v9, 0x1

    .line 270
    .restart local v2       #dwidth:I
    if-gt v2, v4, :cond_21a

    .line 271
    move v2, v4

    .line 273
    :cond_21a
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    add-int/lit8 v7, v9, -0x1

    .line 274
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v9

    if-le v7, v9, :cond_22d

    .line 275
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 277
    :cond_22d
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v7, v9, Landroid/graphics/Rect;->right:I

    .line 278
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    .line 280
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v0, v9, v6

    .line 281
    .restart local v0       #bottom:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v0, v9

    add-int/lit8 v1, v9, 0x1

    .line 283
    .restart local v1       #dheight:I
    if-gt v1, v4, :cond_24f

    .line 284
    move v1, v4

    .line 286
    :cond_24f
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v1

    add-int/lit8 v0, v9, -0x1

    .line 288
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    if-le v0, v9, :cond_262

    .line 289
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 291
    :cond_262
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 292
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    goto/16 :goto_60

    .line 294
    .end local v0           #bottom:I
    .end local v1           #dheight:I
    .end local v2           #dwidth:I
    .end local v7           #right:I
    :cond_275
    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mTouchType:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_60

    .line 296
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int v3, v9, v5

    .line 297
    .restart local v3       #left:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    add-int/lit8 v2, v9, 0x1

    .line 299
    .restart local v2       #dwidth:I
    if-gt v2, v4, :cond_28b

    .line 300
    move v2, v4

    .line 302
    :cond_28b
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    add-int/lit8 v3, v9, 0x1

    .line 304
    if-gez v3, :cond_295

    .line 305
    const/4 v3, 0x0

    .line 307
    :cond_295
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 308
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIWidth:I

    .line 310
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v0, v9, v6

    .line 311
    .restart local v0       #bottom:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v0, v9

    add-int/lit8 v1, v9, 0x1

    .line 313
    .restart local v1       #dheight:I
    if-gt v1, v4, :cond_2b7

    .line 314
    move v1, v4

    .line 316
    :cond_2b7
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v1

    add-int/lit8 v0, v9, -0x1

    .line 318
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    if-le v0, v9, :cond_2ca

    .line 319
    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 321
    :cond_2ca
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 322
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROI:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/mimage/photoretouching/Crop;->mROIHeight:I

    goto/16 :goto_60
.end method
