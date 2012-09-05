.class public abstract Lcom/google/android/finsky/layout/DraggableHorizontalStrip;
.super Landroid/view/ViewGroup;
.source "DraggableHorizontalStrip.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mDeceleration:F

.field private mDistanceScrolledSinceLastDown:F

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attributeSet"
    .parameter "i"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    .line 30
    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    .line 62
    iput-object p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 65
    .local v0, ppi:F
    const v1, 0x4490c86e

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/DraggableHorizontalStrip;F)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->updateFirstChildOffset(F)V

    return-void
.end method

.method private onTouchEventDown(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 128
    iput p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    .line 129
    iput p2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDistanceScrolledSinceLastDown:F

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->findViewIndexAtX(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    .line 133
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->setPressedState()V

    .line 134
    return-void
.end method

.method private onTouchEventMove(FF)V
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 137
    iget v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    sub-float v2, v4, p1

    .line 138
    .local v2, scrollX:F
    iget v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    sub-float v3, v4, p2

    .line 139
    .local v3, scrollY:F
    iput p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionX:F

    .line 140
    iput p2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLastMotionY:F

    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->findViewIndexAtX(F)I

    move-result v1

    .line 143
    .local v1, indexOfPressedChild:I
    iget v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    if-eq v1, v4, :cond_1a

    .line 144
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->resetPressedState()V

    .line 145
    const/4 v4, -0x1

    iput v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    .line 148
    :cond_1a
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 149
    .local v0, distTravelledInPixels:F
    iget v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDistanceScrolledSinceLastDown:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDistanceScrolledSinceLastDown:F

    .line 151
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_3f

    .line 152
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->requestDisallowInterceptTouchEvent(Z)V

    .line 155
    :cond_3f
    iget v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_53

    .line 157
    iget v4, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    sub-float/2addr v4, v2

    invoke-direct {p0, v4}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->updateFirstChildOffset(F)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->requestLayout()V

    .line 160
    :cond_53
    return-void
.end method

.method private onTouchEventUp(FF)V
    .registers 21
    .parameter "x"
    .parameter "velocity"

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->resetPressedState()V

    .line 164
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 167
    .local v2, absVelocity:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v15, v2, v15

    if-lez v15, :cond_d5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_d5

    .line 169
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    div-float v9, v2, v15

    .line 170
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

    .line 172
    .local v14, totalDistance:F
    const/4 v15, 0x0

    cmpg-float v15, p2, v15

    if-gez v15, :cond_9f

    const/4 v11, 0x1

    .line 173
    .local v11, movingToLeft:Z
    :goto_47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    move/from16 v16, v0

    if-eqz v11, :cond_a1

    neg-float v15, v14

    :goto_50
    add-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v12

    .line 177
    .local v12, offsetAtStop:F
    if-eqz v11, :cond_a3

    .line 181
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnRight(F)F

    move-result v13

    .line 187
    .local v13, target:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    sub-float v15, v13, v15

    add-float/2addr v14, v15

    .line 189
    const/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float/2addr v15, v14

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v15, v15

    neg-float v0, v15

    move/from16 p2, v0

    .line 204
    :goto_8d
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 206
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    div-float v9, v2, v15

    .line 208
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v9}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->runScrollAnimation(FF)V

    .line 244
    .end local v9           #duration:F
    .end local v11           #movingToLeft:Z
    .end local v12           #offsetAtStop:F
    .end local v13           #target:F
    .end local v14           #totalDistance:F
    :cond_9e
    :goto_9e
    return-void

    .line 172
    .restart local v9       #duration:F
    .restart local v14       #totalDistance:F
    :cond_9f
    const/4 v11, 0x0

    goto :goto_47

    .restart local v11       #movingToLeft:Z
    :cond_a1
    move v15, v14

    .line 173
    goto :goto_50

    .line 194
    .restart local v12       #offsetAtStop:F
    :cond_a3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnLeft(F)F

    move-result v13

    .line 200
    .restart local v13       #target:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    sub-float/2addr v15, v13

    add-float/2addr v14, v15

    .line 202
    const/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float/2addr v15, v14

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v0, v15

    move/from16 p2, v0

    goto :goto_8d

    .line 211
    .end local v9           #duration:F
    .end local v11           #movingToLeft:Z
    .end local v12           #offsetAtStop:F
    .end local v13           #target:F
    .end local v14           #totalDistance:F
    :cond_d5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDistanceScrolledSinceLastDown:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollThreshold:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_f9

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventTriggeredTap(F)Z

    move-result v15

    if-eqz v15, :cond_f9

    .line 213
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    .line 214
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    goto :goto_9e

    .line 217
    :cond_f9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_9e

    .line 219
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v5

    .line 221
    .local v5, currPos:F
    const/4 v14, 0x0

    .line 222
    .restart local v14       #totalDistance:F
    const/4 v4, 0x0

    .line 223
    .local v4, currLeft:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_11f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildCount()I

    move-result v15

    if-ge v10, v15, :cond_14e

    .line 224
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 225
    .local v3, childView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v6, v4, v15

    .line 226
    .local v6, currRight:I
    int-to-float v15, v6

    cmpl-float v15, v15, v5

    if-ltz v15, :cond_17d

    .line 227
    int-to-float v15, v4

    sub-float v7, v5, v15

    .line 228
    .local v7, distToLeftEdge:F
    int-to-float v15, v6

    sub-float v8, v15, v5

    .line 229
    .local v8, distToRightEdge:F
    cmpl-float v15, v8, v7

    if-lez v15, :cond_176

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnLeft(F)F

    move-result v13

    .line 232
    .restart local v13       #target:F
    :goto_146
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->clampToTotalStripWidth(F)F

    move-result v15

    sub-float v14, v5, v15

    .line 238
    .end local v3           #childView:Landroid/view/View;
    .end local v6           #currRight:I
    .end local v7           #distToLeftEdge:F
    .end local v8           #distToRightEdge:F
    .end local v13           #target:F
    :cond_14e
    const/high16 v15, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    mul-float/2addr v15, v14

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v2, v15

    .line 239
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mDeceleration:F

    div-float v9, v2, v15

    .line 241
    .restart local v9       #duration:F
    const/4 v15, 0x0

    cmpg-float v15, v14, v15

    if-gez v15, :cond_186

    neg-float v15, v2

    :goto_16f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->runScrollAnimation(FF)V

    goto/16 :goto_9e

    .line 229
    .end local v9           #duration:F
    .restart local v3       #childView:Landroid/view/View;
    .restart local v6       #currRight:I
    .restart local v7       #distToLeftEdge:F
    .restart local v8       #distToRightEdge:F
    :cond_176
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getLeftEdgeOfChildOnRight(F)F

    move-result v13

    goto :goto_146

    .line 235
    .end local v7           #distToLeftEdge:F
    .end local v8           #distToRightEdge:F
    :cond_17d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLayoutMargin:I

    add-int v4, v6, v15

    .line 223
    add-int/lit8 v10, v10, 0x1

    goto :goto_11f

    .end local v3           #childView:Landroid/view/View;
    .end local v6           #currRight:I
    .restart local v9       #duration:F
    :cond_186
    move v15, v2

    .line 241
    goto :goto_16f
.end method

.method private resetPressedState()V
    .registers 3

    .prologue
    .line 116
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    if-ltz v0, :cond_e

    .line 117
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 119
    :cond_e
    return-void
.end method

.method private setPressedState()V
    .registers 3

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    if-ltz v0, :cond_e

    .line 123
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mIndexOfPressedChild:I

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 125
    :cond_e
    return-void
.end method

.method private updateFirstChildOffset(F)V
    .registers 3
    .parameter "targetValue"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->limitScrollPosition(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    .line 278
    return-void
.end method


# virtual methods
.method protected clampToTotalStripWidth(F)F
    .registers 5
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 103
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_9

    move v0, p1

    .line 112
    .end local p1
    .local v0, value:F
    :goto_8
    return v0

    .line 106
    .end local v0           #value:F
    .restart local p1
    :cond_9
    :goto_9
    cmpg-float v1, p1, v2

    if-gez v1, :cond_11

    .line 107
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    add-float/2addr p1, v1

    goto :goto_9

    .line 109
    :cond_11
    :goto_11
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1b

    .line 110
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    sub-float/2addr p1, v1

    goto :goto_11

    :cond_1b
    move v0, p1

    .line 112
    .end local p1
    .restart local v0       #value:F
    goto :goto_8
.end method

.method protected createScrollAnimation(FJ)Landroid/animation/Animator;
    .registers 8
    .parameter "velocity"
    .parameter "scrollDurationMs"

    .prologue
    .line 81
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    iput v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mOriginalPixelOffsetOfFirstChild:F

    .line 83
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

    .line 85
    .local v0, scrolling:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip$1;-><init>(Lcom/google/android/finsky/layout/DraggableHorizontalStrip;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 98
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    return-object v0
.end method

.method protected findViewIndexAtX(F)I
    .registers 5
    .parameter "x"

    .prologue
    .line 350
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 351
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 352
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

    .line 356
    .end local v0           #childView:Landroid/view/View;
    .end local v1           #i:I
    :goto_1d
    return v1

    .line 350
    .restart local v0       #childView:Landroid/view/View;
    .restart local v1       #i:I
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 356
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
    .line 307
    iget v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mPixelOffsetOfFirstChild:F

    return v0
.end method

.method protected limitScrollPosition(F)F
    .registers 5
    .parameter "targetValue"

    .prologue
    .line 334
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_6

    .line 336
    const/4 p1, 0x0

    .line 338
    :cond_6
    iget v1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mTotalChildrenWidth:F

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 339
    .local v0, maxFromRight:I
    neg-float v1, p1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    .line 340
    neg-int v1, v0

    int-to-float p1, v1

    .line 342
    :cond_17
    return p1
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 249
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 251
    .local v0, x:F
    iget-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_13

    .line 252
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 254
    :cond_13
    iget-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_26

    move-result v2

    packed-switch v2, :pswitch_data_4a

    .line 273
    :goto_1f
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 258
    :pswitch_22
    :try_start_22
    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventDown(FF)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_1f

    .line 248
    .end local v0           #x:F
    .end local v1           #y:F
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2

    .line 262
    .restart local v0       #x:F
    .restart local v1       #y:F
    :pswitch_29
    :try_start_29
    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventMove(FF)V

    goto :goto_1f

    .line 267
    :pswitch_2d
    iget-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    const v4, 0x449c4000

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 268
    iget-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEventUp(FF)V

    .line 269
    iget-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 270
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mVelocityTracker:Landroid/view/VelocityTracker;
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_26

    goto :goto_1f

    .line 256
    nop

    :pswitch_data_4a
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
    .line 289
    const/high16 v0, 0x447a

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->createScrollAnimation(FJ)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollAnimation:Landroid/animation/Animator;

    .line 290
    iget-object v0, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mScrollAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 291
    return-void
.end method

.method public setLayoutMargin(I)V
    .registers 2
    .parameter "layoutMargin"

    .prologue
    .line 346
    iput p1, p0, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->mLayoutMargin:I

    .line 347
    return-void
.end method
