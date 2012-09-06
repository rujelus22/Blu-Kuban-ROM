.class public abstract Lcom/google/android/finsky/layout/DraggableHorizontalStrip;
.super Landroid/view/ViewGroup;
.source "DraggableHorizontalStrip.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mDeceleration:F

.field protected mIndexOfPressedChild:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mLayoutMargin:I

.field protected mOriginalPixelOffsetOfFirstChild:F

.field private mPixelOffsetOfFirstChild:F

.field private mScrollAnimation:Landroid/animation/Animator;

.field private final mScrollThreshold:I

.field protected mTotalChildrenWidth:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mXDistanceScrolledSinceLastDown:F

.field private mYDistanceScrolledSinceLastDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attributeSet"
    .parameter "i"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    .line 31
    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    .line 68
    iput-object p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 71
    .local v0, ppi:F
    const v1, 0x4490c86e

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/DraggableHorizontalStrip;F)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->updateFirstChildOffset(F)V

    return-void
.end method

.method private onTouchEventDone(FFZ)V
    .registers 22
    .parameter "x"
    .parameter "velocity"
    .parameter "isCancel"

    .prologue
    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->resetPressedState()V

    .line 176
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 179
    .local v2, absVelocity:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v15, v2, v15

    if-lez v15, :cond_cf

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_cf

    .line 181
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    div-float v9, v2, v15

    .line 182
    .local v9, duration:F
    mul-float v15, v2, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    mul-float v16, v16, v9

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v14, v15, v16

    .line 184
    .local v14, totalDistance:F
    const/4 v15, 0x0

    cmpg-float v15, p2, v15

    if-gez v15, :cond_9d

    const/4 v11, 0x1

    .line 185
    .local v11, movingToLeft:Z
    :goto_47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    move/from16 v16, v0

    if-eqz v11, :cond_9f

    neg-float v15, v14

    :goto_50
    add-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v12

    .line 189
    .local v12, offsetAtStop:F
    if-eqz v11, :cond_a1

    .line 193
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnRight(F)F

    move-result v13

    .line 199
    .local v13, target:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    sub-float v15, v13, v15

    add-float/2addr v14, v15

    .line 201
    const/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float/2addr v15, v14

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v15

    neg-float v0, v15

    move/from16 p2, v0

    .line 216
    :goto_8b
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 218
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    div-float v9, v2, v15

    .line 220
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v9}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->runScrollAnimation(FF)V

    .line 260
    .end local v9           #duration:F
    .end local v11           #movingToLeft:Z
    .end local v12           #offsetAtStop:F
    .end local v13           #target:F
    .end local v14           #totalDistance:F
    :cond_9c
    :goto_9c
    return-void

    .line 184
    .restart local v9       #duration:F
    .restart local v14       #totalDistance:F
    :cond_9d
    const/4 v11, 0x0

    goto :goto_47

    .restart local v11       #movingToLeft:Z
    :cond_9f
    move v15, v14

    .line 185
    goto :goto_50

    .line 206
    .restart local v12       #offsetAtStop:F
    :cond_a1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnLeft(F)F

    move-result v13

    .line 212
    .restart local v13       #target:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    sub-float/2addr v15, v13

    add-float/2addr v14, v15

    .line 214
    const/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float/2addr v15, v14

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result p2

    goto :goto_8b

    .line 225
    .end local v9           #duration:F
    .end local v11           #movingToLeft:Z
    .end local v12           #offsetAtStop:F
    .end local v13           #target:F
    .end local v14           #totalDistance:F
    :cond_cf
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_108

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mYDistanceScrolledSinceLastDown:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_108

    if-nez p3, :cond_108

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventTriggeredTap(F)Z

    move-result v15

    if-eqz v15, :cond_108

    .line 229
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    .line 230
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    goto :goto_9c

    .line 233
    :cond_108
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_9c

    .line 235
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v5

    .line 237
    .local v5, currPos:F
    const/4 v14, 0x0

    .line 238
    .restart local v14       #totalDistance:F
    const/4 v4, 0x0

    .line 239
    .local v4, currLeft:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_12e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildCount()I

    move-result v15

    if-ge v10, v15, :cond_15d

    .line 240
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 241
    .local v3, childView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v6, v4, v15

    .line 242
    .local v6, currRight:I
    int-to-float v15, v6

    cmpl-float v15, v15, v5

    if-ltz v15, :cond_18a

    .line 243
    int-to-float v15, v4

    sub-float v7, v5, v15

    .line 244
    .local v7, distToLeftEdge:F
    int-to-float v15, v6

    sub-float v8, v15, v5

    .line 245
    .local v8, distToRightEdge:F
    cmpl-float v15, v8, v7

    if-lez v15, :cond_183

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnLeft(F)F

    move-result v13

    .line 248
    .restart local v13       #target:F
    :goto_155
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    sub-float v14, v5, v15

    .line 254
    .end local v3           #childView:Landroid/view/View;
    .end local v6           #currRight:I
    .end local v7           #distToLeftEdge:F
    .end local v8           #distToRightEdge:F
    .end local v13           #target:F
    :cond_15d
    const/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float/2addr v15, v14

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 255
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    div-float v9, v2, v15

    .line 257
    .restart local v9       #duration:F
    const/4 v15, 0x0

    cmpg-float v15, v14, v15

    if-gez v15, :cond_193

    neg-float v15, v2

    :goto_17c
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->runScrollAnimation(FF)V

    goto/16 :goto_9c

    .line 245
    .end local v9           #duration:F
    .restart local v3       #childView:Landroid/view/View;
    .restart local v6       #currRight:I
    .restart local v7       #distToLeftEdge:F
    .restart local v8       #distToRightEdge:F
    :cond_183
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnRight(F)F

    move-result v13

    goto :goto_155

    .line 251
    .end local v7           #distToLeftEdge:F
    .end local v8           #distToRightEdge:F
    :cond_18a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLayoutMargin:I

    add-int v4, v6, v15

    .line 239
    add-int/lit8 v10, v10, 0x1

    goto :goto_12e

    .end local v3           #childView:Landroid/view/View;
    .end local v6           #currRight:I
    .restart local v9       #duration:F
    :cond_193
    move v15, v2

    .line 257
    goto :goto_17c
.end method

.method private onTouchEventDown(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 134
    iput p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    .line 135
    iput p2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    .line 136
    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    .line 137
    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mYDistanceScrolledSinceLastDown:F

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->findViewIndexAtX(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    .line 140
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->setPressedState()V

    .line 141
    return-void
.end method

.method private onTouchEventMove(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 144
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    sub-float v1, v3, p1

    .line 145
    .local v1, scrollX:F
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    sub-float v2, v3, p2

    .line 146
    .local v2, scrollY:F
    iput p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    .line 147
    iput p2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->findViewIndexAtX(F)I

    move-result v0

    .line 150
    .local v0, indexOfPressedChild:I
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    if-eq v0, v3, :cond_1a

    .line 151
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->resetPressedState()V

    .line 152
    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    .line 155
    :cond_1a
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    .line 156
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mYDistanceScrolledSinceLastDown:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mYDistanceScrolledSinceLastDown:F

    .line 162
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mYDistanceScrolledSinceLastDown:F

    iget v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_42

    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mXDistanceScrolledSinceLastDown:F

    iget v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_42

    .line 164
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->requestDisallowInterceptTouchEvent(Z)V

    .line 167
    :cond_42
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_56

    .line 169
    iget v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    sub-float/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->updateFirstChildOffset(F)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->requestLayout()V

    .line 172
    :cond_56
    return-void
.end method

.method private resetPressedState()V
    .registers 3

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    if-ltz v0, :cond_e

    .line 123
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 125
    :cond_e
    return-void
.end method

.method private setPressedState()V
    .registers 3

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    if-ltz v0, :cond_e

    .line 129
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 131
    :cond_e
    return-void
.end method

.method private updateFirstChildOffset(F)V
    .registers 3
    .parameter "targetValue"

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->limitScrollPosition(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    .line 296
    return-void
.end method


# virtual methods
.method protected clampToTotalStripWidth(F)F
    .registers 5
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 109
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    move v0, p1

    .line 118
    .end local p1
    .local v0, value:F
    :goto_8
    return v0

    .line 112
    .end local v0           #value:F
    .restart local p1
    :cond_9
    :goto_9
    cmpg-float v1, p1, v2

    if-gez v1, :cond_11

    .line 113
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    add-float/2addr p1, v1

    goto :goto_9

    .line 115
    :cond_11
    :goto_11
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1b

    .line 116
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr p1, v1

    goto :goto_11

    :cond_1b
    move v0, p1

    .line 118
    .end local p1
    .restart local v0       #value:F
    goto :goto_8
.end method

.method protected createScrollAnimation(FJ)Landroid/animation/Animator;
    .registers 8
    .parameter "velocity"
    .parameter "scrollDurationMs"

    .prologue
    .line 87
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    .line 89
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    long-to-float v3, p2

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 91
    .local v0, scrolling:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;-><init>(Lcom/google/android/finsky/layout/DraggableHorizontalStrip;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 104
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 105
    return-object v0
.end method

.method protected findViewIndexAtX(F)I
    .registers 5
    .parameter "x"

    .prologue
    .line 368
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 369
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-ltz v2, :cond_1e

    .line 374
    .end local v0           #childView:Landroid/view/View;
    .end local v1           #i:I
    :goto_1d
    return v1

    .line 368
    .restart local v0       #childView:Landroid/view/View;
    .restart local v1       #i:I
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 374
    .end local v0           #childView:Landroid/view/View;
    :cond_21
    const/4 v1, -0x1

    goto :goto_1d
.end method

.method abstract getLeftEdgeOfChildOnLeft(F)F
.end method

.method abstract getLeftEdgeOfChildOnRight(F)F
.end method

.method protected getScrollPosition()F
    .registers 2

    .prologue
    .line 325
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    return v0
.end method

.method protected limitScrollPosition(F)F
    .registers 5
    .parameter "targetValue"

    .prologue
    .line 352
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_6

    .line 354
    const/4 p1, 0x0

    .line 356
    :cond_6
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 357
    .local v0, maxFromRight:I
    neg-float v1, p1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    .line 358
    neg-int v1, v0

    int-to-float p1, v1

    .line 360
    :cond_17
    return p1
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 264
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 265
    .local v2, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 267
    .local v1, x:F
    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_14

    .line 268
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 270
    :cond_14
    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_26

    move-result v0

    .line 273
    .local v0, action:I
    packed-switch v0, :pswitch_data_50

    .line 291
    :goto_20
    monitor-exit p0

    return v4

    .line 275
    :pswitch_22
    :try_start_22
    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventDown(FF)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_20

    .line 264
    .end local v0           #action:I
    .end local v1           #x:F
    .end local v2           #y:F
    :catchall_26
    move-exception v3

    monitor-exit p0

    throw v3

    .line 279
    .restart local v0       #action:I
    .restart local v1       #x:F
    .restart local v2       #y:F
    :pswitch_29
    :try_start_29
    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventMove(FF)V

    goto :goto_20

    .line 284
    :pswitch_2d
    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    const v6, 0x449c4000

    invoke-virtual {v3, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 285
    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4d

    move v3, v4

    :goto_41
    invoke-direct {p0, v1, v5, v3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventDone(FFZ)V

    .line 287
    iget-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 288
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_26

    goto :goto_20

    .line 285
    :cond_4d
    const/4 v3, 0x0

    goto :goto_41

    .line 273
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_22
        :pswitch_2d
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method abstract onTouchEventTriggeredTap(F)Z
.end method

.method protected runScrollAnimation(FF)V
    .registers 5
    .parameter "velocity"
    .parameter "duration"

    .prologue
    .line 307
    const/high16 v0, 0x447a

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->createScrollAnimation(FJ)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollAnimation:Landroid/animation/Animator;

    .line 308
    iget-object v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 309
    return-void
.end method

.method public setLayoutMargin(I)V
    .registers 2
    .parameter "layoutMargin"

    .prologue
    .line 364
    iput p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLayoutMargin:I

    .line 365
    return-void
.end method
