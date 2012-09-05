.class public Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
.source "TwAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslateItemAnimation"
.end annotation


# static fields
.field static final INVALID_TIME:J = 0x7fffffffffffffffL

.field static final TRANSLATE_SPEED:F = 0.6f


# instance fields
.field mAnchorDeltaX:I

.field mAnchorDeltaY:I

.field mAnchorX:I

.field mAnchorY:I

.field private mCache:Landroid/graphics/Bitmap;

.field mDelayTime:I

.field mDeltaX:I

.field mDeltaY:I

.field mDuration:I

.field mOffsetXDest:I

.field mOffsetYDest:I

.field private mPaint:Landroid/graphics/Paint;

.field mProgress:F

.field private mProgressWithoutDelay:F

.field mStartTime:J

.field mTmpRect:Landroid/graphics/Rect;

.field mXSpeedFactor:F

.field mYSpeedFactor:F


# direct methods
.method public constructor <init>(Z)V
    .registers 4
    .parameter "retainOnFinish"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 243
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    .line 244
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    .line 245
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    .line 246
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mXSpeedFactor:F

    .line 247
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mYSpeedFactor:F

    .line 248
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    .line 249
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public computeAnimation(J)V
    .registers 9
    .parameter "curUpTime"

    .prologue
    const/high16 v5, 0x3f80

    .line 386
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mStartTime:J

    sub-long v0, p1, v2

    .line 387
    .local v0, elapsed:J
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    if-lez v2, :cond_3c

    .line 388
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_2c

    .line 389
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 395
    :goto_14
    long-to-float v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 396
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_23

    .line 397
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 398
    :cond_23
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2b

    .line 399
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 400
    :cond_2b
    return-void

    .line 391
    :cond_2c
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_14

    .line 393
    :cond_3c
    long-to-float v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    goto :goto_14
.end method

.method public createDrawingCache(Landroid/view/View;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 403
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_c

    .line 404
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 405
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    .line 407
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    .line 408
    .local v0, cacheEnable:Z
    if-nez v0, :cond_39

    .line 409
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 412
    :goto_16
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_20

    move-object v2, p1

    .line 413
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onPreDraw()Z

    .line 414
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 416
    .local v1, tempCache:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2f

    .line 417
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    .line 418
    :cond_2f
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 419
    if-nez v0, :cond_38

    .line 420
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 421
    :cond_38
    return-void

    .line 411
    .end local v1           #tempCache:Landroid/graphics/Bitmap;
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_16
.end method

.method public delay(I)V
    .registers 3
    .parameter "timeInMillisec"

    .prologue
    .line 301
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    .line 302
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .registers 8
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/high16 v4, 0x3f80

    .line 305
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 306
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_f

    .line 307
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    .line 308
    :cond_f
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_17

    .line 309
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    .line 310
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 311
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorDeltaX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorDeltaY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 316
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_73

    .line 317
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 318
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 322
    :goto_6f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 323
    return-void

    .line 320
    :cond_73
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_6f
.end method

.method public getDestOffsetX()I
    .registers 2

    .prologue
    .line 266
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    return v0
.end method

.method public getDestOffsetY()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    return v0
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 432
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .registers 2

    .prologue
    .line 440
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    return v0
.end method

.method public getProgressWithoutDelay()F
    .registers 2

    .prologue
    .line 444
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgressWithoutDelay:F

    return v0
.end method

.method public getTransformation(Landroid/view/animation/Transformation;)V
    .registers 8
    .parameter "outTransform"

    .prologue
    const/high16 v5, 0x3f80

    .line 451
    sget v1, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p1, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 452
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 453
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 454
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mProgress:F

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 456
    return-void
.end method

.method public isFinished()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 353
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    if-nez v4, :cond_15

    .line 354
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDelayTime:I

    if-nez v4, :cond_13

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    if-nez v4, :cond_13

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    if-nez v4, :cond_13

    .line 356
    :cond_12
    :goto_12
    return v2

    :cond_13
    move v2, v3

    .line 354
    goto :goto_12

    .line 355
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 356
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mStartTime:J

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-lez v4, :cond_12

    move v2, v3

    goto :goto_12
.end method

.method public move(IIII)V
    .registers 5
    .parameter "anchorX"
    .parameter "anchorDeltaX"
    .parameter "anchorY"
    .parameter "anchorDeltaY"

    .prologue
    .line 360
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorX:I

    .line 361
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorY:I

    .line 362
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorDeltaX:I

    .line 363
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mAnchorDeltaY:I

    .line 364
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .registers 2
    .parameter "p"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mPaint:Landroid/graphics/Paint;

    .line 368
    return-void
.end method

.method public setXSpeedFactor(F)V
    .registers 3
    .parameter "xFactor"

    .prologue
    .line 332
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 333
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mXSpeedFactor:F

    .line 334
    :cond_7
    return-void
.end method

.method public setYSpeedFactor(F)V
    .registers 3
    .parameter "yFactor"

    .prologue
    .line 343
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 344
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mYSpeedFactor:F

    .line 345
    :cond_7
    return-void
.end method

.method public start(JI)V
    .registers 5
    .parameter "startTime"
    .parameter "duration"

    .prologue
    .line 371
    iput-wide p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mStartTime:J

    .line 372
    if-nez p3, :cond_9

    .line 373
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    .line 376
    :goto_8
    return-void

    .line 375
    :cond_9
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDuration:I

    goto :goto_8
.end method

.method public translate(IIII)V
    .registers 7
    .parameter "startOffsetX"
    .parameter "deltaX"
    .parameter "startOffsetY"
    .parameter "deltaY"

    .prologue
    .line 288
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    add-int v1, p1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetXDest:I

    .line 289
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaX:I

    .line 290
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    add-int v1, p3, p4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mOffsetYDest:I

    .line 291
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$TranslateItemAnimation;->mDeltaY:I

    .line 292
    return-void
.end method
