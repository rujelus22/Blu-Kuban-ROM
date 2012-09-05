.class public Lcom/sec/android/app/twlauncher/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragController;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/DragLayer$1;,
        Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;,
        Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;,
        Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;
    }
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mAnimationType:I

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field private mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field private mDownX:F

.field private mDownY:F

.field private mDragAction:I

.field private mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragIconAlpha:F

.field private mDragInfo:Ljava/lang/Object;

.field private mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragRegions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

.field private mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

.field private mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mDragging:Z

.field private final mDropCoordinates:[I

.field private mEnteredRegion:Z

.field private mGenericViewAnims:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/twlauncher/GenericViewAnim;",
            ">;"
        }
    .end annotation
.end field

.field private mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

.field private mIgnoredDropTarget:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDragAnimation:Z

.field private mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastTouchAmbiguous:Z

.field private mLastTouchPoint:Landroid/graphics/PointF;

.field private mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

.field private mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

.field private mOriginator:Landroid/view/View;

.field private final mRect:Landroid/graphics/Rect;

.field private mReloadIconSurface:Z

.field private mResizeRatio:F

.field private mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

.field private mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

.field private mShadowSurfaceUpdateNeeded:Z

.field private mShadowX:I

.field private mShadowY:I

.field private mShouldDrop:Z

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mTouchSlop:I

.field private mTransformEventEnabled:Z

.field private mVelTracker:Landroid/view/VelocityTracker;

.field private mVelTrackerNumItems:I

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 84
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 86
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    .line 90
    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    .line 92
    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    .line 94
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    .line 96
    new-instance v3, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    .line 98
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    .line 109
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 132
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 144
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 146
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    .line 148
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    .line 166
    new-instance v3, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;-><init>(Lcom/sec/android/app/twlauncher/DragLayer;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    .line 192
    iput v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 200
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    .line 202
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTransformEventEnabled:Z

    .line 204
    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 206
    new-instance v3, Lcom/sec/android/app/twlauncher/ShadowSurface;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/ShadowSurface;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

    .line 208
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    .line 210
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    .line 212
    iput v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    .line 216
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 235
    .local v1, r:Landroid/content/res/Resources;
    const v3, 0x7f070009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 236
    .local v2, snagColor:I
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 237
    .local v0, estimatedPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    const/high16 v3, 0x4040

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 239
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 241
    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    .line 243
    new-array v3, v6, [Lcom/sec/android/app/twlauncher/DragAnimation;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    .line 245
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchSlop:I

    .line 246
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 248
    const v3, 0x7f0b0039

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowX:I

    .line 249
    const v3, 0x7f0b003a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowY:I

    .line 250
    return-void
.end method

.method private checkDraggingTouchSlop(FF)V
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 933
    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownX:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v1, v6

    .line 934
    .local v1, xDiff:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownY:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v3, v6

    .line 936
    .local v3, yDiff:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchSlop:I

    .line 937
    .local v0, touchSlop:I
    if-le v1, v0, :cond_29

    move v2, v4

    .line 938
    .local v2, xMoved:Z
    :goto_19
    if-le v3, v0, :cond_2b

    .line 939
    .local v4, yMoved:Z
    :goto_1b
    if-nez v2, :cond_1f

    if-eqz v4, :cond_28

    .line 940
    :cond_1f
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    if-eqz v5, :cond_28

    .line 941
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->draggingOverTouchSlop()V

    .line 943
    :cond_28
    return-void

    .end local v2           #xMoved:Z
    .end local v4           #yMoved:Z
    :cond_29
    move v2, v5

    .line 937
    goto :goto_19

    .restart local v2       #xMoved:Z
    :cond_2b
    move v4, v5

    .line 938
    goto :goto_1b
.end method

.method private checkForScroll(FF)Z
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 948
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getTopMostScaledRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 950
    .local v0, panelRect:Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_31

    .line 951
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 963
    :goto_1b
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->isQueued()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 964
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    .line 965
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    const-wide/16 v4, 0x384

    invoke-virtual {p0, v1, v4, v5}, Lcom/sec/android/app/twlauncher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    move v1, v3

    .line 967
    :goto_30
    return v1

    .line 954
    :cond_31
    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3d

    .line 955
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setDirection(I)V

    goto :goto_1b

    .line 958
    :cond_3d
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 959
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    move v1, v2

    .line 960
    goto :goto_30
.end method

.method private drawDragIconGL(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 523
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v10, :cond_76

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_76

    .line 525
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 526
    const v10, 0x3f19999a

    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 528
    :cond_1e
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2c

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationStartTime:J

    .line 530
    const/4 v10, 0x2

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 533
    :cond_2c
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_125

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationStartTime:J

    sub-long/2addr v10, v12

    long-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationDuration:I

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 536
    .local v5, normalized:F
    const/high16 v10, 0x3f80

    cmpl-float v10, v5, v10

    if-ltz v10, :cond_4c

    .line 537
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_ac

    .line 538
    const/4 v10, 0x1

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 543
    :cond_4c
    :goto_4c
    const/high16 v10, 0x3f80

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 544
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v5

    add-float v8, v10, v11

    .line 546
    .local v8, value:F
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    packed-switch v10, :pswitch_data_18e

    .line 569
    :goto_61
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_76

    .line 570
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_73

    .line 571
    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    .line 572
    .local v7, to:F
    const/high16 v10, 0x3f80

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    .line 573
    iput v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    .line 575
    .end local v7           #to:F
    :cond_73
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->postInvalidate()V

    .line 595
    .end local v5           #normalized:F
    .end local v8           #value:F
    :cond_76
    :goto_76
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    if-eqz v10, :cond_188

    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, animate:Z
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    array-length v6, v10

    .line 598
    .local v6, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7f
    if-ge v4, v6, :cond_183

    .line 599
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    aget-object v0, v10, v4

    .line 600
    .local v0, ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    if-eqz v0, :cond_a9

    .line 601
    const/4 v9, 0x0

    .line 602
    .local v9, xOffset:I
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v10, :cond_94

    .line 603
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-interface {v10, v11}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->getDragAnimationXOffset(Landroid/view/View;)I

    move-result v9

    .line 605
    :cond_94
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 606
    iget v10, v0, Lcom/sec/android/app/twlauncher/DragAnimation;->mXOffset:F

    int-to-float v11, v9

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 607
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/DragAnimation;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v10

    if-eqz v10, :cond_17c

    .line 608
    const/4 v1, 0x1

    .line 612
    :goto_a6
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 598
    .end local v9           #xOffset:I
    :cond_a9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    .line 540
    .end local v0           #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    .end local v1           #animate:Z
    .end local v4           #i:I
    .end local v6           #size:I
    .restart local v5       #normalized:F
    :cond_ac
    const/4 v10, 0x3

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    goto :goto_4c

    .line 548
    .restart local v8       #value:F
    :pswitch_b0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 549
    .local v3, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 550
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 552
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f80

    sub-float/2addr v11, v8

    mul-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    mul-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 554
    invoke-virtual {p1, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 555
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getIconPaintColor()[F

    move-result-object v2

    .line 556
    .local v2, color:[F
    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    const/4 v12, 0x2

    aget v12, v2, v12

    const/4 v13, 0x3

    aget v13, v2, v13

    invoke-virtual {p1, v10, v11, v12, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 557
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 558
    const-string v10, "additionalAlpha"

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    .line 559
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    if-eqz v10, :cond_11b

    .line 560
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v10, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 561
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    .line 564
    :cond_11b
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v10, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 565
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_61

    .line 579
    .end local v2           #color:[F
    .end local v3           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v5           #normalized:F
    .end local v8           #value:F
    :cond_125
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 580
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 582
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getIconPaintColor()[F

    move-result-object v2

    .line 583
    .restart local v2       #color:[F
    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    const/4 v12, 0x2

    aget v12, v2, v12

    const/4 v13, 0x3

    aget v13, v2, v13

    invoke-virtual {p1, v10, v11, v12, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 584
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 585
    const-string v10, "additionalAlpha"

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    .line 586
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    if-eqz v10, :cond_172

    .line 587
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 588
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    .line 590
    :cond_172
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v10, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 591
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_76

    .line 610
    .end local v2           #color:[F
    .restart local v0       #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    .restart local v1       #animate:Z
    .restart local v4       #i:I
    .restart local v6       #size:I
    .restart local v9       #xOffset:I
    :cond_17c
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    const/4 v11, 0x0

    aput-object v11, v10, v4

    goto/16 :goto_a6

    .line 615
    .end local v0           #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    .end local v9           #xOffset:I
    :cond_183
    if-eqz v1, :cond_189

    .line 616
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->postInvalidate()V

    .line 621
    .end local v1           #animate:Z
    .end local v4           #i:I
    .end local v6           #size:I
    :cond_188
    :goto_188
    return-void

    .line 618
    .restart local v1       #animate:Z
    .restart local v4       #i:I
    .restart local v6       #size:I
    :cond_189
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    goto :goto_188

    .line 546
    nop

    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_b0
    .end packed-switch
.end method

.method private drop(FF)Z
    .registers 15
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 1026
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 1028
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    .line 1029
    .local v9, coordinates:[I
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p0, v1, v2, v9}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v0

    .line 1030
    .local v0, dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->dropParent:Ljava/lang/Object;

    .line 1031
    const/4 v10, 0x0

    .line 1032
    .local v10, res:Z
    if-eqz v0, :cond_5e

    .line 1033
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    aget v2, v9, v11

    aget v3, v9, v7

    iget v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/DropTarget;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1035
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    .line 1037
    const/4 v10, 0x1

    .line 1048
    :goto_3f
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->dropParent:Ljava/lang/Object;

    .line 1049
    return v10

    .line 1039
    :cond_4b
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move v3, p1

    move v4, p2

    move v7, v11

    invoke-interface/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    .line 1041
    const/4 v10, 0x1

    goto :goto_3f

    .line 1044
    :cond_5e
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move v3, p1

    move v4, p2

    move v7, v11

    invoke-interface/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    .line 1046
    const/4 v10, 0x1

    goto :goto_3f
.end method

.method private endDrag()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 708
    sget-object v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    .line 709
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v0, :cond_2b

    .line 710
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 714
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 717
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v0, :cond_2b

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    .line 721
    :cond_2b
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    .line 722
    return-void
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;
    .registers 24
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 1057
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 1058
    .local v15, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 1059
    .local v12, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    add-int v16, p2, v5

    .line 1060
    .local v16, scrolledX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    add-int v17, p3, v5

    .line 1061
    .local v17, scrolledY:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 1063
    .local v14, ignoredDropTarget:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v5, :cond_1f

    .line 1064
    const/4 v14, 0x0

    .line 1066
    :cond_1f
    add-int/lit8 v13, v12, -0x1

    .local v13, i:I
    :goto_21
    if-ltz v13, :cond_90

    .line 1067
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1068
    .local v11, child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8d

    if-eq v11, v14, :cond_8d

    .line 1069
    instance-of v5, v11, Lcom/sec/android/app/twlauncher/DropTarget;

    if-eqz v5, :cond_84

    move-object v5, v11

    .line 1070
    check-cast v5, Lcom/sec/android/app/twlauncher/DropTarget;

    invoke-interface {v5, v15}, Lcom/sec/android/app/twlauncher/DropTarget;->getDropHitRect(Landroid/graphics/Rect;)V

    .line 1074
    :goto_3b
    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 1075
    const/16 v18, 0x0

    .line 1076
    .local v18, target:Lcom/sec/android/app/twlauncher/DropTarget;
    instance-of v5, v11, Landroid/view/ViewGroup;

    if-eqz v5, :cond_5e

    .line 1077
    iget v5, v15, Landroid/graphics/Rect;->left:I

    sub-int p2, v16, v5

    .line 1078
    iget v5, v15, Landroid/graphics/Rect;->top:I

    sub-int p3, v17, v5

    move-object v5, v11

    .line 1079
    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v18

    .line 1081
    :cond_5e
    if-nez v18, :cond_8a

    .line 1082
    instance-of v5, v11, Lcom/sec/android/app/twlauncher/DropTarget;

    if-eqz v5, :cond_8d

    move-object v4, v11

    .line 1084
    check-cast v4, Lcom/sec/android/app/twlauncher/DropTarget;

    .line 1085
    .local v4, childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-interface/range {v4 .. v10}, Lcom/sec/android/app/twlauncher/DropTarget;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 1086
    const/4 v5, 0x0

    aput p2, p4, v5

    .line 1087
    const/4 v5, 0x1

    aput p3, p4, v5

    .line 1088
    check-cast v11, Lcom/sec/android/app/twlauncher/DropTarget;

    .line 1100
    .end local v4           #childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    .end local v11           #child:Landroid/view/View;
    .end local v18           #target:Lcom/sec/android/app/twlauncher/DropTarget;
    :goto_83
    return-object v11

    .line 1072
    .restart local v11       #child:Landroid/view/View;
    :cond_84
    invoke-virtual {v11, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_3b

    .line 1090
    .restart local v4       #childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    .restart local v18       #target:Lcom/sec/android/app/twlauncher/DropTarget;
    :cond_88
    const/4 v11, 0x0

    goto :goto_83

    .end local v4           #childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    :cond_8a
    move-object/from16 v11, v18

    .line 1094
    goto :goto_83

    .line 1066
    .end local v18           #target:Lcom/sec/android/app/twlauncher/DropTarget;
    :cond_8d
    add-int/lit8 v13, v13, -0x1

    goto :goto_21

    .line 1100
    .end local v11           #child:Landroid/view/View;
    :cond_90
    const/4 v11, 0x0

    goto :goto_83
.end method

.method private getIconPaintColor()[F
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 980
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 981
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    .line 982
    sget-object v1, Lcom/sec/android/app/twlauncher/DragLayer$1;->$SwitchMap$com$sec$android$app$twlauncher$DragLayer$PaintRegion:[I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_58

    .line 1016
    aput v3, v0, v4

    .line 1017
    aput v3, v0, v5

    .line 1018
    aput v3, v0, v6

    .line 1019
    aput v3, v0, v7

    .line 1022
    :goto_21
    return-object v0

    .line 984
    :pswitch_22
    aput v3, v0, v4

    .line 985
    aput v3, v0, v5

    .line 986
    aput v3, v0, v6

    .line 987
    const/high16 v1, 0x3f00

    aput v1, v0, v7

    goto :goto_21

    .line 991
    :pswitch_2d
    aput v3, v0, v4

    .line 992
    const v1, 0x3f75c28f

    aput v1, v0, v5

    .line 993
    const/high16 v1, 0x3f80

    aput v1, v0, v6

    .line 994
    const/high16 v1, 0x3f00

    aput v1, v0, v7

    goto :goto_21

    .line 998
    :pswitch_3d
    aput v3, v0, v4

    .line 999
    aput v3, v0, v5

    .line 1000
    aput v3, v0, v6

    .line 1001
    aput v3, v0, v7

    .line 1002
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    goto :goto_21

    .line 1006
    :pswitch_4a
    const v1, 0x3f1eb852

    aput v1, v0, v4

    .line 1007
    aput v3, v0, v5

    .line 1008
    aput v3, v0, v6

    .line 1009
    const/high16 v1, 0x3f00

    aput v1, v0, v7

    goto :goto_21

    .line 982
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2d
        :pswitch_3d
        :pswitch_4a
    .end packed-switch
.end method

.method private getPaintForPos(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "ev"

    .prologue
    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 468
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 470
    .local v2, y:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 471
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mRegion:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 472
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mPaintRegion:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    .line 485
    :goto_2e
    return-void

    .line 470
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 477
    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 480
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkForScroll(FF)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 481
    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRANS:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    goto :goto_2e

    .line 483
    :cond_46
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    goto :goto_2e
.end method

.method private startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .registers 23
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_16

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 316
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v3, :cond_dd

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragStart(Landroid/view/View;FFLcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 325
    :cond_3f
    :goto_3f
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v3, :cond_fc

    move-object/from16 v3, p1

    .line 326
    check-cast v3, Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIsDragging(Z)V

    .line 331
    :cond_4d
    :goto_4d
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_73

    .line 332
    const v3, 0x7f06000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 333
    .local v10, child:Landroid/view/View;
    if-eqz v10, :cond_10c

    .line 334
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    .line 335
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    .line 342
    .end local v10           #child:Landroid/view/View;
    :cond_73
    :goto_73
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 343
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v17

    .line 346
    .local v17, willNotCache:Z
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v11

    .line 351
    .local v11, color:I
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 353
    if-eqz v11, :cond_95

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 356
    :cond_95
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->buildDrawingCache()V

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 358
    .local v14, viewBitmap:Landroid/graphics/Bitmap;
    if-nez v14, :cond_11e

    .line 359
    const-string v3, "Launcher.DragLayer"

    const-string v4, "startDrag().. drawing cache is a null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_ba

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Failed to initialize dragging for the widget"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 365
    :cond_ba
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 366
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 367
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-nez v3, :cond_dc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v3, :cond_dc

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    invoke-interface {v3}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    .line 431
    :cond_dc
    :goto_dc
    return-void

    .line 320
    .end local v11           #color:I
    .end local v14           #viewBitmap:Landroid/graphics/Bitmap;
    .end local v17           #willNotCache:Z
    :cond_dd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v3, :cond_3f

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragStart(Landroid/view/View;FFLcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    goto/16 :goto_3f

    .line 327
    :cond_fc
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-eqz v3, :cond_4d

    move-object/from16 v3, p1

    .line 328
    check-cast v3, Lcom/sec/android/app/twlauncher/BubbleTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setIsDragging(Z)V

    goto/16 :goto_4d

    .line 337
    .restart local v10       #child:Landroid/view/View;
    :cond_10c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    goto/16 :goto_73

    .line 375
    .end local v10           #child:Landroid/view/View;
    .restart local v11       #color:I
    .restart local v14       #viewBitmap:Landroid/graphics/Bitmap;
    .restart local v17       #willNotCache:Z
    :cond_11e
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 376
    .local v16, width:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 378
    .local v12, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 379
    .local v13, tag:Ljava/lang/Object;
    if-eqz v13, :cond_1fb

    instance-of v3, v13, Lcom/sec/android/app/twlauncher/Widget;

    if-nez v3, :cond_134

    instance-of v3, v13, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v3, :cond_1fb

    .line 380
    :cond_134
    const v3, 0x3f866666

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    .line 384
    :goto_13b
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    .line 385
    const/16 v3, 0x64

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationDuration:I

    .line 386
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 387
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    .line 389
    invoke-static {v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 390
    .local v15, viewCache:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_162

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 392
    :cond_162
    move/from16 v0, v16

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v15, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 396
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 397
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 400
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v3, v16

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    .line 401
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v12

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    .line 403
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragSource;->onPreDragStart(Landroid/view/View;I)V

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    .line 407
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 408
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 409
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    .line 410
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAction:I

    .line 411
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    .line 412
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x23

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 415
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mEnteredRegion:Z

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 428
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    .line 430
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_dc

    .line 382
    .end local v15           #viewCache:Landroid/graphics/Bitmap;
    :cond_1fb
    const v3, 0x3f8ccccd

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    goto/16 :goto_13b
.end method


# virtual methods
.method public addDragRegion(Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;)Z
    .registers 3
    .parameter "info"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .registers 5
    .parameter "aEv"
    .parameter "aExtraMsg"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_13

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 810
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    .line 814
    :cond_13
    return-void
.end method

.method public cancelDrag()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1236
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1237
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    .line 1238
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    if-eqz v0, :cond_18

    .line 1239
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    .line 1240
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 1243
    :cond_18
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v0, :cond_3d

    .line 1244
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 1245
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_27

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1248
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_34

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1251
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v0, :cond_3d

    .line 1252
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    .line 1255
    :cond_3d
    return-void
.end method

.method public cancelPendingScroll()Z
    .registers 4

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->isQueued()Z

    move-result v0

    .line 1229
    .local v0, pendingScroll:Z
    if-eqz v0, :cond_13

    .line 1230
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1231
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    .line 1233
    :cond_13
    return v0
.end method

.method public centerViewToLastTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 5
    .parameter "view"

    .prologue
    .line 253
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 254
    .local v0, centerPos:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->offset(FF)V

    .line 255
    return-object v0
.end method

.method public clearGenericViewAnims(I)V
    .registers 4
    .parameter "aId"

    .prologue
    .line 698
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GenericViewAnim;

    .line 699
    .local v0, res:Lcom/sec/android/app/twlauncher/GenericViewAnim;
    if-eqz v0, :cond_d

    .line 700
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->clear()V

    .line 702
    :cond_d
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 496
    .local v0, time:J
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 519
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 11
    .parameter "canvas"

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v5, p1, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z

    move-result v3

    .line 646
    .local v3, more:Z
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v5, :cond_53

    .line 647
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    if-eqz v5, :cond_1c

    .line 648
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, p1, v6}, Lcom/sec/android/app/twlauncher/ShadowSurface;->update(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 649
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    .line 651
    :cond_1c
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 652
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 653
    const v5, 0x3f19999a

    invoke-virtual {p1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 654
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowX:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowY:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v5, p1, v6, v7}, Lcom/sec/android/app/twlauncher/ShadowSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;FF)V

    .line 658
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 661
    :cond_53
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 663
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5a
    if-ge v1, v4, :cond_78

    .line 664
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 665
    .local v2, key:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GenericViewAnim;

    .line 666
    .local v0, anim:Lcom/sec/android/app/twlauncher/GenericViewAnim;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->isOwnerDrawn()Z

    move-result v5

    if-nez v5, :cond_75

    .line 667
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 663
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 670
    .end local v0           #anim:Lcom/sec/android/app/twlauncher/GenericViewAnim;
    .end local v2           #key:I
    :cond_78
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/DragLayer;->drawDragIconGL(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 671
    return v3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    .line 727
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 728
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    .line 730
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    .line 731
    .local v0, glSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTransRefList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 732
    :cond_1f
    const-string v1, "Launcher.DragLayer"

    const-string v2, "this.getParent() or glSurfaceViewGroup.getTransRefList() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_26
    :goto_26
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 733
    :cond_2b
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTransformEventEnabled:Z

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-nez v1, :cond_26

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTransRefList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 738
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->processTransformRefEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 744
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->isAbsRefEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 750
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    .line 751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_26

    .line 752
    invoke-virtual {p1, v4, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_26
.end method

.method public drawGenericViewAnims(ILcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 6
    .parameter "aId"
    .parameter "aCanvas"

    .prologue
    .line 676
    const/4 v1, 0x0

    .line 677
    .local v1, res:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GenericViewAnim;

    .line 679
    .local v0, anim:Lcom/sec/android/app/twlauncher/GenericViewAnim;
    if-eqz v0, :cond_15

    .line 680
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 681
    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    .line 682
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 684
    :cond_15
    return v1
.end method

.method findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 1053
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDragScroller()Lcom/sec/android/app/twlauncher/DragScroller;
    .registers 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v0, :cond_7

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    .line 1189
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    goto :goto_6
.end method

.method getDraggedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    return-object v0
.end method

.method public getGenericViewAnims(IZ)Lcom/sec/android/app/twlauncher/GenericViewAnim;
    .registers 5
    .parameter "aId"
    .parameter "aOwnerDrawn"

    .prologue
    .line 688
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GenericViewAnim;

    .line 689
    .local v0, res:Lcom/sec/android/app/twlauncher/GenericViewAnim;
    if-nez v0, :cond_17

    .line 690
    new-instance v0, Lcom/sec/android/app/twlauncher/GenericViewAnim;

    .end local v0           #res:Lcom/sec/android/app/twlauncher/GenericViewAnim;
    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;-><init>()V

    .line 691
    .restart local v0       #res:Lcom/sec/android/app/twlauncher/GenericViewAnim;
    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->setOwnerDrawn(Z)V

    .line 692
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mGenericViewAnims:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 694
    :cond_17
    return-object v0
.end method

.method public getLastMotion()Landroid/graphics/PointF;
    .registers 4

    .prologue
    .line 463
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iget v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getLastTouchPoint()Landroid/graphics/PointF;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 1259
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 1260
    return-void
.end method

.method public isLastTouchAmbiguous()Z
    .registers 2

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    .line 766
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 768
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 769
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 771
    .local v2, y:F
    packed-switch v0, :pswitch_data_38

    .line 796
    :goto_f
    :pswitch_f
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    return v3

    .line 777
    :pswitch_12
    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    .line 778
    iput v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    .line 779
    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownX:F

    .line 780
    iput v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownY:F

    .line 781
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    .line 782
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/DragLayer;->resetVelTracker(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 788
    :pswitch_21
    const-string v3, "onInterceptTouch"

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 789
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    if-eqz v3, :cond_33

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 790
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 792
    :cond_33
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto :goto_f

    .line 771
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_12
        :pswitch_21
        :pswitch_f
        :pswitch_21
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 29
    .parameter "ev"

    .prologue
    .line 834
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-nez v3, :cond_8

    .line 835
    const/4 v3, 0x0

    .line 921
    :goto_7
    return v3

    .line 837
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 838
    .local v10, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    .line 839
    .local v25, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    .line 840
    .local v26, y:F
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 841
    packed-switch v10, :pswitch_data_1bc

    .line 921
    :goto_22
    :pswitch_22
    const/4 v3, 0x1

    goto :goto_7

    .line 848
    :pswitch_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    move/from16 v19, v0

    .line 849
    .local v19, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    move/from16 v20, v0

    .line 851
    .local v20, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move/from16 v22, v0

    .line 852
    .local v22, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move/from16 v23, v0

    .line 854
    .local v23, touchY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    move/from16 v16, v0

    .line 855
    .local v16, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    move/from16 v17, v0

    .line 857
    .local v17, offsetY:I
    move/from16 v0, v19

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    add-float/2addr v3, v4

    sub-float v3, v3, v22

    move/from16 v0, v16

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v15, v3

    .line 858
    .local v15, left:I
    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    add-float/2addr v3, v4

    sub-float v3, v3, v23

    move/from16 v0, v17

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v21, v0

    .line 860
    .local v21, top:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 861
    .local v12, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 862
    .local v24, width:I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 864
    .local v14, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 865
    .local v18, rect:Landroid/graphics/Rect;
    add-int/lit8 v3, v15, -0x1

    add-int/lit8 v4, v21, -0x1

    add-int v5, v15, v24

    add-int/lit8 v5, v5, 0x1

    add-int v6, v21, v14

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 867
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    .line 868
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    .line 870
    move/from16 v0, v19

    int-to-float v3, v0

    add-float v3, v3, v25

    sub-float v3, v3, v22

    move/from16 v0, v16

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v15, v3

    .line 871
    move/from16 v0, v20

    int-to-float v3, v0

    add-float v3, v3, v26

    sub-float v3, v3, v23

    move/from16 v0, v17

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v21, v0

    .line 874
    add-int/lit8 v3, v15, -0x1

    add-int/lit8 v4, v21, -0x1

    add-int v5, v15, v24

    add-int/lit8 v5, v5, 0x1

    add-int v6, v21, v14

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 876
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    .line 877
    .local v11, coordinates:[I
    move/from16 v0, v25

    float-to-int v3, v0

    move/from16 v0, v26

    float-to-int v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v13

    .line 879
    .local v13, dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    if-eqz v13, :cond_154

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    if-ne v3, v13, :cond_112

    .line 881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    const/4 v5, 0x0

    aget v5, v11, v5

    const/4 v6, 0x1

    aget v6, v11, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 898
    :cond_f9
    :goto_f9
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    .line 899
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 903
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/DragLayer;->getPaintForPos(Landroid/view/MotionEvent;)V

    .line 904
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkDraggingTouchSlop(FF)V

    goto/16 :goto_22

    .line 884
    :cond_112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    if-eqz v3, :cond_137

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    const/4 v5, 0x0

    aget v5, v11, v5

    const/4 v6, 0x1

    aget v6, v11, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 888
    :cond_137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    const/4 v3, 0x0

    aget v5, v11, v3

    const/4 v3, 0x1

    aget v6, v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v8, v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v3, v13

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    goto :goto_f9

    .line 892
    :cond_154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    if-eqz v3, :cond_f9

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    const/4 v5, 0x0

    aget v5, v11, v5

    const/4 v6, 0x1

    aget v6, v11, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    goto :goto_f9

    .line 907
    .end local v11           #coordinates:[I
    .end local v12           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v13           #dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    .end local v14           #height:I
    .end local v15           #left:I
    .end local v16           #offsetX:I
    .end local v17           #offsetY:I
    .end local v18           #rect:Landroid/graphics/Rect;
    .end local v19           #scrollX:I
    .end local v20           #scrollY:I
    .end local v21           #top:I
    .end local v22           #touchX:F
    .end local v23           #touchY:F
    .end local v24           #width:I
    :pswitch_17a
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkDraggingTouchSlop(FF)V

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    .line 910
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    if-eqz v3, :cond_1a8

    .line 911
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    .line 912
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 914
    :cond_1a8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto/16 :goto_22

    .line 917
    :pswitch_1ad
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkDraggingTouchSlop(FF)V

    .line 918
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto/16 :goto_22

    .line 841
    nop

    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_22
        :pswitch_17a
        :pswitch_24
        :pswitch_1ad
    .end packed-switch
.end method

.method public removeDragRegion(Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;)Z
    .registers 3
    .parameter "info"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resetVelTracker(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "aEv"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_12

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 822
    :goto_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    .line 823
    const-string v0, "Initial Point"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 824
    return-void

    .line 820
    :cond_12
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    goto :goto_9
.end method

.method public setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V
    .registers 2
    .parameter "p"

    .prologue
    .line 971
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    .line 972
    return-void
.end method

.method public setDragListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    .line 1113
    return-void
.end method

.method public setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    .line 1117
    return-void
.end method

.method public setDragMenuScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V
    .registers 2
    .parameter "scroller"

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    .line 1109
    return-void
.end method

.method public setDragScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V
    .registers 2
    .parameter "scroller"

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    .line 1105
    return-void
.end method

.method public setDragSource(Lcom/sec/android/app/twlauncher/DragSource;IIII)V
    .registers 14
    .parameter "aDragSource"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    if-eqz v0, :cond_12

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/DragSource;->onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 271
    :cond_12
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    if-eqz v0, :cond_26

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/DragSource;->onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 275
    :cond_26
    return-void
.end method

.method setIgnoredDropTarget(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 1135
    return-void
.end method

.method public setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 975
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    .line 977
    return-void
.end method

.method setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V
    .registers 2
    .parameter "workspace"

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1125
    return-void
.end method

.method public startAnimation(Landroid/view/View;FFFFFFILcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V
    .registers 22
    .parameter "v"
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "duration"
    .parameter "lstnr"

    .prologue
    .line 1203
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    array-length v11, v2

    .line 1204
    .local v11, size:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4
    if-ge v10, v11, :cond_32

    .line 1205
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    aget-object v2, v2, v10

    if-nez v2, :cond_33

    .line 1206
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    new-instance v1, Lcom/sec/android/app/twlauncher/DragAnimation;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, p9

    invoke-direct {v1, v3, v0}, Lcom/sec/android/app/twlauncher/DragAnimation;-><init>(Landroid/view/animation/Interpolator;Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V

    aput-object v1, v2, v10

    .local v1, ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 1208
    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/twlauncher/DragAnimation;->setAnimation(Landroid/view/View;FFFFFFI)V

    .line 1209
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    .line 1210
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 1214
    .end local v1           #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    :cond_32
    return-void

    .line 1204
    :cond_33
    add-int/lit8 v10, v10, 0x1

    goto :goto_4
.end method

.method public startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V
    .registers 8
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "offset"

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    .line 281
    iget v0, p5, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    .line 282
    iget v0, p5, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    .line 283
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/DragLayer;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 285
    return-void
.end method

.method public startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .registers 9
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 289
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 291
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 293
    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    .line 294
    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    .line 295
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/DragLayer;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 296
    return-void
.end method
