.class abstract Lcom/cooliris/media/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/ImageViewTouchBase$Recycler;
    }
.end annotation


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field private mRecycler:Lcom/cooliris/media/ImageViewTouchBase$Recycler;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 218
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    new-instance v0, Lcom/cooliris/media/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/cooliris/media/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    .line 60
    iput v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mThisHeight:I

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object v2, p0, Lcom/cooliris/media/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 219
    invoke-direct {p0}, Lcom/cooliris/media/ImageViewTouchBase;->init()V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 223
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    new-instance v0, Lcom/cooliris/media/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/cooliris/media/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    .line 60
    iput v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mThisHeight:I

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object v2, p0, Lcom/cooliris/media/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 224
    invoke-direct {p0}, Lcom/cooliris/media/ImageViewTouchBase;->init()V

    .line 225
    return-void
.end method

.method private getProperBaseMatrix(Lcom/cooliris/media/RotateBitmap;Landroid/graphics/Matrix;)V
    .registers 13
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/high16 v9, 0x4000

    .line 247
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 248
    .local v4, viewWidth:F
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 250
    .local v3, viewHeight:F
    invoke-virtual {p1}, Lcom/cooliris/media/RotateBitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 251
    .local v5, w:F
    invoke-virtual {p1}, Lcom/cooliris/media/RotateBitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 252
    .local v0, h:F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 256
    div-float v7, v4, v5

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 257
    .local v6, widthScale:F
    div-float v7, v3, v0

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 258
    .local v1, heightScale:F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 260
    .local v2, scale:F
    invoke-virtual {p1}, Lcom/cooliris/media/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 261
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 263
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 264
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 228
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/cooliris/media/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 229
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .registers 6
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_d

    .line 118
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 121
    :cond_d
    iget-object v2, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v2}, Lcom/cooliris/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 122
    .local v1, old:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v2, p1}, Lcom/cooliris/media/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    iget-object v2, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v2, p2}, Lcom/cooliris/media/RotateBitmap;->setRotation(I)V

    .line 125
    if-eqz v1, :cond_2e

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/cooliris/media/ImageViewTouchBase;->mRecycler:Lcom/cooliris/media/ImageViewTouchBase$Recycler;

    if-eqz v2, :cond_2e

    .line 126
    iget-object v2, p0, Lcom/cooliris/media/ImageViewTouchBase;->mRecycler:Lcom/cooliris/media/ImageViewTouchBase$Recycler;

    invoke-interface {v2, v1}, Lcom/cooliris/media/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 128
    :cond_2e
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .registers 15
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 175
    iget-object v8, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v8}, Lcom/cooliris/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_c

    .line 215
    :goto_b
    return-void

    .line 179
    :cond_c
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 181
    .local v3, m:Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v8}, Lcom/cooliris/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v9}, Lcom/cooliris/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 184
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 186
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 187
    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 189
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 191
    .local v1, deltaY:F
    if-eqz p2, :cond_4a

    .line 192
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 193
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_67

    .line 194
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 202
    .end local v5           #viewHeight:I
    :cond_4a
    :goto_4a
    if-eqz p1, :cond_5c

    .line 203
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 204
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_82

    .line 205
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 213
    .end local v6           #viewWidth:I
    :cond_5c
    :goto_5c
    invoke-virtual {p0, v0, v1}, Lcom/cooliris/media/ImageViewTouchBase;->postTranslate(FF)V

    .line 214
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/cooliris/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_b

    .line 195
    .restart local v5       #viewHeight:I
    :cond_67
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_71

    .line 196
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_4a

    .line 197
    :cond_71
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4a

    .line 198
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_4a

    .line 206
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_82
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_8c

    .line 207
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_5c

    .line 208
    :cond_8c
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5c

    .line 209
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_5c
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 271
    iget-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 272
    iget-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/cooliris/media/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .registers 3
    .parameter "matrix"

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cooliris/media/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .registers 4
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 233
    iget-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoom()F
    .registers 7

    .prologue
    const/high16 v3, 0x3f80

    .line 282
    iget-object v4, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v4}, Lcom/cooliris/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_c

    move v2, v3

    .line 293
    :cond_b
    :goto_b
    return v2

    .line 286
    :cond_c
    iget-object v4, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v4}, Lcom/cooliris/media/RotateBitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/cooliris/media/ImageViewTouchBase;->mThisWidth:I

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 287
    .local v1, fw:F
    iget-object v4, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v4}, Lcom/cooliris/media/RotateBitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/cooliris/media/ImageViewTouchBase;->mThisHeight:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 289
    .local v0, fh:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x4080

    mul-float v2, v4, v5

    .line 290
    .local v2, maxZoom:F
    cmpg-float v4, v2, v3

    if-gez v4, :cond_b

    move v2, v3

    .line 291
    goto :goto_b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v1, 0x3f80

    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 97
    invoke-virtual {p0, v1}, Lcom/cooliris/media/ImageViewTouchBase;->zoomTo(F)V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 78
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 79
    sub-int v1, p4, p2

    iput v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mThisWidth:I

    .line 80
    sub-int v1, p5, p3

    iput v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mThisHeight:I

    .line 81
    iget-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 82
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_15

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 84
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 86
    :cond_15
    iget-object v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    invoke-virtual {v1}, Lcom/cooliris/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 87
    iget-object v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBitmapDisplayed:Lcom/cooliris/media/RotateBitmap;

    iget-object v2, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/cooliris/media/ImageViewTouchBase;->getProperBaseMatrix(Lcom/cooliris/media/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 88
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cooliris/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 90
    :cond_2b
    return-void
.end method

.method protected panBy(FF)V
    .registers 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/cooliris/media/ImageViewTouchBase;->postTranslate(FF)V

    .line 386
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 387
    return-void
.end method

.method protected postTranslate(FF)V
    .registers 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 382
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cooliris/media/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 112
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 139
    new-instance v0, Lcom/cooliris/media/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/cooliris/media/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/cooliris/media/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/cooliris/media/RotateBitmap;Z)V

    .line 140
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/cooliris/media/RotateBitmap;Z)V
    .registers 6
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 145
    .local v0, viewWidth:I
    if-gtz v0, :cond_e

    .line 146
    new-instance v1, Lcom/cooliris/media/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/cooliris/media/ImageViewTouchBase$1;-><init>(Lcom/cooliris/media/ImageViewTouchBase;Lcom/cooliris/media/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 167
    :goto_d
    return-void

    .line 154
    :cond_e
    invoke-virtual {p1}, Lcom/cooliris/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 155
    iget-object v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/cooliris/media/ImageViewTouchBase;->getProperBaseMatrix(Lcom/cooliris/media/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 156
    invoke-virtual {p1}, Lcom/cooliris/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cooliris/media/RotateBitmap;->getRotation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/cooliris/media/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 162
    :goto_24
    if-eqz p2, :cond_2b

    .line 163
    iget-object v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 165
    :cond_2b
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cooliris/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 166
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_d

    .line 158
    :cond_39
    iget-object v1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/cooliris/media/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_24
.end method

.method protected zoomTo(F)V
    .registers 6
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 330
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 331
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 333
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1}, Lcom/cooliris/media/ImageViewTouchBase;->zoomTo(FFF)V

    .line 334
    return-void
.end method

.method protected zoomTo(FFF)V
    .registers 8
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 297
    iget v2, p0, Lcom/cooliris/media/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_9

    .line 298
    iget p1, p0, Lcom/cooliris/media/ImageViewTouchBase;->mMaxZoom:F

    .line 301
    :cond_9
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 302
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 304
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/cooliris/media/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 305
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cooliris/media/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 306
    invoke-virtual {p0, v3, v3}, Lcom/cooliris/media/ImageViewTouchBase;->center(ZZ)V

    .line 307
    return-void
.end method

.method protected zoomTo(FFFF)V
    .registers 15
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 312
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/cooliris/media/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 313
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 315
    .local v3, startTime:J
    iget-object v9, p0, Lcom/cooliris/media/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/cooliris/media/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/cooliris/media/ImageViewTouchBase$2;-><init>(Lcom/cooliris/media/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method
