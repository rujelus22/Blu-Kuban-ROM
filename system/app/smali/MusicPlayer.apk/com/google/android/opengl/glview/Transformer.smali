.class public Lcom/google/android/opengl/glview/Transformer;
.super Lcom/google/android/opengl/glview/GLView;
.source "Transformer.java"


# instance fields
.field private mAnimatingOffset:Z

.field private mBiasX:F

.field private mBiasY:F

.field private mBottomMargin:F

.field private mBounceBack:Z

.field private mChild:Lcom/google/android/opengl/glview/GLView;

.field private mFlingX:F

.field private mFlingY:F

.field private mLeftMargin:F

.field private mMaxOverScrollX:F

.field private mMaxOverScrollY:F

.field private mMinimumSizeH:F

.field private mMinimumSizeW:F

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOverscrolling:Z

.field private mOwner:Ljava/lang/Thread;

.field private mRightMagin:F

.field private mTargetOffsetX:F

.field private mTargetOffsetY:F

.field private mTiltingOverscroll:Z

.field private mTopMargin:F

.field private mVelocityX:F

.field private mVelocityY:F

.field private mVisibleMarginBottom:F

.field private mVisibleMarginLeft:F

.field private mVisibleMarginRight:F

.field private mVisibleMarginTop:F


# direct methods
.method public constructor <init>(IFF)V
    .registers 7
    .parameter "id"
    .parameter "minSizeW"
    .parameter "minSizeH"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 24
    iput-boolean v2, p0, Lcom/google/android/opengl/glview/Transformer;->mTiltingOverscroll:Z

    .line 28
    iput-boolean v1, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    .line 45
    iput-boolean v2, p0, Lcom/google/android/opengl/glview/Transformer;->mBounceBack:Z

    .line 46
    iput-boolean v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    .line 47
    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollX:F

    .line 48
    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollY:F

    .line 49
    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mLeftMargin:F

    .line 50
    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mRightMagin:F

    .line 51
    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mTopMargin:F

    .line 52
    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mBottomMargin:F

    .line 60
    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 61
    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 67
    invoke-virtual {p0, p2, p3}, Lcom/google/android/opengl/glview/Transformer;->setMinimumSize(FF)V

    .line 68
    return-void
.end method

.method private static clampAxis(FFFFFF)F
    .registers 10
    .parameter "childPose"
    .parameter "childW"
    .parameter "w"
    .parameter "oldOffsetPose"
    .parameter "delta"
    .parameter "margin"

    .prologue
    .line 358
    const/4 v2, 0x0

    add-float v3, p0, p1

    sub-float/2addr v3, p2

    add-float/2addr v3, p5

    neg-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 359
    .local v1, offsetMin:F
    move v0, p5

    .line 360
    .local v0, offsetMax:F
    sub-float v2, p3, p4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method private clampVelocity(FF)F
    .registers 6
    .parameter "currentVelocity"
    .parameter "newVelocity"

    .prologue
    const/4 v2, 0x0

    .line 512
    cmpl-float v1, p2, v2

    if-nez v1, :cond_6

    .line 528
    .end local p1
    :goto_5
    return p1

    .line 516
    .restart local p1
    :cond_6
    mul-float v1, p1, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    move p1, p2

    .line 518
    goto :goto_5

    .line 521
    :cond_e
    const/4 v0, 0x0

    .line 522
    .local v0, velocity:F
    cmpg-float v1, p1, v2

    if-ltz v1, :cond_17

    cmpg-float v1, p2, v2

    if-gez v1, :cond_1d

    .line 523
    :cond_17
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1b
    move p1, v0

    .line 528
    goto :goto_5

    .line 525
    :cond_1d
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1b
.end method

.method private static computeMinimumScroll(FFFF)F
    .registers 8
    .parameter "parentStart"
    .parameter "parentLength"
    .parameter "childStart"
    .parameter "childLength"

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, delta:F
    add-float v2, p0, p1

    .line 300
    .local v2, parentEnd:F
    add-float v0, p2, p3

    .line 302
    .local v0, childEnd:F
    cmpg-float v3, p2, p0

    if-gez v3, :cond_17

    cmpg-float v3, v0, v2

    if-gez v3, :cond_17

    .line 303
    cmpl-float v3, p3, p1

    if-lez v3, :cond_14

    .line 305
    sub-float v1, v2, v0

    .line 319
    :cond_13
    :goto_13
    return v1

    .line 308
    :cond_14
    sub-float v1, p2, p0

    goto :goto_13

    .line 310
    :cond_17
    cmpl-float v3, v0, v2

    if-lez v3, :cond_13

    cmpl-float v3, p2, p0

    if-lez v3, :cond_13

    .line 311
    cmpl-float v3, p3, p1

    if-lez v3, :cond_26

    .line 313
    sub-float v1, p2, p0

    goto :goto_13

    .line 316
    :cond_26
    sub-float v1, v0, v2

    goto :goto_13
.end method

.method private doAnimationStep(F)V
    .registers 15
    .parameter "dt"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x3f00

    const/4 v8, 0x0

    .line 557
    iget-object v7, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-nez v7, :cond_a

    .line 646
    :cond_9
    :goto_9
    return-void

    .line 561
    :cond_a
    const/high16 v0, 0x3f00

    .line 563
    .local v0, EPSILON:F
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mLeftMargin:F

    neg-float v5, v7

    .line 564
    .local v5, minOffsetX:F
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mTopMargin:F

    neg-float v6, v7

    .line 565
    .local v6, minOffsetY:F
    iget-object v7, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v7}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_cf

    move v7, v8

    :goto_21
    neg-float v7, v7

    iget v9, p0, Lcom/google/android/opengl/glview/Transformer;->mRightMagin:F

    sub-float v3, v7, v9

    .line 567
    .local v3, maxOffsetX:F
    iget-object v7, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v7}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_dc

    move v7, v8

    :goto_35
    neg-float v7, v7

    iget v9, p0, Lcom/google/android/opengl/glview/Transformer;->mBottomMargin:F

    sub-float v4, v7, v9

    .line 570
    .local v4, maxOffsetY:F
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    iget v9, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingX:F

    invoke-direct {p0, v7, v9}, Lcom/google/android/opengl/glview/Transformer;->clampVelocity(FF)F

    move-result v7

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 571
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    iget v9, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingY:F

    invoke-direct {p0, v7, v9}, Lcom/google/android/opengl/glview/Transformer;->clampVelocity(FF)F

    move-result v7

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 574
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingX:F

    .line 575
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingY:F

    .line 578
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasX:F

    .line 579
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasY:F

    .line 581
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpl-float v7, v7, v5

    if-gtz v7, :cond_6e

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpg-float v7, v7, v3

    if-ltz v7, :cond_6e

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpl-float v7, v7, v6

    if-gtz v7, :cond_6e

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpg-float v7, v7, v4

    if-gez v7, :cond_e9

    .line 583
    :cond_6e
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    .line 584
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 585
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 590
    :goto_75
    iget-boolean v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    if-eqz v7, :cond_112

    iget-boolean v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBounceBack:Z

    if-eqz v7, :cond_112

    .line 591
    const/4 v1, 0x0

    .line 592
    .local v1, doneOverScrollingX:Z
    const/4 v2, 0x0

    .line 593
    .local v2, doneOverScrollingY:Z
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_ec

    .line 594
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    invoke-static {p1, v7, v5, v10}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFFF)F

    move-result v7

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 601
    :goto_8d
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_ff

    .line 602
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    invoke-static {p1, v7, v6, v10}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFFF)F

    move-result v7

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 611
    :goto_9b
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpl-float v7, v7, v5

    if-gtz v7, :cond_b5

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpg-float v7, v7, v3

    if-ltz v7, :cond_b5

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpl-float v7, v7, v6

    if-gtz v7, :cond_b5

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpg-float v7, v7, v4

    if-ltz v7, :cond_b5

    .line 613
    const/4 v1, 0x1

    .line 614
    const/4 v2, 0x1

    .line 617
    :cond_b5
    if-eqz v1, :cond_c5

    if-eqz v2, :cond_c5

    .line 618
    iput-boolean v11, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    .line 619
    invoke-virtual {p0, v11}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 620
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 621
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 622
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->cancelOffsetAnimation()V

    .line 624
    :cond_c5
    const/4 v7, 0x6

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->getId()I

    move-result v8

    invoke-virtual {p0, v7, v8, v12, v12}, Lcom/google/android/opengl/glview/Transformer;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 565
    .end local v1           #doneOverScrollingX:Z
    .end local v2           #doneOverScrollingY:Z
    .end local v3           #maxOffsetX:F
    .end local v4           #maxOffsetY:F
    :cond_cf
    iget-object v7, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v7}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v9

    sub-float/2addr v7, v9

    goto/16 :goto_21

    .line 567
    .restart local v3       #maxOffsetX:F
    :cond_dc
    iget-object v7, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v7}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v9

    sub-float/2addr v7, v9

    goto/16 :goto_35

    .line 587
    .restart local v4       #maxOffsetY:F
    :cond_e9
    iput-boolean v11, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    goto :goto_75

    .line 595
    .restart local v1       #doneOverScrollingX:Z
    .restart local v2       #doneOverScrollingY:Z
    :cond_ec
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpg-float v7, v7, v3

    if-gez v7, :cond_fb

    .line 596
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    invoke-static {p1, v7, v3, v10}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFFF)F

    move-result v7

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    goto :goto_8d

    .line 598
    :cond_fb
    const/4 v1, 0x1

    .line 599
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    goto :goto_8d

    .line 603
    :cond_ff
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpg-float v7, v7, v4

    if-gez v7, :cond_10e

    .line 604
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    invoke-static {p1, v7, v4, v10}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFFF)F

    move-result v7

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    goto :goto_9b

    .line 606
    :cond_10e
    const/4 v2, 0x1

    .line 607
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    goto :goto_9b

    .line 626
    .end local v1           #doneOverScrollingX:Z
    .end local v2           #doneOverScrollingY:Z
    :cond_112
    const/high16 v7, 0x4120

    invoke-direct {p0, v7}, Lcom/google/android/opengl/glview/Transformer;->isInMotion(F)Z

    move-result v7

    if-eqz v7, :cond_137

    .line 627
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Transformer;->doPhysics(F)V

    .line 628
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->cancelOffsetAnimation()V

    .line 642
    :cond_120
    :goto_120
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasX:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_12c

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasY:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_9

    .line 643
    :cond_12c
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasX:F

    neg-float v7, v7

    iget v8, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasY:F

    neg-float v8, v8

    invoke-virtual {p0, v7, v8}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    goto/16 :goto_9

    .line 629
    :cond_137
    iget-boolean v7, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    if-eqz v7, :cond_167

    .line 631
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    iget v9, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetX:F

    invoke-static {p1, v7, v9, v10}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFFF)F

    move-result v7

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 632
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    iget v9, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetY:F

    invoke-static {p1, v7, v9, v10}, Lcom/google/android/opengl/glview/FloatUtils;->animateWithDelta(FFFF)F

    move-result v7

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 633
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    iget v9, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetX:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_120

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    iget v9, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetY:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_120

    .line 634
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->cancelOffsetAnimation()V

    .line 635
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 636
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    goto :goto_120

    .line 639
    :cond_167
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 640
    iput v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    goto :goto_120
.end method

.method private doPhysics(F)V
    .registers 13
    .parameter "dt"

    .prologue
    const/high16 v10, -0x3f00

    const/high16 v9, 0x40a0

    .line 651
    const v4, 0x3c23d70a

    .line 652
    .local v4, minStepTime:F
    cmpl-float v7, p1, v4

    if-lez v7, :cond_4e

    div-float v7, p1, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 654
    .local v2, N:I
    :goto_13
    const/4 v7, 0x5

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 655
    int-to-float v7, v2

    div-float/2addr p1, v7

    .line 657
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1b
    if-ge v3, v2, :cond_50

    .line 659
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    mul-float v0, v10, v7

    .line 660
    .local v0, Ffx:F
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    mul-float v1, v10, v7

    .line 663
    .local v1, Ffy:F
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    mul-float/2addr v7, v9

    mul-float v8, v0, p1

    add-float v5, v7, v8

    .line 664
    .local v5, momentumX:F
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    mul-float/2addr v7, v9

    mul-float v8, v1, p1

    add-float v6, v7, v8

    .line 665
    .local v6, momentumY:F
    div-float v7, v5, v9

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 666
    div-float v7, v6, v9

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 668
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasX:F

    iget v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasX:F

    .line 669
    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasY:F

    iget v8, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBiasY:F

    .line 657
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 652
    .end local v0           #Ffx:F
    .end local v1           #Ffy:F
    .end local v2           #N:I
    .end local v3           #i:I
    .end local v5           #momentumX:F
    .end local v6           #momentumY:F
    :cond_4e
    const/4 v2, 0x1

    goto :goto_13

    .line 671
    .restart local v2       #N:I
    .restart local v3       #i:I
    :cond_50
    return-void
.end method

.method private immediatelyCompleteOffsetAnimation()V
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    .line 152
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetX:F

    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 153
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetY:F

    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 154
    return-void
.end method

.method private isInMotion(F)Z
    .registers 3
    .parameter "threshold"

    .prologue
    .line 675
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_14

    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private setAnimatingOffset(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 140
    iput p1, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetX:F

    .line 141
    iput p2, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetY:F

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/Transformer;->mBounceBack:Z

    .line 144
    return-void
.end method


# virtual methods
.method public addView(Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_9

    .line 377
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 379
    :cond_9
    iput-object p1, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    .line 380
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 381
    return-void
.end method

.method public adjustOffset(FF)V
    .registers 17
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 340
    iget-object v4, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v4, :cond_58

    .line 341
    iget-object v4, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v0

    .line 342
    .local v0, childX:F
    iget-object v4, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v11

    .line 343
    .local v11, childY:F
    iget-object v4, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v1

    .line 344
    .local v1, childW:F
    iget-object v4, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v10

    .line 345
    .local v10, childH:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v4

    iget v5, p0, Lcom/google/android/opengl/glview/Transformer;->mLeftMargin:F

    iget v8, p0, Lcom/google/android/opengl/glview/Transformer;->mRightMagin:F

    add-float/2addr v5, v8

    sub-float v2, v4, v5

    .line 346
    .local v2, w:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v4

    iget v5, p0, Lcom/google/android/opengl/glview/Transformer;->mTopMargin:F

    iget v8, p0, Lcom/google/android/opengl/glview/Transformer;->mBottomMargin:F

    add-float/2addr v5, v8

    sub-float v6, v4, v5

    .line 347
    .local v6, h:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v3

    .line 348
    .local v3, oldOffsetX:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->offsetY()F

    move-result v7

    .line 349
    .local v7, oldOffsetY:F
    iget v5, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollX:F

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/opengl/glview/Transformer;->clampAxis(FFFFFF)F

    move-result v12

    .line 350
    .local v12, ox:F
    iget v9, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollY:F

    move v4, v11

    move v5, v10

    move/from16 v8, p2

    invoke-static/range {v4 .. v9}, Lcom/google/android/opengl/glview/Transformer;->clampAxis(FFFFFF)F

    move-result v13

    .line 351
    .local v13, oy:F
    invoke-virtual {p0, v12, v13}, Lcom/google/android/opengl/glview/Transformer;->setOffset(FF)V

    .line 352
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->getId()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v4, v5, v8, v9}, Lcom/google/android/opengl/glview/Transformer;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    .line 354
    .end local v0           #childX:F
    .end local v1           #childW:F
    .end local v2           #w:F
    .end local v3           #oldOffsetX:F
    .end local v6           #h:F
    .end local v7           #oldOffsetY:F
    .end local v10           #childH:F
    .end local v11           #childY:F
    .end local v12           #ox:F
    .end local v13           #oy:F
    :cond_58
    return-void
.end method

.method public cancelOffsetAnimation()V
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    .line 148
    return-void
.end method

.method public convertFromParent(Landroid/graphics/RectF;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 247
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 248
    .local v0, ox:F
    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 249
    .local v1, oy:F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 250
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 251
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 252
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 253
    return-void
.end method

.method public convertFromParent(Lcom/google/android/opengl/glview/Point;)V
    .registers 4
    .parameter "pt"

    .prologue
    .line 231
    iget v0, p1, Lcom/google/android/opengl/glview/Point;->x:F

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/opengl/glview/Point;->x:F

    .line 232
    iget v0, p1, Lcom/google/android/opengl/glview/Point;->y:F

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/opengl/glview/Point;->y:F

    .line 233
    return-void
.end method

.method public convertToParent(Landroid/graphics/RectF;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 237
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 238
    .local v0, ox:F
    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 239
    .local v1, oy:F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 240
    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 241
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 242
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 243
    return-void
.end method

.method public convertToParent(Lcom/google/android/opengl/glview/Point;)V
    .registers 4
    .parameter "pt"

    .prologue
    .line 225
    iget v0, p1, Lcom/google/android/opengl/glview/Point;->x:F

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/opengl/glview/Point;->x:F

    .line 226
    iget v0, p1, Lcom/google/android/opengl/glview/Point;->y:F

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/google/android/opengl/glview/Point;->y:F

    .line 227
    return-void
.end method

.method public createTracker(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 7
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 220
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/opengl/glview/Transformer;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v0

    return-object v0
.end method

.method public final effectiveOffset(Z)F
    .registers 3
    .parameter "horizontal"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    if-eqz v0, :cond_c

    .line 129
    if-eqz p1, :cond_9

    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetX:F

    .line 131
    :goto_8
    return v0

    .line 129
    :cond_9
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetY:F

    goto :goto_8

    .line 131
    :cond_c
    if-eqz p1, :cond_11

    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    goto :goto_8

    :cond_11
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    goto :goto_8
.end method

.method protected gestureCancel(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 453
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 454
    sget-object v0, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-object v0
.end method

.method protected gestureDown(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 447
    sget-object v0, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-object v0
.end method

.method protected gestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 6
    .parameter "e0"
    .parameter "e1"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 481
    iput p3, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingX:F

    .line 482
    iput p4, p0, Lcom/google/android/opengl/glview/Transformer;->mFlingY:F

    .line 483
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 484
    sget-object v0, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-object v0
.end method

.method protected gestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 6
    .parameter "e0"
    .parameter "e1"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 460
    invoke-virtual {p0, p3, p4}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 462
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->cancelOffsetAnimation()V

    .line 463
    sget-object v0, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-object v0
.end method

.method protected gestureSingleTapUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 468
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 469
    sget-object v0, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-object v0
.end method

.method protected gestureUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 474
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Transformer;->setBounceBack(Z)V

    .line 475
    sget-object v0, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-object v0
.end method

.method public getChildAt(I)Lcom/google/android/opengl/glview/GLView;
    .registers 3
    .parameter "index"

    .prologue
    .line 403
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getMinLength(Z)F
    .registers 4
    .parameter "horizontal"

    .prologue
    const/high16 v1, -0x4080

    .line 325
    if-eqz p1, :cond_18

    .line 326
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeW:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    .line 327
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v0

    .line 334
    :goto_14
    return v0

    .line 329
    :cond_15
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeW:F

    goto :goto_14

    .line 331
    :cond_18
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeH:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_29

    .line 332
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v0

    goto :goto_14

    .line 334
    :cond_29
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeH:F

    goto :goto_14
.end method

.method public getOverScrollX()F
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 532
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mLeftMargin:F

    neg-float v1, v2

    .line 533
    .local v1, minOffsetX:F
    iget-object v2, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_26

    move v2, v3

    :goto_13
    neg-float v2, v2

    iget v4, p0, Lcom/google/android/opengl/glview/Transformer;->mRightMagin:F

    sub-float v0, v2, v4

    .line 535
    .local v0, maxOffsetX:F
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_32

    .line 536
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollX:F

    div-float v3, v2, v3

    .line 540
    :cond_25
    :goto_25
    return v3

    .line 533
    .end local v0           #maxOffsetX:F
    :cond_26
    iget-object v2, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v4

    sub-float/2addr v2, v4

    goto :goto_13

    .line 537
    .restart local v0       #maxOffsetX:F
    :cond_32
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_25

    .line 538
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollX:F

    div-float v3, v2, v3

    goto :goto_25
.end method

.method public getOverScrollY()F
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 544
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mTopMargin:F

    neg-float v1, v2

    .line 545
    .local v1, minOffsetY:F
    iget-object v2, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_26

    move v2, v3

    :goto_13
    neg-float v2, v2

    iget v4, p0, Lcom/google/android/opengl/glview/Transformer;->mBottomMargin:F

    sub-float v0, v2, v4

    .line 547
    .local v0, maxOffsetY:F
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_32

    .line 548
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollY:F

    div-float v3, v2, v3

    .line 552
    :cond_25
    :goto_25
    return v3

    .line 545
    .end local v0           #maxOffsetY:F
    :cond_26
    iget-object v2, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v4

    sub-float/2addr v2, v4

    goto :goto_13

    .line 549
    .restart local v0       #maxOffsetY:F
    :cond_32
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_25

    .line 550
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollY:F

    div-float v3, v2, v3

    goto :goto_25
.end method

.method public indexOfChild(Lcom/google/android/opengl/glview/GLView;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public layout(ZFF)V
    .registers 6
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/Transformer;->internalLayout(ZFF)V

    .line 367
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_d

    .line 368
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 371
    :cond_d
    invoke-virtual {p0, v1, v1}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    .line 372
    return-void
.end method

.method public final nonOverScrollOffsetX()F
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v5, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v5, :cond_26

    .line 98
    iget-object v5, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v0

    .line 99
    .local v0, childX:F
    iget-object v5, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v1

    .line 100
    .local v1, childW:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v5

    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mLeftMargin:F

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mRightMagin:F

    add-float/2addr v6, v7

    sub-float v2, v5, v6

    .line 101
    .local v2, w:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v3

    .local v3, oldOffsetX:F
    move v5, v4

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/google/android/opengl/glview/Transformer;->clampAxis(FFFFFF)F

    move-result v4

    .line 104
    .end local v0           #childX:F
    .end local v1           #childW:F
    .end local v2           #w:F
    .end local v3           #oldOffsetX:F
    :goto_25
    return v4

    :cond_26
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v4

    goto :goto_25
.end method

.method public final nonOverScrollOffsetY()F
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v5, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v5, :cond_26

    .line 110
    iget-object v5, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v0

    .line 111
    .local v0, childY:F
    iget-object v5, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v1

    .line 112
    .local v1, childH:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v5

    iget v6, p0, Lcom/google/android/opengl/glview/Transformer;->mTopMargin:F

    iget v7, p0, Lcom/google/android/opengl/glview/Transformer;->mBottomMargin:F

    add-float/2addr v6, v7

    sub-float v2, v5, v6

    .line 113
    .local v2, h:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->offsetY()F

    move-result v3

    .local v3, oldOffsetY:F
    move v5, v4

    .line 114
    invoke-static/range {v0 .. v5}, Lcom/google/android/opengl/glview/Transformer;->clampAxis(FFFFFF)F

    move-result v4

    .line 116
    .end local v0           #childY:F
    .end local v1           #childH:F
    .end local v2           #h:F
    .end local v3           #oldOffsetY:F
    :goto_25
    return v4

    :cond_26
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->offsetY()F

    move-result v4

    goto :goto_25
.end method

.method public final offsetX()F
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    return v0
.end method

.method public final offsetY()F
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    return v0
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .registers 8
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    const/4 v4, 0x0

    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, result:Z
    invoke-direct {p0, p2}, Lcom/google/android/opengl/glview/Transformer;->doAnimationStep(F)V

    .line 198
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 199
    .local v0, offsetX:F
    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 200
    .local v1, offsetY:F
    iget-boolean v3, p0, Lcom/google/android/opengl/glview/Transformer;->mTiltingOverscroll:Z

    if-eqz v3, :cond_25

    .line 201
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->nonOverScrollOffsetX()F

    move-result v0

    .line 202
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->nonOverScrollOffsetY()F

    move-result v1

    .line 203
    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_21

    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_25

    .line 204
    :cond_21
    const/4 v3, 0x7

    invoke-virtual {p0, v3, p0}, Lcom/google/android/opengl/glview/Transformer;->visit(ILjava/lang/Object;)V

    .line 207
    :cond_25
    invoke-virtual {p1, v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->adjustUIOffset(FF)V

    .line 208
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v2

    .line 209
    if-nez v2, :cond_3f

    .line 210
    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3e

    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3e

    iget-boolean v3, p0, Lcom/google/android/opengl/glview/Transformer;->mOverscrolling:Z

    if-eqz v3, :cond_45

    :cond_3e
    const/4 v2, 0x1

    .line 212
    :cond_3f
    :goto_3f
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p1, v3, v4}, Lcom/google/android/opengl/glview/GLCanvas;->adjustUIOffset(FF)V

    .line 213
    return v2

    .line 210
    :cond_45
    const/4 v2, 0x0

    goto :goto_3f
.end method

.method public removeView(Lcom/google/android/opengl/glview/GLView;)V
    .registers 4
    .parameter "child"

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-ne p1, v0, :cond_a

    .line 386
    invoke-virtual {p1, v1}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 387
    iput-object v1, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    .line 389
    :cond_a
    return-void
.end method

.method public requestRectangleOnScreen(FFFF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v6, 0x0

    .line 257
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    if-eqz v2, :cond_48

    .line 258
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetX:F

    add-float/2addr p1, v2

    .line 259
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mTargetOffsetY:F

    add-float/2addr p2, v2

    .line 265
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->x()F

    move-result v2

    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginLeft:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v3

    iget v4, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginLeft:F

    iget v5, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginRight:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2, v3, p1, p3}, Lcom/google/android/opengl/glview/Transformer;->computeMinimumScroll(FFFF)F

    move-result v0

    .line 267
    .local v0, dx:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->y()F

    move-result v2

    iget v3, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginTop:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v3

    iget v4, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginTop:F

    iget v5, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginBottom:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v2, v3, p2, p4}, Lcom/google/android/opengl/glview/Transformer;->computeMinimumScroll(FFFF)F

    move-result v1

    .line 269
    .local v1, dy:F
    cmpl-float v2, v0, v6

    if-nez v2, :cond_3d

    cmpl-float v2, v1, v6

    if-eqz v2, :cond_47

    .line 270
    :cond_3d
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/Transformer;->mAnimatingOffset:Z

    if-eqz v2, :cond_44

    .line 271
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Transformer;->immediatelyCompleteOffsetAnimation()V

    .line 273
    :cond_44
    invoke-virtual {p0, v0, v1}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    .line 275
    :cond_47
    return-void

    .line 261
    .end local v0           #dx:F
    .end local v1           #dy:F
    :cond_48
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    add-float/2addr p1, v2

    .line 262
    iget v2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    add-float/2addr p2, v2

    goto :goto_b
.end method

.method public requestScrollTo(FFZ)V
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    .line 279
    iget-object v3, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v3, :cond_41

    .line 280
    iget-object v3, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v0

    .line 281
    .local v0, childX:F
    iget-object v3, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v11

    .line 282
    .local v11, childY:F
    iget-object v3, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v1

    .line 283
    .local v1, childW:F
    iget-object v3, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v6

    .line 284
    .local v6, childH:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v3

    iget v5, p0, Lcom/google/android/opengl/glview/Transformer;->mLeftMargin:F

    iget v8, p0, Lcom/google/android/opengl/glview/Transformer;->mRightMagin:F

    add-float/2addr v5, v8

    sub-float v2, v3, v5

    .line 285
    .local v2, w:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v3

    iget v5, p0, Lcom/google/android/opengl/glview/Transformer;->mTopMargin:F

    iget v8, p0, Lcom/google/android/opengl/glview/Transformer;->mBottomMargin:F

    add-float/2addr v5, v8

    sub-float v7, v3, v5

    .local v7, h:F
    move v3, p1

    move v5, v4

    .line 286
    invoke-static/range {v0 .. v5}, Lcom/google/android/opengl/glview/Transformer;->clampAxis(FFFFFF)F

    move-result p1

    move v5, v11

    move v8, p2

    move v9, v4

    move v10, v4

    .line 287
    invoke-static/range {v5 .. v10}, Lcom/google/android/opengl/glview/Transformer;->clampAxis(FFFFFF)F

    move-result p2

    .line 290
    .end local v0           #childX:F
    .end local v1           #childW:F
    .end local v2           #w:F
    .end local v6           #childH:F
    .end local v7           #h:F
    .end local v11           #childY:F
    :cond_41
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/glview/Transformer;->setAnimatingOffset(FF)V

    .line 291
    if-nez p3, :cond_49

    .line 292
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Transformer;->immediatelyCompleteOffsetAnimation()V

    .line 294
    :cond_49
    return-void
.end method

.method public resetTransformer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_8

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mChild:Lcom/google/android/opengl/glview/GLView;

    .line 498
    :cond_8
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mLeftMargin:F

    neg-float v0, v0

    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 499
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mTopMargin:F

    neg-float v0, v0

    iput v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 500
    iput v1, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 501
    iput v1, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 502
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Transformer;->cancelOffsetAnimation()V

    .line 503
    return-void
.end method

.method public route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 12
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    .line 413
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 414
    .local v0, ox:F
    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 415
    .local v1, oy:F
    if-eqz p2, :cond_c

    .line 416
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 418
    :cond_c
    if-eqz p3, :cond_13

    .line 419
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {p3, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 421
    :cond_13
    const/4 v2, 0x0

    .line 422
    .local v2, result:Lcom/google/android/opengl/glview/GLView$EventTracker;
    if-eqz p1, :cond_1c

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1c

    const/4 v3, 0x7

    if-ne p1, v3, :cond_2a

    .line 423
    :cond_1c
    const/high16 v3, 0x4120

    invoke-direct {p0, v3}, Lcom/google/android/opengl/glview/Transformer;->isInMotion(F)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 425
    sget-object v2, Lcom/google/android/opengl/glview/Transformer;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    .line 427
    :cond_26
    iput v5, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityX:F

    .line 428
    iput v5, p0, Lcom/google/android/opengl/glview/Transformer;->mVelocityY:F

    .line 431
    :cond_2a
    if-nez v2, :cond_30

    .line 432
    invoke-super/range {p0 .. p5}, Lcom/google/android/opengl/glview/GLView;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v2

    .line 434
    :cond_30
    if-eqz p2, :cond_35

    .line 435
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 437
    :cond_35
    if-eqz p3, :cond_3a

    .line 438
    invoke-virtual {p3, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 440
    :cond_3a
    return-object v2
.end method

.method public setBounceBack(Z)V
    .registers 2
    .parameter "bounceBack"

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/Transformer;->mBounceBack:Z

    .line 184
    return-void
.end method

.method public setMargins(FFFF)V
    .registers 5
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 187
    iput p1, p0, Lcom/google/android/opengl/glview/Transformer;->mLeftMargin:F

    .line 188
    iput p2, p0, Lcom/google/android/opengl/glview/Transformer;->mRightMagin:F

    .line 189
    iput p3, p0, Lcom/google/android/opengl/glview/Transformer;->mTopMargin:F

    .line 190
    iput p4, p0, Lcom/google/android/opengl/glview/Transformer;->mBottomMargin:F

    .line 191
    return-void
.end method

.method public setMaxOverScroll(FF)V
    .registers 3
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"

    .prologue
    .line 173
    iput p1, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollX:F

    .line 174
    iput p2, p0, Lcom/google/android/opengl/glview/Transformer;->mMaxOverScrollY:F

    .line 175
    return-void
.end method

.method public setMinimumSize(FF)V
    .registers 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 162
    iput p1, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeW:F

    .line 163
    iput p2, p0, Lcom/google/android/opengl/glview/Transformer;->mMinimumSizeH:F

    .line 164
    return-void
.end method

.method public final setOffset(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 84
    iput p1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    .line 85
    iput p2, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    .line 86
    return-void
.end method

.method public setOwnerThread()V
    .registers 2

    .prologue
    .line 679
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/glview/Transformer;->mOwner:Ljava/lang/Thread;

    .line 680
    return-void
.end method

.method public setVisibilityMargin(FFFF)V
    .registers 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginLeft:F

    .line 73
    iput p2, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginTop:F

    .line 74
    iput p3, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginRight:F

    .line 75
    iput p4, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginBottom:F

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/opengl/glview/GLView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/opengl/glview/Transformer;->mOffsetY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final visibleMarginOrigin(Z)F
    .registers 3
    .parameter "horizontal"

    .prologue
    .line 136
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginLeft:F

    :goto_4
    return v0

    :cond_5
    iget v0, p0, Lcom/google/android/opengl/glview/Transformer;->mVisibleMarginTop:F

    goto :goto_4
.end method
