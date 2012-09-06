.class public Lcom/google/android/apps/translate/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private mBottomSlopEdge:F

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private final mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mRightSlopEdge:F

.field private mScaleFactor:F

.field private mSloppyGesture:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 175
    .local v0, config:Landroid/view/ViewConfiguration;
    iput-object p1, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mEdgeSlop:F

    .line 178
    return-void
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .registers 14
    .parameter "ev"
    .parameter "otherActiveId"
    .parameter "oldIndex"

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 471
    .local v5, pointerCount:I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 472
    .local v4, otherActiveIndex:I
    const/4 v3, -0x1

    .line 475
    .local v3, newActiveIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v5, :cond_2f

    .line 476
    if-eq v2, p3, :cond_30

    if-eq v2, v4, :cond_30

    .line 477
    iget v1, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mEdgeSlop:F

    .line 478
    .local v1, edgeSlop:F
    iget v6, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mRightSlopEdge:F

    .line 479
    .local v6, rightSlop:F
    iget v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 480
    .local v0, bottomSlop:F
    invoke-static {p1, v2}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 481
    .local v7, x:F
    invoke-static {p1, v2}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 482
    .local v8, y:F
    cmpl-float v9, v7, v1

    if-ltz v9, :cond_30

    cmpl-float v9, v8, v1

    if-ltz v9, :cond_30

    cmpg-float v9, v7, v6

    if-gtz v9, :cond_30

    cmpg-float v9, v8, v0

    if-gtz v9, :cond_30

    .line 483
    move v3, v2

    .line 489
    .end local v0           #bottomSlop:F
    .end local v1           #edgeSlop:F
    .end local v6           #rightSlop:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_2f
    return v3

    .line 475
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .registers 5
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 496
    if-gez p1, :cond_4

    const/4 v1, 0x1

    .line 499
    :goto_3
    return v1

    .line 497
    :cond_4
    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    goto :goto_3

    .line 498
    :cond_b
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v0, v1, v2

    .line 499
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_3
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .registers 5
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 506
    if-gez p1, :cond_4

    const/4 v1, 0x1

    .line 509
    :goto_3
    return v1

    .line 507
    :cond_4
    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_3

    .line 508
    :cond_b
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v0, v1, v2

    .line 509
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_3
.end method

.method private reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 555
    iget-object v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_e

    .line 556
    iget-object v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 557
    iput-object v3, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 559
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_19

    .line 560
    iget-object v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 561
    iput-object v3, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 563
    :cond_19
    iput-boolean v2, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mSloppyGesture:Z

    .line 564
    iput-boolean v2, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mGestureInProgress:Z

    .line 565
    iput v1, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    .line 566
    iput v1, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    .line 567
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .registers 26
    .parameter "curr"

    .prologue
    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 516
    :cond_11
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 518
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrLen:F

    .line 519
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevLen:F

    .line 520
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mScaleFactor:F

    .line 522
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 524
    .local v11, prev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 525
    .local v12, prevIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 526
    .local v13, prevIndex1:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 527
    .local v3, currIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 529
    .local v4, currIndex1:I
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 530
    .local v16, px0:F
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 531
    .local v18, py0:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 532
    .local v17, px1:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 533
    .local v19, py1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 534
    .local v7, cx0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 535
    .local v9, cy0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 536
    .local v8, cx1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 538
    .local v10, cy1:F
    sub-float v14, v17, v16

    .line 539
    .local v14, pvx:F
    sub-float v15, v19, v18

    .line 540
    .local v15, pvy:F
    sub-float v5, v8, v7

    .line 541
    .local v5, cvx:F
    sub-float v6, v10, v9

    .line 542
    .local v6, cvy:F
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 543
    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 544
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 545
    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 547
    const/high16 v20, 0x3f00

    mul-float v20, v20, v5

    add-float v20, v20, v7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusX:F

    .line 548
    const/high16 v20, 0x3f00

    mul-float v20, v20, v6

    add-float v20, v20, v9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusY:F

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/apps/translate/ScaleGestureDetector;->mTimeDelta:J

    .line 550
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrPressure:F

    .line 551
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevPressure:F

    .line 552
    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .registers 5

    .prologue
    .line 614
    iget v2, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_17

    .line 615
    iget v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 616
    .local v0, cvx:F
    iget v1, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 617
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrLen:F

    .line 619
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_17
    iget v2, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getCurrentSpanX()F
    .registers 2

    .prologue
    .line 629
    iget v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .registers 2

    .prologue
    .line 639
    iget v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .registers 2

    .prologue
    .line 589
    iget v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .registers 2

    .prologue
    .line 604
    iget v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .registers 5

    .prologue
    .line 649
    iget v2, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_17

    .line 650
    iget v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 651
    .local v0, pvx:F
    iget v1, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 652
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevLen:F

    .line 654
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_17
    iget v2, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getPreviousSpanX()F
    .registers 2

    .prologue
    .line 664
    iget v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .registers 2

    .prologue
    .line 674
    iget v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .registers 3

    .prologue
    .line 685
    iget v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 686
    invoke-virtual {p0}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mScaleFactor:F

    .line 688
    :cond_13
    iget v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTimeDelta()J
    .registers 3

    .prologue
    .line 698
    iget-wide v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .registers 2

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 31
    .parameter "event"

    .prologue
    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 182
    .local v3, action:I
    const/4 v10, 0x1

    .line 184
    .local v10, handled:Z
    if-nez v3, :cond_a

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/translate/ScaleGestureDetector;->reset()V

    .line 188
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v27, v0

    if-nez v27, :cond_3bb

    .line 189
    packed-switch v3, :pswitch_data_622

    .line 464
    :cond_15
    :goto_15
    :pswitch_15
    return v10

    .line 191
    :pswitch_16
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    .line 192
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActive0MostRecent:Z

    goto :goto_15

    .line 197
    :pswitch_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/translate/ScaleGestureDetector;->reset()V

    goto :goto_15

    .line 204
    :pswitch_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 205
    .local v14, metrics:Landroid/util/DisplayMetrics;
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mRightSlopEdge:F

    .line 206
    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mEdgeSlop:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 209
    :cond_80
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 210
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/apps/translate/ScaleGestureDetector;->mTimeDelta:J

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    .line 213
    .local v13, index1:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 214
    .local v12, index0:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    .line 215
    if-ltz v12, :cond_b4

    if-ne v12, v13, :cond_ce

    .line 217
    :cond_b4
    if-ne v12, v13, :cond_141

    const/16 v27, -0x1

    :goto_b8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/apps/translate/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 218
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    .line 220
    :cond_ce
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 222
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/translate/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 228
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mEdgeSlop:F

    .line 229
    .local v8, edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v21, v0

    .line 230
    .local v21, rightSlop:F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 231
    .local v7, bottomSlop:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 232
    .local v23, x0:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 233
    .local v25, y0:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 234
    .local v24, x1:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 236
    .local v26, y1:F
    cmpg-float v27, v23, v8

    if-ltz v27, :cond_10f

    cmpg-float v27, v25, v8

    if-ltz v27, :cond_10f

    cmpl-float v27, v23, v21

    if-gtz v27, :cond_10f

    cmpl-float v27, v25, v7

    if-lez v27, :cond_149

    :cond_10f
    const/16 v18, 0x1

    .line 238
    .local v18, p0sloppy:Z
    :goto_111
    cmpg-float v27, v24, v8

    if-ltz v27, :cond_121

    cmpg-float v27, v26, v8

    if-ltz v27, :cond_121

    cmpl-float v27, v24, v21

    if-gtz v27, :cond_121

    cmpl-float v27, v26, v7

    if-lez v27, :cond_14c

    :cond_121
    const/16 v19, 0x1

    .line 241
    .local v19, p1sloppy:Z
    :goto_123
    if-eqz v18, :cond_14f

    if-eqz v19, :cond_14f

    .line 242
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusX:F

    .line 243
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusY:F

    .line 244
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_15

    .line 217
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :cond_141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    goto/16 :goto_b8

    .line 236
    .restart local v7       #bottomSlop:F
    .restart local v8       #edgeSlop:F
    .restart local v21       #rightSlop:F
    .restart local v23       #x0:F
    .restart local v24       #x1:F
    .restart local v25       #y0:F
    .restart local v26       #y1:F
    :cond_149
    const/16 v18, 0x0

    goto :goto_111

    .line 238
    .restart local v18       #p0sloppy:Z
    :cond_14c
    const/16 v19, 0x0

    goto :goto_123

    .line 245
    .restart local v19       #p1sloppy:Z
    :cond_14f
    if-eqz v18, :cond_173

    .line 246
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusX:F

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusY:F

    .line 248
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_15

    .line 249
    :cond_173
    if-eqz v19, :cond_197

    .line 250
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusX:F

    .line 251
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusY:F

    .line 252
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_15

    .line 254
    :cond_197
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mSloppyGesture:Z

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/google/android/apps/translate/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_15

    .line 261
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v12           #index0:I
    .end local v13           #index1:I
    .end local v14           #metrics:Landroid/util/DisplayMetrics;
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :pswitch_1b5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 263
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mEdgeSlop:F

    .line 264
    .restart local v8       #edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v21, v0

    .line 265
    .restart local v21       #rightSlop:F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mBottomSlopEdge:F

    .line 266
    .restart local v7       #bottomSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 267
    .restart local v12       #index0:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 269
    .restart local v13       #index1:I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 270
    .restart local v23       #x0:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 271
    .restart local v25       #y0:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 272
    .restart local v24       #x1:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 274
    .restart local v26       #y1:F
    cmpg-float v27, v23, v8

    if-ltz v27, :cond_20f

    cmpg-float v27, v25, v8

    if-ltz v27, :cond_20f

    cmpl-float v27, v23, v21

    if-gtz v27, :cond_20f

    cmpl-float v27, v25, v7

    if-lez v27, :cond_297

    :cond_20f
    const/16 v18, 0x1

    .line 276
    .restart local v18       #p0sloppy:Z
    :goto_211
    cmpg-float v27, v24, v8

    if-ltz v27, :cond_221

    cmpg-float v27, v26, v8

    if-ltz v27, :cond_221

    cmpl-float v27, v24, v21

    if-gtz v27, :cond_221

    cmpl-float v27, v26, v7

    if-lez v27, :cond_29b

    :cond_221
    const/16 v19, 0x1

    .line 279
    .restart local v19       #p1sloppy:Z
    :goto_223
    if-eqz v18, :cond_252

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/apps/translate/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v11

    .line 282
    .local v11, index:I
    if-ltz v11, :cond_252

    .line 283
    move v12, v11

    .line 284
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    .line 285
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 286
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 287
    const/16 v18, 0x0

    .line 291
    .end local v11           #index:I
    :cond_252
    if-eqz v19, :cond_281

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v13}, Lcom/google/android/apps/translate/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v11

    .line 294
    .restart local v11       #index:I
    if-ltz v11, :cond_281

    .line 295
    move v13, v11

    .line 296
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    .line 297
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 298
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/google/android/apps/translate/ScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 299
    const/16 v19, 0x0

    .line 303
    .end local v11           #index:I
    :cond_281
    if-eqz v18, :cond_29e

    if-eqz v19, :cond_29e

    .line 304
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusX:F

    .line 305
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_15

    .line 274
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    :cond_297
    const/16 v18, 0x0

    goto/16 :goto_211

    .line 276
    .restart local v18       #p0sloppy:Z
    :cond_29b
    const/16 v19, 0x0

    goto :goto_223

    .line 306
    .restart local v19       #p1sloppy:Z
    :cond_29e
    if-eqz v18, :cond_2ba

    .line 307
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusX:F

    .line 308
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_15

    .line 309
    :cond_2ba
    if-eqz v19, :cond_2d6

    .line 310
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusX:F

    .line 311
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_15

    .line 313
    :cond_2d6
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mSloppyGesture:Z

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/google/android/apps/translate/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_15

    .line 320
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v12           #index0:I
    .end local v13           #index1:I
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :pswitch_2f4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 322
    .local v20, pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 323
    .local v5, actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 325
    .local v4, actionId:I
    const/16 v27, 0x2

    move/from16 v0, v20

    move/from16 v1, v27

    if-le v0, v1, :cond_366

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_33c

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Lcom/google/android/apps/translate/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 328
    .local v15, newIndex:I
    if-ltz v15, :cond_15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_15

    .line 329
    .end local v15           #newIndex:I
    :cond_33c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_15

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Lcom/google/android/apps/translate/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 331
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    goto/16 :goto_15

    .line 335
    .end local v15           #newIndex:I
    :cond_366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_3b4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    :goto_376
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 337
    .restart local v11       #index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    .line 339
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 340
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    .line 341
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusX:F

    .line 342
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusY:F

    goto/16 :goto_15

    .line 335
    .end local v11           #index:I
    :cond_3b4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    goto :goto_376

    .line 349
    .end local v4           #actionId:I
    .end local v5           #actionIndex:I
    .end local v20           #pointerCount:I
    :cond_3bb
    packed-switch v3, :pswitch_data_634

    :pswitch_3be
    goto/16 :goto_15

    .line 443
    :pswitch_3c0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/translate/ScaleGestureDetector;->reset()V

    goto/16 :goto_15

    .line 352
    :pswitch_3c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/google/android/apps/translate/ScaleGestureDetector;)V

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v16, v0

    .line 354
    .local v16, oldActive0:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v17, v0

    .line 355
    .local v17, oldActive1:I
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/translate/ScaleGestureDetector;->reset()V

    .line 357
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActive0MostRecent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_47f

    .end local v16           #oldActive0:I
    :goto_3f3
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    .line 360
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 363
    .restart local v12       #index0:I
    if-ltz v12, :cond_435

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_466

    .line 365
    :cond_435
    const-string v27, "ScaleGestureDetector"

    const-string v28, "Got  with bad state while a gesture was in progress. Did you forget to pass an event to ScaleGestureDetector#onTouchEvent?"

    invoke-static/range {v27 .. v28}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_483

    const/16 v27, -0x1

    :goto_450
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/apps/translate/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 371
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    .line 374
    :cond_466
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/translate/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/google/android/apps/translate/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_15

    .end local v12           #index0:I
    .restart local v16       #oldActive0:I
    :cond_47f
    move/from16 v16, v17

    .line 358
    goto/16 :goto_3f3

    .line 369
    .end local v16           #oldActive0:I
    .restart local v12       #index0:I
    :cond_483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    goto :goto_450

    .line 381
    .end local v12           #index0:I
    .end local v17           #oldActive1:I
    :pswitch_48a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 382
    .restart local v20       #pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 383
    .restart local v5       #actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 385
    .restart local v4       #actionId:I
    const/4 v9, 0x0

    .line 386
    .local v9, gestureEnded:Z
    const/16 v27, 0x2

    move/from16 v0, v20

    move/from16 v1, v27

    if-le v0, v1, :cond_5c9

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_566

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Lcom/google/android/apps/translate/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 389
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_564

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/google/android/apps/translate/ScaleGestureDetector;)V

    .line 391
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    .line 392
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 393
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 394
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/translate/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/google/android/apps/translate/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mGestureInProgress:Z

    .line 412
    .end local v15           #newIndex:I
    :cond_4ff
    :goto_4ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 413
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 414
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/translate/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 419
    :goto_515
    if-eqz v9, :cond_15

    .line 421
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/translate/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_5cc

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    .line 425
    .local v6, activeId:I
    :goto_528
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 426
    .restart local v11       #index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusX:F

    .line 427
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mFocusY:F

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/google/android/apps/translate/ScaleGestureDetector;)V

    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/translate/ScaleGestureDetector;->reset()V

    .line 431
    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    .line 432
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActive0MostRecent:Z

    goto/16 :goto_15

    .line 397
    .end local v6           #activeId:I
    .end local v11           #index:I
    .restart local v15       #newIndex:I
    :cond_564
    const/4 v9, 0x1

    goto :goto_4ff

    .line 399
    .end local v15           #newIndex:I
    :cond_566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_4ff

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Lcom/google/android/apps/translate/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 401
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_5c6

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/google/android/apps/translate/ScaleGestureDetector;)V

    .line 403
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId1:I

    .line 404
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 405
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 406
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/translate/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/google/android/apps/translate/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_4ff

    .line 409
    :cond_5c6
    const/4 v9, 0x1

    goto/16 :goto_4ff

    .line 416
    .end local v15           #newIndex:I
    :cond_5c9
    const/4 v9, 0x1

    goto/16 :goto_515

    .line 424
    :cond_5cc
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_528

    .line 438
    .end local v4           #actionId:I
    .end local v5           #actionIndex:I
    .end local v9           #gestureEnded:Z
    .end local v20           #pointerCount:I
    :pswitch_5d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/google/android/apps/translate/ScaleGestureDetector;)V

    .line 439
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/translate/ScaleGestureDetector;->reset()V

    goto/16 :goto_15

    .line 447
    :pswitch_5e4
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/translate/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mCurrPressure:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevPressure:F

    move/from16 v28, v0

    div-float v27, v27, v28

    const v28, 0x3f2b851f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_15

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mListener:Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/google/android/apps/translate/ScaleGestureDetector;)Z

    move-result v22

    .line 455
    .local v22, updatePrevious:Z
    if-eqz v22, :cond_15

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 457
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/translate/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_15

    .line 189
    nop

    :pswitch_data_622
    .packed-switch 0x0
        :pswitch_16
        :pswitch_2f
        :pswitch_1b5
        :pswitch_15
        :pswitch_15
        :pswitch_33
        :pswitch_2f4
    .end packed-switch

    .line 349
    :pswitch_data_634
    .packed-switch 0x1
        :pswitch_3c0
        :pswitch_5e4
        :pswitch_5d2
        :pswitch_3be
        :pswitch_3c5
        :pswitch_48a
    .end packed-switch
.end method
