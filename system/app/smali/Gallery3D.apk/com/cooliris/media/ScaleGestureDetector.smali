.class public Lcom/cooliris/media/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# instance fields
.field private mBottomFingerBeginX:F

.field private mBottomFingerBeginY:F

.field private mBottomFingerCurrX:F

.field private mBottomFingerCurrY:F

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private mListener:Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;

.field private mPointerOneUp:Z

.field private mPointerTwoUp:Z

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevFocusX:F

.field private mPrevFocusY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mScaleFactor:F

.field private mTimeDelta:J

.field private mTopFingerBeginX:F

.field private mTopFingerBeginY:F

.field private mTopFingerCurrX:F

.field private mTopFingerCurrY:F

.field private mTopFingerIsPointer1:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mListener:Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;

    .line 187
    return-void
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    .line 347
    iget-object v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 348
    iput-object v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 350
    :cond_c
    iget-object v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_17

    .line 351
    iget-object v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 352
    iput-object v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 354
    :cond_17
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .registers 20
    .parameter "curr"

    .prologue
    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v14, :cond_d

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 303
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 305
    const/high16 v14, -0x4080

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrLen:F

    .line 306
    const/high16 v14, -0x4080

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevLen:F

    .line 307
    const/high16 v14, -0x4080

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mScaleFactor:F

    .line 309
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 311
    .local v7, prev:Landroid/view/MotionEvent;
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 312
    .local v10, px0:F
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 313
    .local v12, py0:F
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 314
    .local v11, px1:F
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    .line 315
    .local v13, py1:F
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 316
    .local v3, cx0:F
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 317
    .local v5, cy0:F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 318
    .local v4, cx1:F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 320
    .local v6, cy1:F
    sub-float v8, v11, v10

    .line 321
    .local v8, pvx:F
    sub-float v9, v13, v12

    .line 322
    .local v9, pvy:F
    sub-float v1, v4, v3

    .line 323
    .local v1, cvx:F
    sub-float v2, v6, v5

    .line 324
    .local v2, cvy:F
    move-object/from16 v0, p0

    iput v8, v0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 325
    move-object/from16 v0, p0

    iput v9, v0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 326
    move-object/from16 v0, p0

    iput v1, v0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 327
    move-object/from16 v0, p0

    iput v2, v0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 329
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevFocusX:F

    .line 330
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mFocusY:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevFocusY:F

    .line 332
    const/high16 v14, 0x3f00

    mul-float/2addr v14, v1

    add-float/2addr v14, v3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mFocusX:F

    .line 333
    const/high16 v14, 0x3f00

    mul-float/2addr v14, v2

    add-float/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mFocusY:F

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mTimeDelta:J

    .line 335
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrPressure:F

    .line 336
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevPressure:F

    .line 339
    move-object/from16 v0, p0

    iput v3, v0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerCurrX:F

    .line 340
    move-object/from16 v0, p0

    iput v5, v0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerCurrY:F

    .line 341
    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerCurrX:F

    .line 342
    move-object/from16 v0, p0

    iput v6, v0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerCurrY:F

    .line 343
    return-void
.end method


# virtual methods
.method public endGesture()V
    .registers 2

    .prologue
    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mGestureInProgress:Z

    .line 504
    return-void
.end method

.method public getBottomFingerDeltaX()F
    .registers 3

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerCurrX:F

    iget v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerBeginX:F

    sub-float/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerCurrX:F

    iget v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerBeginX:F

    sub-float/2addr v0, v1

    goto :goto_9
.end method

.method public getBottomFingerDeltaY()F
    .registers 3

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerCurrY:F

    iget v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerBeginY:F

    sub-float/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerCurrY:F

    iget v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerBeginY:F

    sub-float/2addr v0, v1

    goto :goto_9
.end method

.method public getCurrentSpan()F
    .registers 5

    .prologue
    .line 410
    iget v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_19

    .line 411
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 412
    .local v0, cvx:F
    iget v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 413
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrLen:F

    .line 415
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_19
    iget v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getFocusX()F
    .registers 2

    .prologue
    .line 386
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .registers 2

    .prologue
    .line 400
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPrevFocusX()F
    .registers 2

    .prologue
    .line 368
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevFocusX:F

    return v0
.end method

.method public getPrevFocusY()F
    .registers 2

    .prologue
    .line 372
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .registers 5

    .prologue
    .line 425
    iget v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_19

    .line 426
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 427
    .local v0, pvx:F
    iget v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 428
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevLen:F

    .line 430
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_19
    iget v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getScaleFactor()F
    .registers 3

    .prologue
    .line 441
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 442
    invoke-virtual {p0}, Lcom/cooliris/media/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Lcom/cooliris/media/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mScaleFactor:F

    .line 444
    :cond_13
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTopFingerDeltaX()F
    .registers 3

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerCurrX:F

    iget v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerBeginX:F

    sub-float/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerCurrX:F

    iget v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerBeginX:F

    sub-float/2addr v0, v1

    goto :goto_9
.end method

.method public getTopFingerDeltaY()F
    .registers 3

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerCurrY:F

    iget v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerBeginY:F

    sub-float/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerCurrY:F

    iget v1, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerBeginY:F

    sub-float/2addr v0, v1

    goto :goto_9
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 192
    .local v0, action:I
    const/4 v1, 0x1

    .line 194
    .local v1, handled:Z
    iget-boolean v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mGestureInProgress:Z

    if-nez v5, :cond_6b

    .line 202
    const/4 v5, 0x5

    if-eq v0, v5, :cond_12

    const/16 v5, 0x105

    if-ne v0, v5, :cond_67

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_67

    .line 205
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerBeginX:F

    .line 206
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerBeginY:F

    .line 207
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerBeginX:F

    .line 208
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerBeginY:F

    .line 210
    iget v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerBeginX:F

    iput v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerCurrX:F

    .line 211
    iget v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerBeginY:F

    iput v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerCurrY:F

    .line 212
    iget v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerBeginX:F

    iput v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerCurrX:F

    .line 213
    iget v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerBeginY:F

    iput v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerCurrY:F

    .line 214
    iput-boolean v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerOneUp:Z

    .line 215
    iput-boolean v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerTwoUp:Z

    .line 218
    invoke-direct {p0}, Lcom/cooliris/media/ScaleGestureDetector;->reset()V

    .line 221
    iget v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerBeginY:F

    iget v6, p0, Lcom/cooliris/media/ScaleGestureDetector;->mBottomFingerBeginY:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_68

    .line 222
    iput-boolean v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    .line 227
    :goto_52
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 228
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTimeDelta:J

    .line 230
    invoke-direct {p0, p1}, Lcom/cooliris/media/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 231
    iget-object v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mListener:Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, p0}, Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/cooliris/media/ScaleGestureDetector;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mGestureInProgress:Z

    .line 296
    :cond_67
    :goto_67
    return v1

    .line 224
    :cond_68
    iput-boolean v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mTopFingerIsPointer1:Z

    goto :goto_52

    .line 235
    :cond_6b
    sparse-switch v0, :sswitch_data_e2

    goto :goto_67

    .line 237
    :sswitch_6f
    iput-boolean v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerOneUp:Z

    .line 238
    iput-boolean v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerTwoUp:Z

    .line 241
    :sswitch_73
    iget-boolean v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerOneUp:Z

    if-eqz v5, :cond_79

    .line 242
    iput-boolean v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerTwoUp:Z

    .line 244
    :cond_79
    iput-boolean v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerOneUp:Z

    .line 247
    :sswitch_7b
    const/16 v5, 0x106

    if-ne v0, v5, :cond_87

    .line 248
    iget-boolean v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerTwoUp:Z

    if-ne v5, v2, :cond_85

    .line 249
    iput-boolean v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerOneUp:Z

    .line 251
    :cond_85
    iput-boolean v2, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerTwoUp:Z

    .line 254
    :cond_87
    iget-boolean v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerOneUp:Z

    if-nez v5, :cond_8f

    iget-boolean v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPointerTwoUp:Z

    if-eqz v5, :cond_67

    .line 255
    :cond_8f
    invoke-direct {p0, p1}, Lcom/cooliris/media/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 258
    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_b1

    .line 260
    .local v2, id:I
    :goto_9a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mFocusX:F

    .line 261
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iput v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mFocusY:F

    .line 263
    iget-object v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mListener:Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v5, p0, v4}, Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/cooliris/media/ScaleGestureDetector;Z)V

    .line 264
    iput-boolean v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mGestureInProgress:Z

    .line 266
    invoke-direct {p0}, Lcom/cooliris/media/ScaleGestureDetector;->reset()V

    goto :goto_67

    .end local v2           #id:I
    :cond_b1
    move v2, v4

    .line 258
    goto :goto_9a

    .line 271
    :sswitch_b3
    iget-object v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mListener:Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v5, p0, v2}, Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/cooliris/media/ScaleGestureDetector;Z)V

    .line 272
    iput-boolean v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mGestureInProgress:Z

    .line 274
    invoke-direct {p0}, Lcom/cooliris/media/ScaleGestureDetector;->reset()V

    goto :goto_67

    .line 278
    :sswitch_be
    invoke-direct {p0, p1}, Lcom/cooliris/media/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 283
    iget v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mCurrPressure:F

    iget v5, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevPressure:F

    div-float/2addr v4, v5

    const v5, 0x3f2b851f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_67

    .line 284
    iget-object v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mListener:Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, p0}, Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/cooliris/media/ScaleGestureDetector;)Z

    move-result v3

    .line 286
    .local v3, updatePrevious:Z
    if-eqz v3, :cond_67

    .line 287
    iget-object v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 288
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/cooliris/media/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto :goto_67

    .line 235
    nop

    :sswitch_data_e2
    .sparse-switch
        0x1 -> :sswitch_6f
        0x2 -> :sswitch_be
        0x3 -> :sswitch_b3
        0x6 -> :sswitch_73
        0x106 -> :sswitch_7b
    .end sparse-switch
.end method
