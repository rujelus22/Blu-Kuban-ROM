.class public final Lcom/cooliris/media/GridInputProcessor;
.super Ljava/lang/Object;
.source "GridInputProcessor.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/cooliris/media/MotionDetector$MotionListener;
.implements Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;,
        Lcom/cooliris/media/GridInputProcessor$GestureType;
    }
.end annotation


# static fields
.field private static mCurrentScaleSlot:I

.field private static mScale:F


# instance fields
.field private TILTOUT_SEC:J

.field private TILTOUT_THRESHOLD:F

.field private iCurrentFocusSlot:I

.field private istwist:Z

.field private mActionCode:I

.field private mCamera:Lcom/cooliris/media/GridCamera;

.field private mContext:Landroid/content/Context;

.field private mCurrentFocusIsPressed:Z

.field private mCurrentFocusSlot:I

.field private mCurrentSelectedSlot:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayItems:[Lcom/cooliris/media/DisplayItem;

.field private mDpadIgnoreTime:F

.field private mFingerZoomPressedTime:J

.field private mFirstTouchPosX:F

.field private mFirstTouchPosY:F

.field private final mFocusControl:Lcom/cooliris/media/GridFocusControl;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLayer:Lcom/cooliris/media/GridLayer;

.field private mMotionDetector:Lcom/cooliris/media/MotionDetector;

.field private mPool:Lcom/cooliris/media/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/Pool",
            "<",
            "Lcom/cooliris/media/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private mPressCount:I

.field private mPrevHitEdge:Z

.field private mPrevMotionPosX:F

.field private mPrevMotionPosY:F

.field private mPrevShakeValueHighPass:F

.field private mPrevTiltValueLowPass:F

.field private mPrevTouchPosX:F

.field private mPrevTouchPosY:F

.field private mPrevTouchTime:J

.field private mPreviousSelectedSlot:I

.field private mProcessTouch:Z

.field private mRenderView:Lcom/cooliris/media/RenderView;

.field private mScaleEndTime:J

.field private mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

.field private mShakeValue:F

.field private mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

.field private mTouchFeedbackDelivered:Z

.field private mTouchMoved:Z

.field private mTouchPosX:I

.field private mTouchPosY:I

.field private mTouchSlop:I

.field private mTouchVelX:F

.field private mTouchVelY:F

.field private mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/GridLayer;Lcom/cooliris/media/RenderView;Lcom/cooliris/media/Pool;[Lcom/cooliris/media/DisplayItem;)V
    .registers 12
    .parameter "context"
    .parameter "camera"
    .parameter "layer"
    .parameter "view"
    .parameter
    .parameter "displayItems"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cooliris/media/GridCamera;",
            "Lcom/cooliris/media/GridLayer;",
            "Lcom/cooliris/media/RenderView;",
            "Lcom/cooliris/media/Pool",
            "<",
            "Lcom/cooliris/media/Vector3f;",
            ">;[",
            "Lcom/cooliris/media/DisplayItem;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    const/4 v4, -0x1

    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v2, 0x0

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mDpadIgnoreTime:F

    .line 128
    new-instance v2, Lcom/cooliris/media/GridFocusControl;

    invoke-direct {v2}, Lcom/cooliris/media/GridFocusControl;-><init>()V

    iput-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mFocusControl:Lcom/cooliris/media/GridFocusControl;

    .line 144
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cooliris/media/GridInputProcessor;->istwist:Z

    .line 1810
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->TILTOUT_THRESHOLD:F

    .line 1813
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/cooliris/media/GridInputProcessor;->TILTOUT_SEC:J

    .line 152
    iput-object p5, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    .line 153
    iput-object p2, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 154
    iput-object p3, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 155
    iput v4, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 156
    iput v4, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    .line 157
    sput v4, Lcom/cooliris/media/GridInputProcessor;->mCurrentScaleSlot:I

    .line 158
    iput-object p1, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    .line 159
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mDisplay:Landroid/view/Display;

    .line 161
    iput-object p6, p0, Lcom/cooliris/media/GridInputProcessor;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    .line 162
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 163
    new-instance v2, Lcom/cooliris/media/ScaleGestureDetector;

    invoke-direct {v2, p1, p0}, Lcom/cooliris/media/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/cooliris/media/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

    .line 164
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 165
    sget-object v2, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    iput-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    .line 166
    const/high16 v2, 0x3f80

    sput v2, Lcom/cooliris/media/GridInputProcessor;->mScale:F

    .line 167
    iput-object p4, p0, Lcom/cooliris/media/GridInputProcessor;->mRenderView:Lcom/cooliris/media/RenderView;

    .line 168
    new-instance v2, Lcom/cooliris/media/MotionDetector;

    invoke-direct {v2, p1, p0}, Lcom/cooliris/media/MotionDetector;-><init>(Landroid/content/Context;Lcom/cooliris/media/MotionDetector$MotionListener;)V

    iput-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    .line 170
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 172
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mDisplay:Landroid/view/Display;

    .line 174
    iput v4, p0, Lcom/cooliris/media/GridInputProcessor;->mPreviousSelectedSlot:I

    .line 175
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 176
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchSlop:I

    .line 177
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/cooliris/media/GridInputProcessor;->mScaleEndTime:J

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/GridInputProcessor;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cooliris/media/GridInputProcessor;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/cooliris/media/GridInputProcessor;->TILTOUT_SEC:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/cooliris/media/GridInputProcessor;)Lcom/cooliris/media/GridLayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    return-object v0
.end method

.method private getBorder()I
    .registers 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getBorder()I

    move-result v0

    return v0
.end method

.method private getFlickThreshold()I
    .registers 3

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/cooliris/media/GridInputProcessor;->istwist:Z

    if-eqz v0, :cond_b

    .line 984
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mWidth:I

    div-int/lit8 v0, v0, 0x8

    .line 986
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mWidth:I

    div-int/lit8 v0, v0, 0x3e

    int-to-float v0, v0

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_a
.end method

.method private getMovingDirection(II)I
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 776
    const/4 v0, 0x0

    .line 778
    .local v0, border:I
    iget v1, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosX:F

    int-to-float v2, p1

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_c

    .line 779
    or-int/lit8 v0, v0, 0x2

    .line 781
    :cond_c
    iget v1, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosX:F

    int-to-float v2, p1

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_16

    .line 782
    or-int/lit8 v0, v0, 0x4

    .line 784
    :cond_16
    iget v1, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosY:F

    int-to-float v2, p2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_20

    .line 785
    or-int/lit8 v0, v0, 0x1

    .line 787
    :cond_20
    iget v1, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosY:F

    int-to-float v2, p2

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2a

    .line 788
    or-int/lit8 v0, v0, 0x8

    .line 791
    :cond_2a
    return v0
.end method

.method private isFirstSlot()Z
    .registers 2

    .prologue
    .line 2072
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isInValidKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 586
    const/16 v0, 0x52

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x16

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x15

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x13

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x17

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x19

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x53

    if-eq p1, v0, :cond_3d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x54

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_3d

    const/4 v0, 0x1

    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method private isLastSlot()Z
    .registers 3

    .prologue
    .line 2068
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getCompleteRange()Lcom/cooliris/media/IndexRange;

    move-result-object v1

    iget v1, v1, Lcom/cooliris/media/IndexRange;->end:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private motionMoved(IIF)V
    .registers 22
    .parameter "posX"
    .parameter "posY"
    .parameter "timeElapsedx"

    .prologue
    .line 796
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x3ff0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_10

    .line 879
    :goto_f
    return-void

    .line 800
    :cond_10
    move/from16 v0, p1

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cooliris/media/GridInputProcessor;->mPrevMotionPosX:F

    sub-float/2addr v14, v15

    neg-float v3, v14

    .line 804
    .local v3, deltaX:F
    move/from16 v0, p2

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cooliris/media/GridInputProcessor;->mPrevMotionPosY:F

    sub-float/2addr v14, v15

    neg-float v4, v14

    .line 806
    .local v4, deltaY:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    .line 807
    .local v12, pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    invoke-virtual {v12}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/Vector3f;

    .line 808
    .local v6, firstPosition:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v12}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cooliris/media/Vector3f;

    .line 809
    .local v7, lastPosition:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v12}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Vector3f;

    .line 810
    .local v2, deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v12}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/cooliris/media/Vector3f;

    .line 812
    .local v13, worldPosDelta:Lcom/cooliris/media/Vector3f;
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/GridLayer;->getDeltaAnchorPosition()Lcom/cooliris/media/Vector3f;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/GridLayer;->getLayoutInterface()Lcom/cooliris/media/GridLayoutInterface;

    move-result-object v9

    .line 814
    .local v9, layout:Lcom/cooliris/media/LayoutInterface;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-static {v14, v15, v9, v2, v6}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 816
    const/4 v8, 0x0

    .line 817
    .local v8, lastSlotIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/GridLayer;->getCompleteRange()Lcom/cooliris/media/IndexRange;

    move-result-object v1

    .line 818
    .local v1, completeRange:Lcom/cooliris/media/IndexRange;
    monitor-enter v1
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_159
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_63} :catch_144

    .line 819
    :try_start_63
    iget v8, v1, Lcom/cooliris/media/IndexRange;->end:I

    .line 820
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_141

    .line 821
    :try_start_66
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-static {v8, v14, v9, v2, v7}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v15, 0x0

    invoke-virtual {v14, v3, v4, v15, v13}, Lcom/cooliris/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 825
    iget v3, v13, Lcom/cooliris/media/Vector3f;->x:F

    .line 826
    iget v4, v13, Lcom/cooliris/media/Vector3f;->y:F

    .line 828
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const v15, 0x3a83126f

    invoke-virtual {v14, v15}, Lcom/cooliris/media/GridCamera;->update(F)V

    .line 830
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v14

    const/high16 v16, 0x3f80

    cmpl-float v14, v14, v16

    if-nez v14, :cond_156

    const/4 v14, 0x0

    :goto_96
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v3, v14, v0}, Lcom/cooliris/media/GridCamera;->moveBy(FFF)V

    .line 832
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v14, v14, Lcom/cooliris/media/GridCamera;->mScale:F

    mul-float/2addr v3, v14

    .line 833
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v14, v14, Lcom/cooliris/media/GridCamera;->mScale:F
    :try_end_aa
    .catchall {:try_start_66 .. :try_end_aa} :catchall_159
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_aa} :catch_144

    mul-float/2addr v4, v14

    .line 837
    invoke-virtual {v12, v6}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 838
    invoke-virtual {v12, v7}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 839
    invoke-virtual {v12, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 840
    invoke-virtual {v12, v13}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 842
    .end local v1           #completeRange:Lcom/cooliris/media/IndexRange;
    .end local v8           #lastSlotIndex:I
    .end local v9           #layout:Lcom/cooliris/media/LayoutInterface;
    :goto_b7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v14

    const/high16 v15, 0x3f80

    cmpl-float v14, v14, v15

    if-nez v14, :cond_f9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_f9

    .line 843
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v14

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v14, v0, :cond_167

    const/4 v14, 0x1

    :goto_e5
    move/from16 v0, v16

    invoke-virtual {v15, v0, v14, v6, v7}, Lcom/cooliris/media/GridCamera;->computeConstraints(ZZLcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)Z

    move-result v14

    if-eqz v14, :cond_f9

    .line 846
    const/4 v3, 0x0

    .line 848
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchFeedbackDelivered:Z

    if-nez v14, :cond_f9

    .line 849
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchFeedbackDelivered:Z

    .line 853
    :cond_f9
    mul-float v14, v3, p3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchVelX:F

    .line 854
    mul-float v14, v4, p3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchVelY:F

    .line 855
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v14, v14, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v14, v14

    const/high16 v15, 0x3f00

    mul-float v10, v14, v15

    .line 856
    .local v10, maxVelXx:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v14, v14, Lcom/cooliris/media/GridCamera;->mHeight:I

    int-to-float v11, v14

    .line 857
    .local v11, maxVelYx:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchVelX:F

    neg-float v15, v10

    invoke-static {v14, v15, v10}, Lcom/cooliris/media/FloatUtils;->clamp(FFF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchVelX:F

    .line 858
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchVelY:F

    neg-float v15, v11

    invoke-static {v14, v15, v11}, Lcom/cooliris/media/FloatUtils;->clamp(FFF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchVelY:F

    .line 859
    move/from16 v0, p1

    int-to-float v14, v0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/GridInputProcessor;->mPrevMotionPosX:F

    .line 860
    move/from16 v0, p2

    int-to-float v14, v0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/GridInputProcessor;->mPrevMotionPosY:F

    goto/16 :goto_f

    .line 820
    .end local v10           #maxVelXx:F
    .end local v11           #maxVelYx:F
    .restart local v1       #completeRange:Lcom/cooliris/media/IndexRange;
    .restart local v8       #lastSlotIndex:I
    .restart local v9       #layout:Lcom/cooliris/media/LayoutInterface;
    :catchall_141
    move-exception v14

    :try_start_142
    monitor-exit v1
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    :try_start_143
    throw v14
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_159
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_144} :catch_144

    .line 834
    .end local v1           #completeRange:Lcom/cooliris/media/IndexRange;
    .end local v8           #lastSlotIndex:I
    .end local v9           #layout:Lcom/cooliris/media/LayoutInterface;
    :catch_144
    move-exception v5

    .line 835
    .local v5, e:Ljava/lang/Exception;
    :try_start_145
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_148
    .catchall {:try_start_145 .. :try_end_148} :catchall_159

    .line 837
    invoke-virtual {v12, v6}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 838
    invoke-virtual {v12, v7}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 839
    invoke-virtual {v12, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 840
    invoke-virtual {v12, v13}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    goto/16 :goto_b7

    .end local v5           #e:Ljava/lang/Exception;
    .restart local v1       #completeRange:Lcom/cooliris/media/IndexRange;
    .restart local v8       #lastSlotIndex:I
    .restart local v9       #layout:Lcom/cooliris/media/LayoutInterface;
    :cond_156
    move v14, v4

    .line 830
    goto/16 :goto_96

    .line 837
    .end local v1           #completeRange:Lcom/cooliris/media/IndexRange;
    .end local v8           #lastSlotIndex:I
    .end local v9           #layout:Lcom/cooliris/media/LayoutInterface;
    :catchall_159
    move-exception v14

    invoke-virtual {v12, v6}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 838
    invoke-virtual {v12, v7}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 839
    invoke-virtual {v12, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 840
    invoke-virtual {v12, v13}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v14

    .line 843
    :cond_167
    const/4 v14, 0x0

    goto/16 :goto_e5
.end method

.method public static resetScale()V
    .registers 1

    .prologue
    .line 1847
    const/high16 v0, 0x3f80

    sput v0, Lcom/cooliris/media/GridInputProcessor;->mScale:F

    .line 1848
    const/4 v0, -0x1

    sput v0, Lcom/cooliris/media/GridInputProcessor;->mCurrentScaleSlot:I

    .line 1849
    return-void
.end method

.method private selectSlot(I)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1329
    iget-object v6, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 1330
    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-ne v0, v7, :cond_aa

    .line 1331
    invoke-virtual {v6, p1}, Lcom/cooliris/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/cooliris/media/DisplayItem;

    move-result-object v0

    .line 1334
    if-eqz v0, :cond_13

    .line 1335
    iput v7, v0, Lcom/cooliris/media/DisplayItem;->mZoomMode:I

    .line 1338
    :cond_13
    if-eqz v0, :cond_aa

    .line 1339
    iget-object v3, v0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    .line 1340
    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getPickIntent()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1341
    iget-object v1, v3, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 1342
    invoke-static {v1}, Lcom/cooliris/drm/DrmChecker;->isDrm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1343
    invoke-static {v1}, Lcom/cooliris/drm/DrmChecker;->hasSendAsRight(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1344
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getSetAsWallpaper()Z

    move-result v2

    .line 1345
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getSetAsContact()Z

    move-result v0

    .line 1346
    if-nez v2, :cond_3f

    if-eqz v0, :cond_58

    .line 1347
    :cond_3f
    invoke-static {v1}, Lcom/cooliris/drm/DrmChecker;->hasSetAsRight(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1348
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v2, 0x7f06007a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 1445
    :cond_57
    :goto_57
    return-void

    .line 1354
    :cond_58
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_57

    .line 1363
    :cond_6f
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 1364
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cooliris/media/GridInputProcessor$2;

    invoke-direct {v1, p0, v3}, Lcom/cooliris/media/GridInputProcessor$2;-><init>(Lcom/cooliris/media/GridInputProcessor;Lcom/cooliris/media/MediaItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_57

    .line 1374
    :cond_8e
    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1375
    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    .line 1376
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->enterSelectionMode()V

    goto :goto_57

    .line 1379
    :cond_9c
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v0

    if-ne v0, v7, :cond_ae

    .line 1380
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/cooliris/media/Utils;->playVideo(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 1381
    invoke-static {v7}, Lcom/cooliris/media/Gallery;->setPlayVideo(Z)V

    .line 1444
    :cond_aa
    :goto_aa
    invoke-virtual {p0, v7}, Lcom/cooliris/media/GridInputProcessor;->constrainCamera(Z)V

    goto :goto_57

    .line 1383
    :cond_ae
    const/4 v0, 0x0

    .line 1384
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->drmInfoUpdate()V

    .line 1386
    iget-boolean v1, v3, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-eqz v1, :cond_f8

    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v1

    if-nez v1, :cond_f8

    .line 1387
    iget-boolean v1, v3, Lcom/cooliris/media/MediaItem;->hasDrmDisplayRights:Z

    if-eqz v1, :cond_16b

    .line 1388
    iget v1, v3, Lcom/cooliris/media/MediaItem;->currentConstraint:I

    invoke-static {v1}, Lcom/cooliris/drm/DrmChecker;->hasCountConstraint(I)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1389
    iget v1, v3, Lcom/cooliris/media/MediaItem;->currentCount:I

    .line 1390
    if-ne v1, v8, :cond_124

    .line 1391
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v2, 0x7f060054

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    invoke-virtual {v3, v7}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    :cond_e0
    :goto_e0
    move-object v1, v0

    .line 1407
    :goto_e1
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->isDrmPopup()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1408
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    iput-boolean v5, v0, Lcom/cooliris/media/GridLayer;->mbFirstDecode:Z

    .line 1409
    new-instance v0, Lcom/cooliris/drm/DrmPopupCountInfo;

    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/cooliris/drm/DrmPopupCountInfo;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;ILcom/cooliris/media/GridCamera;)V

    .line 1411
    invoke-virtual {v0}, Lcom/cooliris/drm/DrmPopup;->show()V

    .line 1433
    :cond_f8
    :goto_f8
    iput p1, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    .line 1434
    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    .line 1435
    invoke-virtual {v6, v8}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 1436
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/high16 v1, 0x4000

    iput v1, v0, Lcom/cooliris/media/GridCamera;->mConvergenceSpeed:F

    .line 1437
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v1, 0x0

    iput v1, v0, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 1438
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v6, v0}, Lcom/cooliris/media/GridLayer;->checkAGIF(I)Z

    .line 1439
    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    iget v1, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getCompleteRange()Lcom/cooliris/media/IndexRange;

    move-result-object v2

    iget v2, v2, Lcom/cooliris/media/IndexRange;->end:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/cooliris/media/HudLayer;->fullscreenSelectionChanged(Lcom/cooliris/media/MediaItem;II)V

    goto :goto_aa

    .line 1394
    :cond_124
    if-ne v1, v7, :cond_e0

    .line 1395
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v2, 0x7f060055

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1397
    invoke-virtual {v3, v7}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    goto :goto_e0

    .line 1399
    :cond_13b
    iget v1, v3, Lcom/cooliris/media/MediaItem;->currentConstraint:I

    invoke-static {v1}, Lcom/cooliris/drm/DrmChecker;->hasIntervalConstraint(I)Z

    move-result v1

    if-eqz v1, :cond_1cb

    .line 1400
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->isDrmFirstView()Z

    move-result v1

    if-eqz v1, :cond_1cb

    .line 1401
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v2, 0x7f060056

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1404
    invoke-virtual {v3, v7}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    move-object v1, v0

    goto/16 :goto_e1

    .line 1414
    :cond_16b
    iget-object v0, v3, Lcom/cooliris/media/MediaItem;->drmInfo:[I

    if-eqz v0, :cond_197

    iget-object v0, v3, Lcom/cooliris/media/MediaItem;->drmInfo:[I

    aget v0, v0, v7

    invoke-static {v0}, Lcom/cooliris/drm/DrmChecker;->isSeparateDelivery(I)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 1416
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v1, 0x7f06005a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1417
    invoke-virtual {v3, v7}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 1426
    :goto_185
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->isDrmPopup()Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 1427
    new-instance v1, Lcom/cooliris/drm/DrmPopupInavailable;

    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2, v3}, Lcom/cooliris/drm/DrmPopupInavailable;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 1429
    invoke-virtual {v1}, Lcom/cooliris/drm/DrmPopup;->show()V

    goto/16 :goto_f8

    .line 1419
    :cond_197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v2, 0x7f060059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v2, 0x7f060058

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1421
    new-instance v1, Lcom/cooliris/drm/DrmPopupInavailable2;

    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/cooliris/drm/DrmPopupInavailable2;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;I)V

    .line 1423
    invoke-virtual {v1}, Lcom/cooliris/drm/DrmPopup;->show()V

    goto :goto_185

    :cond_1cb
    move-object v1, v0

    goto/16 :goto_e1
.end method

.method private touchBegan(II)V
    .registers 9
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 596
    int-to-float v2, p1

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosX:F

    .line 597
    int-to-float v2, p2

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosY:F

    .line 599
    int-to-float v2, p1

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevMotionPosX:F

    .line 600
    int-to-float v2, p2

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevMotionPosY:F

    .line 602
    int-to-float v2, p1

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mFirstTouchPosX:F

    .line 603
    int-to-float v2, p2

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mFirstTouchPosY:F

    .line 604
    iput v5, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchVelX:F

    .line 605
    iput v5, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchVelY:F

    .line 606
    iput-boolean v4, p0, Lcom/cooliris/media/GridInputProcessor;->mProcessTouch:Z

    .line 607
    sget-object v2, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    iput-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    .line 608
    iput-boolean v3, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchMoved:Z

    .line 609
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v2}, Lcom/cooliris/media/GridCamera;->stopMovementInX()V

    .line 610
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 611
    .local v1, layer:Lcom/cooliris/media/GridLayer;
    invoke-virtual {v1, p1, p2}, Lcom/cooliris/media/GridLayer;->getSlotIndexForScreenPosition(II)I

    move-result v2

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->iCurrentFocusSlot:I

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 612
    iput-boolean v4, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusIsPressed:Z

    .line 613
    iput-boolean v3, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchFeedbackDelivered:Z

    .line 616
    sget-boolean v2, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v2, :cond_3f

    .line 617
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/quramsoft/xiv/SFUtils;->setupForTouchBegin(I)V

    .line 621
    :cond_3f
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    .line 622
    .local v0, hud:Lcom/cooliris/media/HudLayer;
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v2

    if-ne v2, v4, :cond_4c

    .line 623
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->closeSelectionMenu()V

    .line 625
    :cond_4c
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_62

    .line 626
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v2

    if-ne v2, v4, :cond_63

    .line 627
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->cancelSelection()V

    .line 628
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->clear()V

    .line 629
    invoke-virtual {v0, v5}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 640
    :cond_62
    :goto_62
    return-void

    .line 631
    :cond_63
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 632
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->clear()V

    goto :goto_62
.end method

.method private touchMoved(IIF)V
    .registers 35
    .parameter "posX"
    .parameter "posY"
    .parameter "timeElapsedx"

    .prologue
    .line 643
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/GridInputProcessor;->mProcessTouch:Z

    move/from16 v27, v0

    if-eqz v27, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_54

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    move-object/from16 v21, v0

    .line 645
    .local v21, layer:Lcom/cooliris/media/GridLayer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 646
    .local v5, camera:Lcom/cooliris/media/GridCamera;
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosX:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move/from16 v0, v27

    neg-float v10, v0

    .line 650
    .local v10, deltaX:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosY:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move/from16 v0, v27

    neg-float v11, v0

    .line 651
    .local v11, deltaY:F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/high16 v28, 0x3f80

    cmpg-float v27, v27, v28

    if-gez v27, :cond_55

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/high16 v28, 0x3f80

    cmpg-float v27, v27, v28

    if-gez v27, :cond_55

    .line 769
    .end local v5           #camera:Lcom/cooliris/media/GridCamera;
    .end local v10           #deltaX:F
    .end local v11           #deltaY:F
    .end local v21           #layer:Lcom/cooliris/media/GridLayer;
    :cond_54
    :goto_54
    return-void

    .line 654
    .restart local v5       #camera:Lcom/cooliris/media/GridCamera;
    .restart local v10       #deltaX:F
    .restart local v11       #deltaY:F
    .restart local v21       #layer:Lcom/cooliris/media/GridLayer;
    :cond_55
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchMoved:Z

    move/from16 v27, v0

    if-nez v27, :cond_a5

    .line 655
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridInputProcessor;->mFirstTouchPosX:F

    move/from16 v28, v0

    sub-float v7, v27, v28

    .line 656
    .local v7, dX:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridInputProcessor;->mFirstTouchPosY:F

    move/from16 v28, v0

    sub-float v8, v27, v28

    .line 657
    .local v8, dY:F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchSlop:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-gez v27, :cond_9d

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchSlop:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_2cf

    .line 658
    :cond_9d
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/GridInputProcessor;->mTouchMoved:Z

    .line 665
    .end local v7           #dX:F
    .end local v8           #dY:F
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    move-object/from16 v25, v0

    .line 666
    .local v25, pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    invoke-virtual/range {v25 .. v25}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cooliris/media/Vector3f;

    .line 667
    .local v15, firstPosition:Lcom/cooliris/media/Vector3f;
    invoke-virtual/range {v25 .. v25}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/cooliris/media/Vector3f;

    .line 668
    .local v19, lastPosition:Lcom/cooliris/media/Vector3f;
    invoke-virtual/range {v25 .. v25}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cooliris/media/Vector3f;

    .line 669
    .local v9, deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    invoke-virtual/range {v25 .. v25}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/cooliris/media/Vector3f;

    .line 671
    .local v26, worldPosDelta:Lcom/cooliris/media/Vector3f;
    :try_start_c3
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getDeltaAnchorPosition()Lcom/cooliris/media/Vector3f;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 672
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getLayoutInterface()Lcom/cooliris/media/GridLayoutInterface;

    move-result-object v22

    .line 673
    .local v22, layout:Lcom/cooliris/media/LayoutInterface;
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v0, v5, v1, v9, v15}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 675
    const/16 v20, 0x0

    .line 676
    .local v20, lastSlotIndex:I
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getCompleteRange()Lcom/cooliris/media/IndexRange;

    move-result-object v6

    .line 677
    .local v6, completeRange:Lcom/cooliris/media/IndexRange;
    monitor-enter v6
    :try_end_e0
    .catchall {:try_start_c3 .. :try_end_e0} :catchall_308
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_e0} :catch_2ea

    .line 678
    :try_start_e0
    iget v0, v6, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v20, v0

    .line 679
    monitor-exit v6
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_2e7

    .line 680
    :try_start_e5
    move/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-static {v0, v5, v1, v9, v2}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 683
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v5, v10, v11, v0, v1}, Lcom/cooliris/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 684
    move-object/from16 v0, v26

    iget v10, v0, Lcom/cooliris/media/Vector3f;->x:F

    .line 685
    move-object/from16 v0, v26

    iget v11, v0, Lcom/cooliris/media/Vector3f;->y:F

    .line 688
    sget-boolean v27, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v27, :cond_10c

    .line 689
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/quramsoft/xiv/SFUtils;->setupForTouchMoved(F)V

    .line 693
    :cond_10c
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v27

    const/high16 v28, 0x3f80

    cmpl-float v27, v27, v28

    if-nez v27, :cond_304

    const/16 v27, 0x0

    :goto_118
    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v10, v0, v1}, Lcom/cooliris/media/GridCamera;->moveBy(FFF)V

    .line 694
    iget v0, v5, Lcom/cooliris/media/GridCamera;->mScale:F

    move/from16 v27, v0

    mul-float v10, v10, v27

    .line 695
    iget v0, v5, Lcom/cooliris/media/GridCamera;->mScale:F

    move/from16 v27, v0
    :try_end_12b
    .catchall {:try_start_e5 .. :try_end_12b} :catchall_308
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_12b} :catch_2ea

    mul-float v11, v11, v27

    .line 699
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 700
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 701
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 702
    invoke-virtual/range {v25 .. v26}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 704
    .end local v6           #completeRange:Lcom/cooliris/media/IndexRange;
    .end local v20           #lastSlotIndex:I
    .end local v22           #layout:Lcom/cooliris/media/LayoutInterface;
    :goto_141
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_15e

    .line 705
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getBoundaryLayer()Lcom/cooliris/media/BoundaryLayer;

    move-result-object v27

    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/GridInputProcessor;->getBorder()I

    move-result v28

    invoke-direct/range {p0 .. p2}, Lcom/cooliris/media/GridInputProcessor;->getMovingDirection(II)I

    move-result v29

    and-int v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/cooliris/media/BoundaryLayer;->setBorder(I)V

    .line 707
    :cond_15e
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v27

    const/high16 v28, 0x3f80

    cmpl-float v27, v27, v28

    if-nez v27, :cond_195

    .line 708
    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v27

    const/16 v29, 0x2

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_31e

    const/16 v27, 0x1

    :goto_178
    move/from16 v0, v28

    move/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v5, v0, v1, v15, v2}, Lcom/cooliris/media/GridCamera;->computeConstraints(ZZLcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)Z

    move-result v16

    .line 711
    .local v16, isConstraint:Z
    if-eqz v16, :cond_195

    .line 712
    const/4 v10, 0x0

    .line 714
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchFeedbackDelivered:Z

    move/from16 v27, v0

    if-nez v27, :cond_195

    .line 715
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/GridInputProcessor;->mTouchFeedbackDelivered:Z

    .line 720
    .end local v16           #isConstraint:Z
    :cond_195
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v27

    const/high16 v28, 0x3f80

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_1b8

    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1b8

    .line 721
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    move/from16 v27, v0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->constrainCameraForSlot(I)Z

    .line 723
    :cond_1b8
    mul-float v27, v10, p3

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridInputProcessor;->mTouchVelX:F

    .line 724
    mul-float v27, v11, p3

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridInputProcessor;->mTouchVelY:F

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f00

    mul-float v23, v27, v28

    .line 726
    .local v23, maxVelXx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v24, v0

    .line 727
    .local v24, maxVelYx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchVelX:F

    move/from16 v27, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/cooliris/media/FloatUtils;->clamp(FFF)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridInputProcessor;->mTouchVelX:F

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchVelY:F

    move/from16 v27, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/cooliris/media/FloatUtils;->clamp(FFF)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridInputProcessor;->mTouchVelY:F

    .line 729
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosX:F

    .line 730
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosY:F

    .line 732
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/GridInputProcessor;->mTouchMoved:Z

    move/from16 v27, v0

    if-nez v27, :cond_322

    .line 733
    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/GridLayer;->getSlotIndexForScreenPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 738
    :goto_252
    sget-boolean v27, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-nez v27, :cond_32c

    .line 739
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_271

    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v27

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x3ff0

    cmpl-double v27, v27, v29

    if-eqz v27, :cond_28f

    .line 740
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/cooliris/media/GridCamera;->isZAnimating()Z

    move-result v27

    if-nez v27, :cond_28f

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/cooliris/media/GridCamera;->commitMoveInX()V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/cooliris/media/GridCamera;->commitMoveInY()V

    .line 753
    :cond_28f
    :goto_28f
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v3

    .line 754
    .local v3, anchorSlotIndex:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/GridInputProcessor;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    .line 755
    .local v12, displayItems:[Lcom/cooliris/media/DisplayItem;
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getBufferedVisibleRange()Lcom/cooliris/media/IndexRange;

    move-result-object v4

    .line 756
    .local v4, bufferedVisibleRange:Lcom/cooliris/media/IndexRange;
    iget v14, v4, Lcom/cooliris/media/IndexRange;->begin:I

    .line 757
    .local v14, firstBufferedVisibleSlot:I
    iget v0, v4, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v18, v0

    .line 758
    .local v18, lastBufferedVisibleSlot:I
    monitor-enter v12

    .line 759
    if-lt v3, v14, :cond_2c9

    move/from16 v0, v18

    if-gt v3, v0, :cond_2c9

    .line 761
    sub-int v27, v3, v14

    mul-int/lit8 v27, v27, 0xc

    :try_start_2b2
    aget-object v17, v12, v27

    .line 763
    .local v17, item:Lcom/cooliris/media/DisplayItem;
    if-eqz v17, :cond_2c9

    .line 764
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v27

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Lcom/cooliris/media/HudLayer;->setTimeBarTime(J)V

    .line 767
    .end local v17           #item:Lcom/cooliris/media/DisplayItem;
    :cond_2c9
    monitor-exit v12

    goto/16 :goto_54

    :catchall_2cc
    move-exception v27

    monitor-exit v12
    :try_end_2ce
    .catchall {:try_start_2b2 .. :try_end_2ce} :catchall_2cc

    throw v27

    .line 660
    .end local v3           #anchorSlotIndex:I
    .end local v4           #bufferedVisibleRange:Lcom/cooliris/media/IndexRange;
    .end local v9           #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .end local v12           #displayItems:[Lcom/cooliris/media/DisplayItem;
    .end local v14           #firstBufferedVisibleSlot:I
    .end local v15           #firstPosition:Lcom/cooliris/media/Vector3f;
    .end local v18           #lastBufferedVisibleSlot:I
    .end local v19           #lastPosition:Lcom/cooliris/media/Vector3f;
    .end local v23           #maxVelXx:F
    .end local v24           #maxVelYx:F
    .end local v25           #pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    .end local v26           #worldPosDelta:Lcom/cooliris/media/Vector3f;
    .restart local v7       #dX:F
    .restart local v8       #dY:F
    :cond_2cf
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosX:F

    .line 661
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosY:F

    goto/16 :goto_54

    .line 679
    .end local v7           #dX:F
    .end local v8           #dY:F
    .restart local v6       #completeRange:Lcom/cooliris/media/IndexRange;
    .restart local v9       #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .restart local v15       #firstPosition:Lcom/cooliris/media/Vector3f;
    .restart local v19       #lastPosition:Lcom/cooliris/media/Vector3f;
    .restart local v20       #lastSlotIndex:I
    .restart local v22       #layout:Lcom/cooliris/media/LayoutInterface;
    .restart local v25       #pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    .restart local v26       #worldPosDelta:Lcom/cooliris/media/Vector3f;
    :catchall_2e7
    move-exception v27

    :try_start_2e8
    monitor-exit v6
    :try_end_2e9
    .catchall {:try_start_2e8 .. :try_end_2e9} :catchall_2e7

    :try_start_2e9
    throw v27
    :try_end_2ea
    .catchall {:try_start_2e9 .. :try_end_2ea} :catchall_308
    .catch Ljava/lang/Exception; {:try_start_2e9 .. :try_end_2ea} :catch_2ea

    .line 696
    .end local v6           #completeRange:Lcom/cooliris/media/IndexRange;
    .end local v20           #lastSlotIndex:I
    .end local v22           #layout:Lcom/cooliris/media/LayoutInterface;
    :catch_2ea
    move-exception v13

    .line 697
    .local v13, e:Ljava/lang/Exception;
    :try_start_2eb
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2ee
    .catchall {:try_start_2eb .. :try_end_2ee} :catchall_308

    .line 699
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 700
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 701
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 702
    invoke-virtual/range {v25 .. v26}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    goto/16 :goto_141

    .end local v13           #e:Ljava/lang/Exception;
    .restart local v6       #completeRange:Lcom/cooliris/media/IndexRange;
    .restart local v20       #lastSlotIndex:I
    .restart local v22       #layout:Lcom/cooliris/media/LayoutInterface;
    :cond_304
    move/from16 v27, v11

    .line 693
    goto/16 :goto_118

    .line 699
    .end local v6           #completeRange:Lcom/cooliris/media/IndexRange;
    .end local v20           #lastSlotIndex:I
    .end local v22           #layout:Lcom/cooliris/media/LayoutInterface;
    :catchall_308
    move-exception v27

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 700
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 701
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 702
    invoke-virtual/range {v25 .. v26}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v27

    .line 708
    :cond_31e
    const/16 v27, 0x0

    goto/16 :goto_178

    .line 735
    .restart local v23       #maxVelXx:F
    .restart local v24       #maxVelYx:F
    :cond_322
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto/16 :goto_252

    .line 746
    :cond_32c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/cooliris/media/GridCamera;->isZAnimating()Z

    move-result v27

    if-nez v27, :cond_28f

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/cooliris/media/GridCamera;->commitMoveInX()V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/cooliris/media/GridCamera;->commitMoveInY()V

    goto/16 :goto_28f
.end method

.method private vibrateShort()V
    .registers 1

    .prologue
    .line 1492
    return-void
.end method


# virtual methods
.method public checkFile(I)Z
    .registers 13
    .parameter

    .prologue
    const/4 v9, 0x0

    const v10, 0x7f06007e

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2002
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 2003
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v1

    if-ne v1, v7, :cond_b4

    .line 2004
    invoke-virtual {v0, p1}, Lcom/cooliris/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/cooliris/media/DisplayItem;

    move-result-object v0

    .line 2005
    if-eqz v0, :cond_b4

    .line 2006
    iget-object v1, v0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    .line 2008
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, p1}, Lcom/cooliris/media/GridLayer;->isItemExistInSelectedBucketList(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2009
    const-string v0, "GridInputProcessor"

    const-string v1, "Check File - File is already exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2046
    :goto_26
    return v0

    .line 2012
    :cond_27
    iget-object v0, v1, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_4f

    iget-object v0, v1, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/cooliris/drm/DrmChecker;->isDrm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2013
    const-string v0, "GridInputProcessor"

    const-string v1, "Check File - Skip DRM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    move v0, v8

    .line 2017
    goto :goto_26

    .line 2019
    :cond_4f
    invoke-virtual {v1}, Lcom/cooliris/media/MediaItem;->isPicassaItem()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2020
    const-string v0, "GridInputProcessor"

    const-string v1, "Check File - Picasa Item"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2021
    goto :goto_26

    .line 2024
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    const/16 v2, 0x100

    const/16 v3, 0x100

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_6c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5e .. :try_end_6c} :catch_8b
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6c} :catch_91
    .catch Ljava/net/URISyntaxException; {:try_start_5e .. :try_end_6c} :catch_ae

    move-result-object v0

    .line 2037
    :goto_6d
    if-nez v0, :cond_b4

    .line 2038
    const-string v0, "GridInputProcessor"

    const-string v1, "Check File - image is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    move v0, v8

    .line 2042
    goto :goto_26

    .line 2025
    :catch_8b
    move-exception v0

    .line 2026
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v9

    .line 2035
    goto :goto_6d

    .line 2027
    :catch_91
    move-exception v0

    .line 2028
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 2031
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v8

    .line 2032
    goto/16 :goto_26

    .line 2033
    :catch_ae
    move-exception v0

    .line 2034
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, v9

    goto :goto_6d

    :cond_b4
    move v0, v7

    .line 2046
    goto/16 :goto_26
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    sget v1, Lcom/cooliris/media/MotionDetector;->STATE_NONE:I

    iput v1, v0, Lcom/cooliris/media/MotionDetector;->mState:I

    .line 2053
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    invoke-virtual {v0}, Lcom/cooliris/media/MotionDetector;->unregisterMotionListener()V

    .line 2054
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cooliris/media/GridInputProcessor;->mFingerZoomPressedTime:J

    .line 2055
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->freeRotation()V

    .line 2056
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->defaultPriorityRenderView()V

    .line 2058
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

    if-eqz v0, :cond_24

    .line 2059
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

    invoke-virtual {v0}, Lcom/cooliris/media/ScaleGestureDetector;->endGesture()V

    .line 2061
    :cond_24
    return-void
.end method

.method public clearFocus()V
    .registers 2

    .prologue
    .line 1023
    const/4 v0, -0x1

    iput v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 1024
    return-void
.end method

.method public clearSelection()V
    .registers 2

    .prologue
    .line 1019
    const/4 v0, -0x1

    iput v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    .line 1020
    return-void
.end method

.method public constrainCamera(Z)V
    .registers 14
    .parameter "b"

    .prologue
    .line 990
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    .line 991
    .local v9, pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 992
    .local v7, layer:Lcom/cooliris/media/GridLayer;
    invoke-virtual {v9}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/Vector3f;

    .line 993
    .local v4, firstPosition:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v9}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/Vector3f;

    .line 994
    .local v5, lastPosition:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v9}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Vector3f;

    .line 996
    .local v2, deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    :try_start_16
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getDeltaAnchorPosition()Lcom/cooliris/media/Vector3f;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 997
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 998
    .local v0, camera:Lcom/cooliris/media/GridCamera;
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getLayoutInterface()Lcom/cooliris/media/GridLayoutInterface;

    move-result-object v8

    .line 999
    .local v8, layout:Lcom/cooliris/media/LayoutInterface;
    const/4 v10, 0x0

    invoke-static {v10, v0, v8, v2, v4}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 1001
    const/4 v6, 0x0

    .line 1002
    .local v6, lastSlotIndex:I
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getCompleteRange()Lcom/cooliris/media/IndexRange;

    move-result-object v1

    .line 1003
    .local v1, completeRange:Lcom/cooliris/media/IndexRange;
    monitor-enter v1
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2d} :catch_45

    .line 1004
    :try_start_2d
    iget v6, v1, Lcom/cooliris/media/IndexRange;->end:I

    .line 1005
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_42

    .line 1006
    :try_start_30
    invoke-static {v6, v0, v8, v2, v5}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 1008
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11, v4, v5}, Lcom/cooliris/media/GridCamera;->computeConstraints(ZZLcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)Z
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_45

    .line 1012
    invoke-virtual {v9, v4}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1013
    invoke-virtual {v9, v5}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1014
    invoke-virtual {v9, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1016
    .end local v0           #camera:Lcom/cooliris/media/GridCamera;
    .end local v1           #completeRange:Lcom/cooliris/media/IndexRange;
    .end local v6           #lastSlotIndex:I
    .end local v8           #layout:Lcom/cooliris/media/LayoutInterface;
    :goto_41
    return-void

    .line 1005
    .restart local v0       #camera:Lcom/cooliris/media/GridCamera;
    .restart local v1       #completeRange:Lcom/cooliris/media/IndexRange;
    .restart local v6       #lastSlotIndex:I
    .restart local v8       #layout:Lcom/cooliris/media/LayoutInterface;
    :catchall_42
    move-exception v10

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v10
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_45

    .line 1009
    .end local v0           #camera:Lcom/cooliris/media/GridCamera;
    .end local v1           #completeRange:Lcom/cooliris/media/IndexRange;
    .end local v6           #lastSlotIndex:I
    .end local v8           #layout:Lcom/cooliris/media/LayoutInterface;
    :catch_45
    move-exception v3

    .line 1010
    .local v3, e:Ljava/lang/Exception;
    :try_start_46
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_53

    .line 1012
    invoke-virtual {v9, v4}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1013
    invoke-virtual {v9, v5}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1014
    invoke-virtual {v9, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    goto :goto_41

    .line 1012
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_53
    move-exception v10

    invoke-virtual {v9, v4}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1013
    invoke-virtual {v9, v5}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1014
    invoke-virtual {v9, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v10
.end method

.method public getCurrentFocusSlot()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    return v0
.end method

.method public getCurrentScaledSlot()I
    .registers 2

    .prologue
    .line 189
    sget v0, Lcom/cooliris/media/GridInputProcessor;->mCurrentScaleSlot:I

    return v0
.end method

.method public getCurrentSelectedSlot()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    return v0
.end method

.method public getMotionDetector()Lcom/cooliris/media/MotionDetector;
    .registers 2

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    return-object v0
.end method

.method public getPrevTouchTime()J
    .registers 3

    .prologue
    .line 1997
    iget-wide v0, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchTime:J

    return-wide v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 1843
    sget v0, Lcom/cooliris/media/GridInputProcessor;->mScale:F

    return v0
.end method

.method public getScaleGestureDetector()Lcom/cooliris/media/ScaleGestureDetector;
    .registers 2

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

    return-object v0
.end method

.method public isFocusItemPressed()Z
    .registers 2

    .prologue
    .line 1027
    iget-boolean v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusIsPressed:Z

    return v0
.end method

.method public motionScale(FFF)Z
    .registers 17
    .parameter "inScale"
    .parameter "inPosX"
    .parameter "inPosY"

    .prologue
    .line 1620
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1621
    :cond_c
    const/4 v9, 0x1

    .line 1699
    :goto_d
    return v9

    .line 1625
    :cond_e
    const/4 v2, 0x1

    .line 1627
    .local v2, performTranslation:Z
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v9}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_115

    .line 1628
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v9}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v0

    .line 1629
    .local v0, currentScale:F
    const v9, 0x3f4ccccd

    cmpg-float v9, v0, v9

    if-gtz v9, :cond_26

    .line 1630
    const/4 v2, 0x0

    .line 1635
    :cond_26
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v9}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/Vector3f;

    .line 1636
    .local v5, retVal:Lcom/cooliris/media/Vector3f;
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v9}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/Vector3f;

    .line 1637
    .local v6, retValCenter:Lcom/cooliris/media/Vector3f;
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v9}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cooliris/media/Vector3f;

    .line 1639
    .local v7, retValPrev:Lcom/cooliris/media/Vector3f;
    if-eqz v2, :cond_6e

    :try_start_40
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget-boolean v9, v9, Lcom/cooliris/media/MotionDetector;->mMotionCenterAdjust:Z

    if-eqz v9, :cond_6e

    .line 1640
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v9, v9, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float v3, p2, v9

    .line 1641
    .local v3, posX:F
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v9, v9, Lcom/cooliris/media/GridCamera;->mHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float v4, p3, v9

    .line 1642
    .local v4, posY:F
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v4, v10, v5}, Lcom/cooliris/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 1643
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v6}, Lcom/cooliris/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 1646
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v4, v10, v7}, Lcom/cooliris/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 1649
    .end local v3           #posX:F
    .end local v4           #posY:F
    :cond_6e
    const/high16 v9, 0x40c0

    cmpg-float v9, v0, v9

    if-gez v9, :cond_86

    const/high16 v9, 0x3f80

    cmpg-float v9, p1, v9

    if-gez v9, :cond_86

    mul-float v9, v0, p1

    const/high16 v10, 0x3f80

    cmpg-float v9, v9, v10

    if-gez v9, :cond_86

    .line 1650
    const/high16 v9, 0x3f80

    div-float p1, v9, v0

    .line 1652
    :cond_86
    const/high16 v9, 0x3f80

    cmpl-float v9, v0, v9

    if-lez v9, :cond_9e

    const/high16 v9, 0x3f80

    cmpl-float v9, p1, v9

    if-lez v9, :cond_9e

    mul-float v9, v0, p1

    const/high16 v10, 0x40c0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9e

    .line 1653
    const/high16 v9, 0x40c0

    div-float p1, v9, v0

    .line 1656
    :cond_9e
    mul-float v8, v0, p1

    .line 1658
    .local v8, zoomValue:F
    const/high16 v9, 0x3f80

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_ab

    .line 1659
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v9, v8}, Lcom/cooliris/media/GridLayer;->setZoomValue(F)V

    .line 1662
    :cond_ab
    iget v9, p0, Lcom/cooliris/media/GridInputProcessor;->TILTOUT_THRESHOLD:F

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_127

    .line 1663
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

    if-eqz v9, :cond_bd

    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

    invoke-virtual {v9}, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->isAlive()Z

    move-result v9

    if-nez v9, :cond_ca

    .line 1664
    :cond_bd
    new-instance v9, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;-><init>(Lcom/cooliris/media/GridInputProcessor;Lcom/cooliris/media/GridInputProcessor$1;)V

    iput-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

    .line 1665
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

    invoke-virtual {v9}, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->start()V

    .line 1673
    :cond_ca
    :goto_ca
    if-eqz v2, :cond_106

    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget-boolean v9, v9, Lcom/cooliris/media/MotionDetector;->mMotionCenterAdjust:Z

    if-eqz v9, :cond_106

    .line 1674
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const v10, 0x3a83126f

    invoke-virtual {v9, v10}, Lcom/cooliris/media/GridCamera;->update(F)V

    .line 1683
    iget v9, v5, Lcom/cooliris/media/Vector3f;->x:F

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    div-float/2addr v11, p1

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    iget v10, v7, Lcom/cooliris/media/Vector3f;->x:F

    iget v11, v5, Lcom/cooliris/media/Vector3f;->x:F

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v5, Lcom/cooliris/media/Vector3f;->x:F

    .line 1684
    iget v9, v5, Lcom/cooliris/media/Vector3f;->y:F

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    div-float/2addr v11, p1

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    iget v10, v7, Lcom/cooliris/media/Vector3f;->y:F

    iget v11, v5, Lcom/cooliris/media/Vector3f;->y:F

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v5, Lcom/cooliris/media/Vector3f;->y:F

    .line 1685
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v10, v5, Lcom/cooliris/media/Vector3f;->x:F

    iget v11, v5, Lcom/cooliris/media/Vector3f;->y:F

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/cooliris/media/GridCamera;->moveBy(FFF)V
    :try_end_106
    .catchall {:try_start_40 .. :try_end_106} :catchall_148
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_106} :catch_134

    .line 1690
    :cond_106
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v9, v5}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1691
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v9, v6}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1692
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v9, v7}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1695
    .end local v0           #currentScale:F
    .end local v5           #retVal:Lcom/cooliris/media/Vector3f;
    .end local v6           #retValCenter:Lcom/cooliris/media/Vector3f;
    .end local v7           #retValPrev:Lcom/cooliris/media/Vector3f;
    .end local v8           #zoomValue:F
    :cond_115
    :goto_115
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v9}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_124

    .line 1696
    const/4 v9, -0x1

    sput v9, Lcom/cooliris/media/GridInputProcessor;->mCurrentScaleSlot:I

    .line 1697
    const/4 v9, -0x1

    iput v9, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 1699
    :cond_124
    const/4 v9, 0x1

    goto/16 :goto_d

    .line 1668
    .restart local v0       #currentScale:F
    .restart local v5       #retVal:Lcom/cooliris/media/Vector3f;
    .restart local v6       #retValCenter:Lcom/cooliris/media/Vector3f;
    .restart local v7       #retValPrev:Lcom/cooliris/media/Vector3f;
    .restart local v8       #zoomValue:F
    :cond_127
    :try_start_127
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

    if-eqz v9, :cond_130

    .line 1669
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

    invoke-virtual {v9}, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->interrupt()V

    .line 1670
    :cond_130
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;
    :try_end_133
    .catchall {:try_start_127 .. :try_end_133} :catchall_148
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_133} :catch_134

    goto :goto_ca

    .line 1687
    .end local v8           #zoomValue:F
    :catch_134
    move-exception v1

    .line 1688
    .local v1, e:Ljava/lang/Exception;
    :try_start_135
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_138
    .catchall {:try_start_135 .. :try_end_138} :catchall_148

    .line 1690
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v9, v5}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1691
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v9, v6}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1692
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v9, v7}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    goto :goto_115

    .line 1690
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_148
    move-exception v9

    iget-object v10, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v10, v5}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1691
    iget-object v10, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v10, v6}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1692
    iget-object v10, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v10, v7}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v9
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 1449
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 1450
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6f

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v1}, Lcom/cooliris/media/GridCamera;->isZAnimating()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 1451
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1452
    const/4 v0, 0x0

    .line 1472
    :goto_1d
    return v0

    .line 1453
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1455
    new-instance v3, Lcom/cooliris/media/Vector3f;

    invoke-direct {v3}, Lcom/cooliris/media/Vector3f;-><init>()V

    .line 1456
    iget-object v4, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v4, v4, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v1, v4

    .line 1457
    iget-object v4, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v4, v4, Lcom/cooliris/media/GridCamera;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    .line 1458
    iget-object v4, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v4, v1, v2, v5, v3}, Lcom/cooliris/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 1459
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v1

    cmpl-float v1, v1, v7

    if-nez v1, :cond_6b

    .line 1460
    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->setZoomValue(F)V

    .line 1461
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const v2, 0x3a83126f

    invoke-virtual {v1, v2}, Lcom/cooliris/media/GridCamera;->update(F)V

    .line 1462
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v2, v3, Lcom/cooliris/media/Vector3f;->x:F

    iget v3, v3, Lcom/cooliris/media/Vector3f;->y:F

    invoke-virtual {v1, v2, v3, v5}, Lcom/cooliris/media/GridCamera;->moveBy(FFF)V

    .line 1463
    iget v1, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->constrainCameraForSlot(I)Z

    .line 1467
    :goto_61
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iput v6, v0, Lcom/cooliris/media/GridCamera;->mConvergenceSpeed:F

    .line 1468
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iput v5, v0, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 1472
    const/4 v0, 0x1

    goto :goto_1d

    .line 1465
    :cond_6b
    invoke-virtual {v0, v7}, Lcom/cooliris/media/GridLayer;->setZoomValue(F)V

    goto :goto_61

    .line 1470
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/cooliris/media/GridInputProcessor;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1d
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 1477
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 1044
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 15
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1050
    sget-boolean v8, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v8, :cond_7

    .line 1051
    invoke-static {}, Lcom/quramsoft/xiv/XIVLargeThumnailInfo;->requestCancelDecode()V

    .line 1055
    :cond_7
    iget v8, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7e

    .line 1056
    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/cooliris/media/GridCamera;->moveYTo(F)V

    .line 1057
    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/cooliris/media/GridCamera;->moveZTo(F)V

    .line 1058
    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/high16 v9, 0x4000

    iput v9, v8, Lcom/cooliris/media/GridCamera;->mConvergenceSpeed:F

    .line 1059
    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v9, 0x0

    iput v9, v8, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 1060
    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v8, v8, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    mul-float v3, p3, v8

    .line 1063
    .local v3, normalizedVelocity:F
    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v8}, Lcom/cooliris/media/GridLayer;->getVisibleRange()Lcom/cooliris/media/IndexRange;

    move-result-object v7

    .line 1064
    .local v7, visibleRange:Lcom/cooliris/media/IndexRange;
    iget v8, v7, Lcom/cooliris/media/IndexRange;->end:I

    iget v9, v7, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int v4, v8, v9

    .line 1065
    .local v4, numVisibleSlots:I
    if-lez v4, :cond_71

    .line 1066
    const/high16 v0, 0x41f0

    .line 1067
    .local v0, fastFlingVelocity:F
    int-to-float v8, v4

    neg-float v9, v3

    div-float/2addr v9, v0

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 1068
    .local v6, slotsToSkip:I
    move v2, v4

    .line 1069
    .local v2, maxSlots:I
    if-le v6, v2, :cond_42

    .line 1070
    move v6, v2

    .line 1071
    :cond_42
    neg-int v8, v2

    if-ge v6, v8, :cond_46

    .line 1072
    neg-int v6, v2

    .line 1073
    :cond_46
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_53

    .line 1074
    const/4 v8, 0x0

    cmpl-float v8, p3, v8

    if-lez v8, :cond_77

    .line 1075
    const/4 v6, -0x2

    .line 1079
    :cond_53
    :goto_53
    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/cooliris/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v8

    add-int v5, v8, v6

    .line 1080
    .local v5, slotToGetTo:I
    if-gez v5, :cond_5f

    .line 1081
    const/4 v5, 0x0

    .line 1082
    :cond_5f
    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v8}, Lcom/cooliris/media/GridLayer;->getCompleteRange()Lcom/cooliris/media/IndexRange;

    move-result-object v8

    iget v1, v8, Lcom/cooliris/media/IndexRange;->end:I

    .line 1083
    .local v1, lastSlot:I
    if-le v5, v1, :cond_6a

    .line 1084
    move v5, v1

    .line 1085
    :cond_6a
    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    const/high16 v9, 0x4000

    invoke-virtual {v8, v5, v9}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 1087
    .end local v0           #fastFlingVelocity:F
    .end local v1           #lastSlot:I
    .end local v2           #maxSlots:I
    .end local v5           #slotToGetTo:I
    .end local v6           #slotsToSkip:I
    :cond_71
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/cooliris/media/GridInputProcessor;->constrainCamera(Z)V

    .line 1088
    const/4 v8, 0x1

    .line 1090
    .end local v3           #normalizedVelocity:F
    .end local v4           #numVisibleSlots:I
    .end local v7           #visibleRange:Lcom/cooliris/media/IndexRange;
    :goto_76
    return v8

    .line 1076
    .restart local v0       #fastFlingVelocity:F
    .restart local v2       #maxSlots:I
    .restart local v3       #normalizedVelocity:F
    .restart local v4       #numVisibleSlots:I
    .restart local v6       #slotsToSkip:I
    .restart local v7       #visibleRange:Lcom/cooliris/media/IndexRange;
    :cond_77
    const/4 v8, 0x0

    cmpg-float v8, p3, v8

    if-gez v8, :cond_53

    .line 1077
    const/4 v6, 0x2

    goto :goto_53

    .line 1090
    .end local v0           #fastFlingVelocity:F
    .end local v2           #maxSlots:I
    .end local v3           #normalizedVelocity:F
    .end local v4           #numVisibleSlots:I
    .end local v6           #slotsToSkip:I
    .end local v7           #visibleRange:Lcom/cooliris/media/IndexRange;
    :cond_7e
    const/4 v8, 0x0

    goto :goto_76
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;I)Z
    .registers 19
    .parameter "keyCode"
    .parameter "event"
    .parameter "state"

    .prologue
    .line 377
    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 378
    .local v7, layer:Lcom/cooliris/media/GridLayer;
    invoke-direct/range {p0 .. p1}, Lcom/cooliris/media/GridInputProcessor;->isInValidKey(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 379
    const/4 v12, 0x0

    .line 580
    :goto_9
    return v12

    .line 383
    :cond_a
    const/16 v12, 0x52

    move/from16 v0, p1

    if-ne v0, v12, :cond_2a

    .line 384
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2a

    .line 385
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v5

    .line 386
    .local v5, hud:Lcom/cooliris/media/HudLayer;
    const/high16 v12, 0x3f80

    invoke-virtual {v5}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-virtual {v5, v12}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 387
    invoke-virtual {v5}, Lcom/cooliris/media/HudLayer;->fullScreenMenuViewSet()V

    .line 388
    const/4 v12, 0x1

    goto :goto_9

    .line 392
    .end local v5           #hud:Lcom/cooliris/media/HudLayer;
    :cond_2a
    const/16 v12, 0x52

    move/from16 v0, p1

    if-ne v0, v12, :cond_3d

    .line 395
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v12

    if-nez v12, :cond_3d

    .line 396
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v5

    .line 397
    .restart local v5       #hud:Lcom/cooliris/media/HudLayer;
    invoke-virtual {v5}, Lcom/cooliris/media/HudLayer;->resetNumItemsMenu()V

    .line 403
    .end local v5           #hud:Lcom/cooliris/media/HudLayer;
    :cond_3d
    const/4 v12, 0x4

    move/from16 v0, p1

    if-ne v0, v12, :cond_ee

    .line 404
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_58

    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v12

    if-nez v12, :cond_58

    .line 405
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 406
    const/4 v12, 0x1

    goto :goto_9

    .line 407
    :cond_58
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_77

    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v12

    if-eqz v12, :cond_77

    .line 409
    if-nez p3, :cond_73

    .line 410
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 414
    :goto_6e
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->goBack()Z

    .line 415
    const/4 v12, 0x1

    goto :goto_9

    .line 412
    :cond_73
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->deselect()V

    goto :goto_6e

    .line 416
    :cond_77
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->getMenuBar()Lcom/cooliris/media/Layer;

    move-result-object v12

    check-cast v12, Lcom/cooliris/media/MenuBar;

    iget-boolean v12, v12, Lcom/cooliris/media/MenuBar;->mTouchActive:Z

    if-eqz v12, :cond_98

    .line 417
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 418
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->getMenuBar()Lcom/cooliris/media/Layer;

    move-result-object v12

    check-cast v12, Lcom/cooliris/media/MenuBar;

    invoke-virtual {v12}, Lcom/cooliris/media/MenuBar;->close()V

    .line 419
    const/4 v12, 0x1

    goto/16 :goto_9

    .line 421
    :cond_98
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->inSlideShowMode()Z

    move-result v12

    if-eqz v12, :cond_ad

    .line 422
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    .line 423
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    const/high16 v13, 0x3f80

    invoke-virtual {v12, v13}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 424
    const/4 v12, 0x1

    goto/16 :goto_9

    .line 426
    :cond_ad
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v11

    .line 427
    .local v11, zoomValue:F
    const/high16 v12, 0x3f80

    cmpl-float v12, v11, v12

    if-eqz v12, :cond_c6

    .line 428
    const/high16 v12, 0x3f80

    invoke-virtual {v7, v12}, Lcom/cooliris/media/GridLayer;->setZoomValue(F)V

    .line 429
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    const/high16 v13, 0x3f80

    invoke-virtual {v7, v12, v13}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 430
    const/4 v12, 0x1

    goto/16 :goto_9

    .line 432
    :cond_c6
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getViewIntent()Z

    move-result v12

    if-eqz v12, :cond_d7

    .line 433
    new-instance v12, Lcom/cooliris/media/GridInputProcessor$1;

    invoke-direct {v12, p0}, Lcom/cooliris/media/GridInputProcessor$1;-><init>(Lcom/cooliris/media/GridInputProcessor;)V

    invoke-virtual {v12}, Lcom/cooliris/media/GridInputProcessor$1;->start()V

    .line 444
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 446
    :cond_d7
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->goBack()Z

    .line 447
    iget-object v12, p0, Lcom/cooliris/media/GridInputProcessor;->mFocusControl:Lcom/cooliris/media/GridFocusControl;

    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/cooliris/media/GridFocusControl;->setState(I)V

    .line 448
    invoke-virtual {p0}, Lcom/cooliris/media/GridInputProcessor;->clearFocus()V

    .line 449
    if-nez p3, :cond_eb

    .line 450
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 451
    :cond_eb
    const/4 v12, 0x1

    goto/16 :goto_9

    .line 453
    .end local v11           #zoomValue:F
    :cond_ee
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mDpadIgnoreTime:F

    const v13, 0x3d75c28f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_fa

    .line 454
    const/4 v12, 0x1

    goto/16 :goto_9

    .line 455
    :cond_fa
    const/4 v12, 0x0

    iput v12, p0, Lcom/cooliris/media/GridInputProcessor;->mDpadIgnoreTime:F

    .line 456
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getBufferedVisibleRange()Lcom/cooliris/media/IndexRange;

    move-result-object v1

    .line 457
    .local v1, bufferedVisibleRange:Lcom/cooliris/media/IndexRange;
    iget v4, v1, Lcom/cooliris/media/IndexRange;->begin:I

    .line 458
    .local v4, firstBufferedVisibleSlot:I
    iget v6, v1, Lcom/cooliris/media/IndexRange;->end:I

    .line 460
    .local v6, lastBufferedVisibleSlot:I
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_1ea

    .line 461
    const/16 v12, 0x18

    move/from16 v0, p1

    if-eq v0, v12, :cond_12b

    const/16 v12, 0x19

    move/from16 v0, p1

    if-eq v0, v12, :cond_12b

    const/16 v12, 0x5b

    move/from16 v0, p1

    if-eq v0, v12, :cond_12b

    const/16 v12, 0x4f

    move/from16 v0, p1

    if-eq v0, v12, :cond_12b

    const/16 v12, 0x53

    move/from16 v0, p1

    if-eq v0, v12, :cond_12b

    .line 464
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    .line 466
    :cond_12b
    const/4 v8, 0x0

    .line 467
    .local v8, needsVibrate:Z
    const/4 v3, 0x0

    .line 468
    .local v3, directionalKeyPressed:Z
    const/16 v12, 0x16

    move/from16 v0, p1

    if-ne v0, v12, :cond_14a

    .line 469
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->getMenuBar()Lcom/cooliris/media/Layer;

    move-result-object v12

    check-cast v12, Lcom/cooliris/media/MenuBar;

    invoke-virtual {v12}, Lcom/cooliris/media/MenuBar;->close()V

    .line 470
    const/high16 v12, 0x3f80

    invoke-virtual {v7, v12}, Lcom/cooliris/media/GridLayer;->changeFocusToNextSlot(F)Z

    move-result v12

    if-nez v12, :cond_1aa

    const/4 v8, 0x1

    .line 471
    :goto_149
    const/4 v3, 0x1

    .line 473
    :cond_14a
    const/16 v12, 0x15

    move/from16 v0, p1

    if-ne v0, v12, :cond_167

    .line 474
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->getMenuBar()Lcom/cooliris/media/Layer;

    move-result-object v12

    check-cast v12, Lcom/cooliris/media/MenuBar;

    invoke-virtual {v12}, Lcom/cooliris/media/MenuBar;->close()V

    .line 475
    const/high16 v12, 0x3f80

    invoke-virtual {v7, v12}, Lcom/cooliris/media/GridLayer;->changeFocusToPreviousSlot(F)Z

    move-result v12

    if-nez v12, :cond_1ac

    const/4 v8, 0x1

    .line 476
    :goto_166
    const/4 v3, 0x1

    .line 478
    :cond_167
    if-eqz v3, :cond_17b

    .line 479
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_17b

    .line 480
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 481
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/cooliris/media/GridLayer;->enterSelectionMode(Z)V

    .line 484
    :cond_17b
    if-eqz v8, :cond_180

    .line 485
    invoke-direct {p0}, Lcom/cooliris/media/GridInputProcessor;->vibrateShort()V

    .line 487
    :cond_180
    const/16 v12, 0x17

    move/from16 v0, p1

    if-ne v0, v12, :cond_19b

    iget-object v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v12}, Lcom/cooliris/media/GridCamera;->isAnimating()Z

    move-result v12

    if-nez v12, :cond_19b

    .line 488
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v12

    const/high16 v13, 0x3f80

    cmpl-float v12, v12, v13

    if-nez v12, :cond_1ae

    .line 489
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->zoomInToSelectedItem()V

    .line 493
    :cond_19b
    :goto_19b
    const/16 v12, 0x52

    move/from16 v0, p1

    if-ne v0, v12, :cond_1e3

    .line 494
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v12

    if-nez v12, :cond_1b4

    .line 495
    const/4 v12, 0x1

    goto/16 :goto_9

    .line 470
    :cond_1aa
    const/4 v8, 0x0

    goto :goto_149

    .line 475
    :cond_1ac
    const/4 v8, 0x0

    goto :goto_166

    .line 491
    :cond_1ae
    const/high16 v12, 0x3f80

    invoke-virtual {v7, v12}, Lcom/cooliris/media/GridLayer;->setZoomValue(F)V

    goto :goto_19b

    .line 496
    :cond_1b4
    iget-object v12, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v12}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v12

    if-eqz v12, :cond_1cb

    iget-object v12, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v12}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/MediaFeed;->isSingleImageMode()Z

    move-result v12

    if-eqz v12, :cond_1cb

    .line 497
    const/4 v12, 0x1

    goto/16 :goto_9

    .line 499
    :cond_1cb
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v12

    if-nez v12, :cond_1e6

    .line 500
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 501
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->closeFullscreenMenu()V

    .line 502
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/cooliris/media/GridLayer;->enterSelectionMode(Z)V

    .line 580
    .end local v3           #directionalKeyPressed:Z
    .end local v8           #needsVibrate:Z
    :cond_1e3
    :goto_1e3
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 504
    .restart local v3       #directionalKeyPressed:Z
    .restart local v8       #needsVibrate:Z
    :cond_1e6
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    goto :goto_1e3

    .line 508
    .end local v3           #directionalKeyPressed:Z
    .end local v8           #needsVibrate:Z
    :cond_1ea
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusIsPressed:Z

    .line 509
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getLayoutInterface()Lcom/cooliris/media/GridLayoutInterface;

    move-result-object v12

    iget v9, v12, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    .line 510
    .local v9, numRows:I
    const/16 v12, 0x17

    move/from16 v0, p1

    if-eq v0, v12, :cond_1ff

    const/16 v12, 0x42

    move/from16 v0, p1

    if-ne v0, v12, :cond_299

    :cond_1ff
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_299

    .line 512
    iget-object v12, p0, Lcom/cooliris/media/GridInputProcessor;->mFocusControl:Lcom/cooliris/media/GridFocusControl;

    invoke-virtual {v12}, Lcom/cooliris/media/GridFocusControl;->getFocusSlot()I

    move-result v12

    iput v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 513
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_23a

    .line 514
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lcom/cooliris/media/GridLayer;->tapGesture(IZ)Z

    move-result v2

    .line 515
    .local v2, centerCamera:Z
    if-eqz v2, :cond_22b

    .line 516
    iget v10, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 517
    .local v10, slotId:I
    const/4 v12, 0x1

    iput-boolean v12, v7, Lcom/cooliris/media/GridLayer;->mbFirstDecode:Z

    .line 518
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/cooliris/media/GridLayer;->mIsDuplicatedDrmPopup:Z

    .line 519
    invoke-direct {p0, v10}, Lcom/cooliris/media/GridInputProcessor;->selectSlot(I)V

    .line 521
    .end local v10           #slotId:I
    :cond_22b
    invoke-virtual {p0}, Lcom/cooliris/media/GridInputProcessor;->clearFocus()V

    .line 522
    iget-object v12, p0, Lcom/cooliris/media/GridInputProcessor;->mFocusControl:Lcom/cooliris/media/GridFocusControl;

    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/cooliris/media/GridFocusControl;->setState(I)V

    .line 523
    const/4 v12, 0x1

    goto/16 :goto_9

    .line 525
    .end local v2           #centerCamera:Z
    :cond_23a
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v7, v12, v13, v14}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 527
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusIsPressed:Z

    .line 552
    :cond_244
    :goto_244
    const/16 v12, 0x54

    move/from16 v0, p1

    if-eq v0, v12, :cond_263

    const/16 v12, 0x4f

    move/from16 v0, p1

    if-eq v0, v12, :cond_263

    .line 553
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    if-le v12, v6, :cond_256

    .line 554
    iput v6, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 556
    :cond_256
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    if-ge v12, v4, :cond_25c

    .line 557
    iput v4, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 558
    :cond_25c
    iget-object v12, p0, Lcom/cooliris/media/GridInputProcessor;->mFocusControl:Lcom/cooliris/media/GridFocusControl;

    iget v13, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v12, v13}, Lcom/cooliris/media/GridFocusControl;->setFocusSlot(I)V

    .line 561
    :cond_263
    const/16 v12, 0x52

    move/from16 v0, p1

    if-eq v0, v12, :cond_275

    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_275

    .line 562
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    const/high16 v13, 0x3f80

    invoke-virtual {v7, v12, v13}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 565
    :cond_275
    const/16 v12, 0x52

    move/from16 v0, p1

    if-ne v0, v12, :cond_34c

    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_34c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-nez v12, :cond_34c

    .line 567
    invoke-virtual {p0}, Lcom/cooliris/media/GridInputProcessor;->clearFocus()V

    .line 568
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v12

    if-nez v12, :cond_33b

    .line 569
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/cooliris/media/GridLayer;->enterSelectionMode(Z)V

    goto/16 :goto_1e3

    .line 528
    :cond_299
    const/16 v12, 0x52

    move/from16 v0, p1

    if-ne v0, v12, :cond_2bd

    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2bd

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-nez v12, :cond_2bd

    .line 530
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v12

    if-nez v12, :cond_2b9

    .line 531
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/cooliris/media/GridLayer;->enterSelectionMode(Z)V

    goto :goto_244

    .line 533
    :cond_2b9
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    goto :goto_244

    .line 535
    :cond_2bd
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2e1

    const/16 v12, 0x54

    move/from16 v0, p1

    if-eq v0, v12, :cond_2e1

    const/16 v12, 0x4f

    move/from16 v0, p1

    if-eq v0, v12, :cond_2e1

    .line 537
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    iget-object v12, v12, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v12}, Lcom/cooliris/media/MenuBar;->close()V

    .line 538
    iget-object v12, p0, Lcom/cooliris/media/GridInputProcessor;->mFocusControl:Lcom/cooliris/media/GridFocusControl;

    invoke-virtual {v12}, Lcom/cooliris/media/GridFocusControl;->getFocusSlot()I

    move-result v12

    iput v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto/16 :goto_244

    .line 539
    :cond_2e1
    const/16 v12, 0x16

    move/from16 v0, p1

    if-ne v0, v12, :cond_2f7

    .line 540
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    iget-object v12, v12, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v12}, Lcom/cooliris/media/MenuBar;->close()V

    .line 541
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    add-int/2addr v12, v9

    iput v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto/16 :goto_244

    .line 542
    :cond_2f7
    const/16 v12, 0x15

    move/from16 v0, p1

    if-ne v0, v12, :cond_30d

    .line 543
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    iget-object v12, v12, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v12}, Lcom/cooliris/media/MenuBar;->close()V

    .line 544
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    sub-int/2addr v12, v9

    iput v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto/16 :goto_244

    .line 545
    :cond_30d
    const/16 v12, 0x13

    move/from16 v0, p1

    if-ne v0, v12, :cond_324

    .line 546
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    iget-object v12, v12, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v12}, Lcom/cooliris/media/MenuBar;->close()V

    .line 547
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    add-int/lit8 v12, v12, -0x1

    iput v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto/16 :goto_244

    .line 548
    :cond_324
    const/16 v12, 0x14

    move/from16 v0, p1

    if-ne v0, v12, :cond_244

    .line 549
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v12

    iget-object v12, v12, Lcom/cooliris/media/HudLayer;->mSelectionMenuBottom:Lcom/cooliris/media/MenuBar;

    invoke-virtual {v12}, Lcom/cooliris/media/MenuBar;->close()V

    .line 550
    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    goto/16 :goto_244

    .line 571
    :cond_33b
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v12

    if-eqz v12, :cond_347

    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v12

    if-nez v12, :cond_1e3

    .line 573
    :cond_347
    invoke-virtual {v7}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    goto/16 :goto_1e3

    .line 575
    :cond_34c
    const/16 v12, 0x52

    move/from16 v0, p1

    if-ne v0, v12, :cond_1e3

    iget v12, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1e3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-lez v12, :cond_1e3

    .line 577
    invoke-virtual {p0}, Lcom/cooliris/media/GridInputProcessor;->clearFocus()V

    goto/16 :goto_1e3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0x12c

    const/16 v7, 0x64

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1096
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    sget-object v1, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    if-eq v0, v1, :cond_e

    .line 1175
    :cond_d
    :goto_d
    return-void

    .line 1098
    :cond_e
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->isSingleImageMode()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1099
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    .line 1100
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/cooliris/media/PathBarLayer;->setHidden(Z)V

    .line 1101
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getMenuBar()Lcom/cooliris/media/Layer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/cooliris/media/Layer;->setHidden(Z)V

    .line 1102
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v1

    if-eqz v1, :cond_d

    .line 1103
    invoke-virtual {v0, v5}, Lcom/cooliris/media/HudLayer;->setMode(I)V

    goto :goto_d

    .line 1104
    :cond_40
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 1105
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 1106
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-ne v0, v6, :cond_65

    .line 1107
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 1108
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    sget v2, Lcom/cooliris/media/MotionDetector;->STATE_MOVE:I

    iput v2, v0, Lcom/cooliris/media/MotionDetector;->mState:I

    .line 1109
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/cooliris/media/MotionDetector;->registerMotionListener(II)V

    .line 1111
    :cond_65
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    .line 1112
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getPickIntent()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->inSlideShowMode()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1116
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    if-eq v2, v6, :cond_a1

    .line 1118
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->enterSelectionMode()V

    .line 1129
    :cond_80
    :goto_80
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1130
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromWidget()Z

    move-result v0

    if-nez v0, :cond_ab

    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromPhotoWall()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 1132
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v0, v4, v4}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_d

    .line 1122
    :cond_a1
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1124
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->enterSelectionMode()V

    goto :goto_80

    .line 1134
    :cond_ab
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-nez v0, :cond_bf

    .line 1135
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->deselect()V

    .line 1136
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v0, v4, v4}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 1137
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    iput v0, p0, Lcom/cooliris/media/GridInputProcessor;->mPreviousSelectedSlot:I

    goto/16 :goto_d

    .line 1139
    :cond_bf
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromWidget()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 1140
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->selectedBucketListSize()I

    move-result v0

    if-ge v0, v7, :cond_de

    .line 1141
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridInputProcessor;->checkFile(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1142
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v0, v4, v4}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_d

    .line 1143
    :cond_de
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v0}, Lcom/cooliris/media/GridLayer;->isItemExistInSelectedBucketList(I)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 1144
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v0, v4, v4}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_d

    .line 1146
    :cond_ed
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060099

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_d

    .line 1152
    :cond_10d
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromPhotoWall()Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 1153
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->selectedBucketListSize()I

    move-result v0

    if-ge v0, v8, :cond_12c

    .line 1154
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridInputProcessor;->checkFile(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1155
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v0, v4, v4}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_d

    .line 1156
    :cond_12c
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v0}, Lcom/cooliris/media/GridLayer;->isItemExistInSelectedBucketList(I)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 1157
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v0, v4, v4}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_d

    .line 1159
    :cond_13b
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060099

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_d

    .line 1166
    :cond_15b
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v0, v4, v4}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_d

    .line 1171
    :cond_162
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    invoke-virtual {v1, v0, v4, v4}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_d
.end method

.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 13
    .parameter

    .prologue
    const/high16 v10, 0x3f80

    const v9, 0x3a378034

    const-wide/high16 v7, 0x3fe0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    .line 1857
    .line 1859
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getTilt()I

    move-result v3

    .line 1861
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1862
    packed-switch v0, :pswitch_data_14c

    move v0, v1

    move v2, v1

    .line 1883
    :goto_19
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v4

    sparse-switch v4, :sswitch_data_158

    .line 1956
    :cond_20
    :goto_20
    :sswitch_20
    return-void

    .line 1864
    :pswitch_21
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v0

    neg-int v2, v0

    .line 1865
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v0

    goto :goto_19

    .line 1868
    :pswitch_2b
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v2

    .line 1869
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v0

    goto :goto_19

    .line 1872
    :pswitch_34
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v2

    .line 1873
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v0

    goto :goto_19

    .line 1876
    :pswitch_3d
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v0

    neg-int v2, v0

    .line 1877
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v0

    neg-int v0, v0

    .line 1878
    goto :goto_19

    .line 1885
    :sswitch_48
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget-boolean v1, v1, Lcom/cooliris/media/MotionDetector;->mMotionPanningUse:Z

    if-eqz v1, :cond_20

    .line 1889
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v1, v1, Lcom/cooliris/media/MotionDetector;->mState:I

    sget v3, Lcom/cooliris/media/MotionDetector;->STATE_MOVE:I

    if-ne v1, v3, :cond_20

    .line 1890
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v3, v1, Lcom/cooliris/media/MotionDetector;->mBaseX:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v5, v5, Lcom/cooliris/media/MotionDetector;->mMotionPanningMove:I

    mul-int/2addr v2, v5

    int-to-double v5, v2

    mul-double/2addr v5, v7

    add-double v2, v3, v5

    double-to-int v2, v2

    iput v2, v1, Lcom/cooliris/media/MotionDetector;->mBaseX:I

    .line 1891
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v2, v1, Lcom/cooliris/media/MotionDetector;->mBaseY:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v4, v4, Lcom/cooliris/media/MotionDetector;->mMotionPanningMove:I

    mul-int/2addr v0, v4

    int-to-double v4, v0

    mul-double/2addr v4, v7

    add-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lcom/cooliris/media/MotionDetector;->mBaseY:I

    .line 1892
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v0, v0, Lcom/cooliris/media/MotionDetector;->mBaseX:I

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v1, v1, Lcom/cooliris/media/MotionDetector;->mBaseY:I

    const v2, 0x3a83126f

    invoke-direct {p0, v0, v1, v2}, Lcom/cooliris/media/GridInputProcessor;->motionMoved(IIF)V

    .line 1893
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->requestRender()V

    goto :goto_20

    .line 1902
    :sswitch_8b
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget-boolean v0, v0, Lcom/cooliris/media/MotionDetector;->mMotionTiltUse:Z

    if-eqz v0, :cond_20

    .line 1906
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v0, v0, Lcom/cooliris/media/MotionDetector;->mState:I

    sget v2, Lcom/cooliris/media/MotionDetector;->STATE_TILT:I

    if-ne v0, v2, :cond_20

    .line 1908
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v0, v0, Lcom/cooliris/media/MotionDetector;->mMotionTiltMove:F

    .line 1910
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v4, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v4, v4, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    if-ge v2, v4, :cond_c2

    .line 1915
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v2, v0, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    .line 1916
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v0, v0, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    if-ltz v0, :cond_bc

    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v0, v0, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    const/16 v2, 0x1e

    if-le v0, v2, :cond_20

    .line 1918
    :cond_bc
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iput v1, v0, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    goto/16 :goto_20

    .line 1921
    :cond_c2
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iput v1, v2, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    .line 1924
    if-gez v3, :cond_f4

    .line 1925
    const v1, 0x3f7fbe77

    int-to-float v2, v3

    mul-float/2addr v2, v9

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    move v1, v0

    .line 1929
    :goto_d0
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v0

    const/high16 v2, 0x40c0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_fd

    .line 1930
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iput-wide v5, v0, Lcom/cooliris/media/MotionDetector;->mZoomoutStart:J

    .line 1945
    :cond_e0
    :goto_e0
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v0, v0, Lcom/cooliris/media/MotionDetector;->mBaseX:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v2, v2, Lcom/cooliris/media/MotionDetector;->mBaseY:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/cooliris/media/GridInputProcessor;->motionScale(FFF)Z

    .line 1946
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->requestRender()V

    goto/16 :goto_20

    .line 1927
    :cond_f4
    const v1, 0x3f8020c5

    int-to-float v2, v3

    mul-float/2addr v2, v9

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_d0

    .line 1931
    :cond_fd
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v0

    const v2, 0x3f4ccccd

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_146

    .line 1932
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget-wide v2, v0, Lcom/cooliris/media/MotionDetector;->mZoomoutStart:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_13d

    .line 1933
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget-wide v2, v0, Lcom/cooliris/media/MotionDetector;->mZoomoutStart:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_e0

    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    iget-object v0, v0, Lcom/cooliris/media/Gallery;->mMotionTutorial:Lcom/cooliris/media/Gallery$MotionType;

    sget-object v2, Lcom/cooliris/media/Gallery$MotionType;->MOTION_NONE:Lcom/cooliris/media/Gallery$MotionType;

    if-ne v0, v2, :cond_e0

    .line 1935
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0, v10}, Lcom/cooliris/media/GridLayer;->setZoomValue(F)V

    .line 1936
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    iget v2, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v0, v2, v10}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 1937
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->goBack()Z

    goto :goto_e0

    .line 1940
    :cond_13d
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/cooliris/media/MotionDetector;->mZoomoutStart:J

    goto :goto_e0

    .line 1943
    :cond_146
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iput-wide v5, v0, Lcom/cooliris/media/MotionDetector;->mZoomoutStart:J

    goto :goto_e0

    .line 1862
    nop

    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_21
        :pswitch_2b
        :pswitch_34
        :pswitch_3d
    .end packed-switch

    .line 1883
    :sswitch_data_158
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_20
        0x3 -> :sswitch_20
        0xa -> :sswitch_20
        0x22 -> :sswitch_20
        0x23 -> :sswitch_20
        0x24 -> :sswitch_20
        0x3d -> :sswitch_48
        0x43 -> :sswitch_8b
    .end sparse-switch
.end method

.method public onScale(Lcom/cooliris/media/ScaleGestureDetector;)Z
    .registers 14
    .parameter

    .prologue
    .line 1502
    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 1503
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    .line 1504
    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1505
    :cond_12
    const/4 v0, 0x1

    .line 1614
    :goto_13
    return v0

    .line 1513
    :cond_14
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getFocusX()F

    move-result v6

    .line 1514
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getFocusY()F

    move-result v7

    .line 1516
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getPrevFocusX()F

    move-result v0

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_44

    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getPrevFocusY()F

    move-result v0

    sub-float v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_44

    iget-wide v0, p0, Lcom/cooliris/media/GridInputProcessor;->mFingerZoomPressedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_74

    :cond_44
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v0, v0, Lcom/cooliris/media/MotionDetector;->mBaseX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getPrevFocusX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14e

    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    iget v0, v0, Lcom/cooliris/media/MotionDetector;->mBaseY:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getPrevFocusY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14e

    iget-wide v0, p0, Lcom/cooliris/media/GridInputProcessor;->mFingerZoomPressedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14e

    .line 1520
    :cond_74
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cooliris/media/GridInputProcessor;->mPressCount:I

    .line 1521
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mPressCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8c

    .line 1522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cooliris/media/GridInputProcessor;->mFingerZoomPressedTime:J

    .line 1523
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    float-to-int v1, v6

    float-to-int v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/MotionDetector;->updateFocusPoint(II)V

    .line 1530
    :cond_8c
    :goto_8c
    iget-wide v0, p0, Lcom/cooliris/media/GridInputProcessor;->mFingerZoomPressedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_157

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cooliris/media/GridInputProcessor;->mFingerZoomPressedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_157

    .line 1532
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    sget-object v1, Lcom/cooliris/media/GridInputProcessor$GestureType;->FINGER_ZOOM:Lcom/cooliris/media/GridInputProcessor$GestureType;

    if-ne v0, v1, :cond_ad

    .line 1533
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    const/16 v1, 0xf

    iput v1, v0, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    .line 1535
    :cond_ad
    sget-object v0, Lcom/cooliris/media/GridInputProcessor$GestureType;->MOTION_TILT:Lcom/cooliris/media/GridInputProcessor$GestureType;

    iput-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    .line 1543
    :goto_b1
    sget v0, Lcom/cooliris/media/GridInputProcessor;->mScale:F

    mul-float/2addr v0, v4

    sput v0, Lcom/cooliris/media/GridInputProcessor;->mScale:F

    .line 1545
    const/4 v0, 0x1

    .line 1547
    invoke-virtual {v5}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_205

    .line 1548
    invoke-virtual {v5}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v8

    .line 1549
    const/high16 v1, 0x3f80

    cmpg-float v1, v8, v1

    if-gtz v1, :cond_221

    .line 1550
    const/4 v0, 0x0

    move v3, v0

    .line 1551
    :goto_ca
    iget-object v9, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    .line 1552
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v0}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/Vector3f;

    .line 1553
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v1}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Vector3f;

    .line 1554
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mPool:Lcom/cooliris/media/Pool;

    invoke-virtual {v2}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Vector3f;

    .line 1556
    if-eqz v3, :cond_126

    .line 1558
    :try_start_e6
    iget-object v10, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v10, v10, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v6, v10

    .line 1559
    iget-object v10, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v10, v10, Lcom/cooliris/media/GridCamera;->mHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v7, v10

    .line 1560
    iget-object v10, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v7, v11, v0}, Lcom/cooliris/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 1561
    iget-object v6, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v10, v11, v1}, Lcom/cooliris/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 1564
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getPrevFocusX()F

    move-result v6

    .line 1565
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getPrevFocusY()F

    move-result v7

    .line 1566
    iget-object v10, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v10, v10, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v6, v10

    .line 1567
    iget-object v10, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v10, v10, Lcom/cooliris/media/GridCamera;->mHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v7, v10

    .line 1568
    iget-object v10, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v7, v11, v2}, Lcom/cooliris/media/GridCamera;->convertToRelativeCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 1571
    :cond_126
    mul-float v6, v8, v4

    const/high16 v7, 0x3f80

    cmpg-float v6, v6, v7

    if-gez v6, :cond_15d

    .line 1572
    const/high16 v3, 0x3f80

    .line 1573
    const/high16 v4, 0x3f80

    .line 1574
    mul-float/2addr v3, v4

    invoke-virtual {v5, v3}, Lcom/cooliris/media/GridLayer;->setZoomValue(F)V

    .line 1575
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getBoundaryLayer()Lcom/cooliris/media/BoundaryLayer;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Lcom/cooliris/media/BoundaryLayer;->setBorder(I)V
    :try_end_141
    .catchall {:try_start_e6 .. :try_end_141} :catchall_216
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_141} :catch_208

    .line 1577
    const/4 v3, 0x1

    .line 1609
    invoke-virtual {v9, v0}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1610
    invoke-virtual {v9, v1}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1611
    invoke-virtual {v9, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    move v0, v3

    goto/16 :goto_13

    .line 1526
    :cond_14e
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/GridInputProcessor;->mPressCount:I

    .line 1527
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cooliris/media/GridInputProcessor;->mFingerZoomPressedTime:J

    goto/16 :goto_8c

    .line 1537
    :cond_157
    sget-object v0, Lcom/cooliris/media/GridInputProcessor$GestureType;->FINGER_ZOOM:Lcom/cooliris/media/GridInputProcessor$GestureType;

    iput-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    goto/16 :goto_b1

    .line 1579
    :cond_15d
    :try_start_15d
    iget-object v6, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v6}, Lcom/cooliris/media/GridLayer;->getBoundaryLayer()Lcom/cooliris/media/BoundaryLayer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/cooliris/media/BoundaryLayer;->setBorder(I)V

    .line 1582
    const v6, 0x3f333333

    cmpg-float v6, v8, v6

    if-gez v6, :cond_176

    const/high16 v6, 0x3f80

    cmpg-float v6, v4, v6

    if-gez v6, :cond_176

    .line 1583
    const/high16 v4, 0x3f80

    .line 1585
    :cond_176
    const/high16 v6, 0x4040

    cmpl-float v6, v8, v6

    if-lez v6, :cond_18d

    const/high16 v6, 0x3f80

    cmpl-float v6, v4, v6

    if-lez v6, :cond_18d

    mul-float v6, v8, v4

    const/high16 v7, 0x40c0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_18d

    .line 1586
    const/high16 v4, 0x40c0

    div-float/2addr v4, v8

    .line 1588
    :cond_18d
    mul-float v6, v8, v4

    invoke-virtual {v5, v6}, Lcom/cooliris/media/GridLayer;->setZoomValue(F)V

    .line 1589
    if-eqz v3, :cond_1fc

    .line 1590
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const v6, 0x3a83126f

    invoke-virtual {v3, v6}, Lcom/cooliris/media/GridCamera;->update(F)V

    .line 1592
    iget v3, v0, Lcom/cooliris/media/Vector3f;->x:F

    iget v6, v1, Lcom/cooliris/media/Vector3f;->x:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    iget v6, v2, Lcom/cooliris/media/Vector3f;->x:F

    iget v7, v0, Lcom/cooliris/media/Vector3f;->x:F

    sub-float/2addr v6, v7

    add-float/2addr v3, v6

    iput v3, v0, Lcom/cooliris/media/Vector3f;->x:F

    .line 1594
    iget v3, v0, Lcom/cooliris/media/Vector3f;->y:F

    iget v6, v1, Lcom/cooliris/media/Vector3f;->y:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    div-float v4, v7, v4

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    iget v4, v2, Lcom/cooliris/media/Vector3f;->y:F

    iget v6, v0, Lcom/cooliris/media/Vector3f;->y:F

    sub-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, v0, Lcom/cooliris/media/Vector3f;->y:F

    .line 1596
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v4, v0, Lcom/cooliris/media/Vector3f;->x:F

    iget v6, v0, Lcom/cooliris/media/Vector3f;->y:F

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/cooliris/media/GridCamera;->moveBy(FFF)V

    .line 1597
    invoke-virtual {v5}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1fc

    invoke-virtual {v5}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1fc

    .line 1599
    iget v3, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v5, v3}, Lcom/cooliris/media/GridLayer;->constrainCameraForSlot(I)Z

    .line 1600
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getFocusX()F

    move-result v3

    iput v3, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosX:F

    .line 1601
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getFocusY()F

    move-result v3

    iput v3, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosY:F

    .line 1602
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v3}, Lcom/cooliris/media/GridCamera;->commitMoveInX()V

    .line 1603
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v3}, Lcom/cooliris/media/GridCamera;->commitMoveInY()V
    :try_end_1fc
    .catchall {:try_start_15d .. :try_end_1fc} :catchall_216
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_1fc} :catch_208

    .line 1609
    :cond_1fc
    invoke-virtual {v9, v0}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1610
    invoke-virtual {v9, v1}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1611
    invoke-virtual {v9, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1614
    :cond_205
    :goto_205
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 1606
    :catch_208
    move-exception v3

    .line 1607
    :try_start_209
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20c
    .catchall {:try_start_209 .. :try_end_20c} :catchall_216

    .line 1609
    invoke-virtual {v9, v0}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1610
    invoke-virtual {v9, v1}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1611
    invoke-virtual {v9, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    goto :goto_205

    .line 1609
    :catchall_216
    move-exception v3

    invoke-virtual {v9, v0}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1610
    invoke-virtual {v9, v1}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1611
    invoke-virtual {v9, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v3

    :cond_221
    move v3, v0

    goto/16 :goto_ca
.end method

.method public onScaleBegin(Lcom/cooliris/media/ScaleGestureDetector;)Z
    .registers 9
    .parameter "detector"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1704
    sget-object v3, Lcom/cooliris/media/GridInputProcessor$GestureType;->FINGER_ZOOM:Lcom/cooliris/media/GridInputProcessor$GestureType;

    iput-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    .line 1705
    const/high16 v3, 0x3f80

    sput v3, Lcom/cooliris/media/GridInputProcessor;->mScale:F

    .line 1706
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/cooliris/media/HudLayer;->hideZoomButtons(Z)V

    .line 1707
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getFocusX()F

    move-result v3

    float-to-int v0, v3

    .line 1708
    .local v0, posX:I
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v1, v3

    .line 1709
    .local v1, posY:I
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v3, v0, v1}, Lcom/cooliris/media/GridLayer;->getSlotIndexForScreenPosition(II)I

    move-result v2

    .line 1710
    .local v2, slotId:I
    if-ne v2, v4, :cond_2c

    .line 1711
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v3, v6}, Lcom/cooliris/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v2

    .line 1713
    :cond_2c
    if-eq v2, v4, :cond_32

    .line 1714
    sput v2, Lcom/cooliris/media/GridInputProcessor;->mCurrentScaleSlot:I

    .line 1715
    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 1717
    :cond_32
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v3

    if-ne v3, v5, :cond_3e

    .line 1718
    sput v4, Lcom/cooliris/media/GridInputProcessor;->mCurrentScaleSlot:I

    .line 1719
    iput v4, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 1723
    :cond_3e
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v3

    if-ne v3, v6, :cond_6b

    .line 1724
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    sget v4, Lcom/cooliris/media/MotionDetector;->STATE_TILT:I

    iput v4, v3, Lcom/cooliris/media/MotionDetector;->mState:I

    .line 1725
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    invoke-virtual {v3, v0, v1}, Lcom/cooliris/media/MotionDetector;->registerMotionListener(II)V

    .line 1726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cooliris/media/GridInputProcessor;->mFingerZoomPressedTime:J

    .line 1727
    const/4 v3, 0x0

    iput v3, p0, Lcom/cooliris/media/GridInputProcessor;->mPressCount:I

    .line 1728
    sget-object v3, Lcom/cooliris/media/GridInputProcessor$GestureType;->MOTION_TILT:Lcom/cooliris/media/GridInputProcessor$GestureType;

    iput-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    .line 1729
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    const/16 v4, 0xf

    iput v4, v3, Lcom/cooliris/media/MotionDetector;->mTiltAdjustDegree:I

    .line 1730
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/cooliris/media/Gallery;

    invoke-virtual {v3}, Lcom/cooliris/media/Gallery;->lockRotation()V

    .line 1732
    :cond_6b
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v3}, Lcom/cooliris/media/RenderView;->highPriorityRenderView()V

    .line 1733
    return v5
.end method

.method public onScaleEnd(Lcom/cooliris/media/ScaleGestureDetector;Z)V
    .registers 10
    .parameter "detector"
    .parameter "cancel"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1738
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    if-ne v2, v5, :cond_1b

    .line 1739
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    sget v3, Lcom/cooliris/media/MotionDetector;->STATE_NONE:I

    iput v3, v2, Lcom/cooliris/media/MotionDetector;->mState:I

    .line 1740
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    invoke-virtual {v2}, Lcom/cooliris/media/MotionDetector;->unregisterMotionListener()V

    .line 1741
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/cooliris/media/GridInputProcessor;->mFingerZoomPressedTime:J

    .line 1743
    :cond_1b
    if-nez p2, :cond_91

    .line 1744
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 1745
    .local v1, layer:Lcom/cooliris/media/GridLayer;
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    if-ne v2, v5, :cond_48

    .line 1746
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v0

    .line 1747
    .local v0, currentScale:F
    cmpg-float v2, v0, v6

    if-gez v2, :cond_88

    .line 1748
    const/high16 v0, 0x3f80

    .line 1752
    :cond_2f
    :goto_2f
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v2

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3a

    .line 1753
    invoke-virtual {v1, v0}, Lcom/cooliris/media/GridLayer;->setZoomValue(F)V

    .line 1755
    :cond_3a
    iget v2, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v1, v2}, Lcom/cooliris/media/GridLayer;->constrainCameraForSlot(I)Z

    .line 1756
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cooliris/media/HudLayer;->hideZoomButtons(Z)V

    .line 1790
    .end local v0           #currentScale:F
    :cond_48
    :goto_48
    sget-object v2, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    iput-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    .line 1791
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/cooliris/media/Gallery;

    invoke-virtual {v2}, Lcom/cooliris/media/Gallery;->freeRotation()V

    .line 1792
    invoke-static {}, Lcom/cooliris/media/GridInputProcessor;->resetScale()V

    .line 1794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cooliris/media/GridInputProcessor;->mScaleEndTime:J

    .line 1797
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getFocusX()F

    move-result v2

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosX:F

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mFirstTouchPosX:F

    .line 1798
    invoke-virtual {p1}, Lcom/cooliris/media/ScaleGestureDetector;->getFocusY()F

    move-result v2

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosY:F

    iput v2, p0, Lcom/cooliris/media/GridInputProcessor;->mFirstTouchPosY:F

    .line 1799
    iput-boolean v4, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchMoved:Z

    .line 1800
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mRenderView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v2}, Lcom/cooliris/media/RenderView;->defaultPriorityRenderView()V

    .line 1802
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

    invoke-virtual {v2}, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 1803
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

    invoke-virtual {v2}, Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;->interrupt()V

    .line 1804
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mTiltoutChecker:Lcom/cooliris/media/GridInputProcessor$TiltoutChecker;

    .line 1806
    :cond_87
    return-void

    .line 1749
    .restart local v0       #currentScale:F
    :cond_88
    const/high16 v2, 0x40c0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2f

    .line 1750
    const/high16 v0, 0x40c0

    goto :goto_2f

    .line 1784
    .end local v0           #currentScale:F
    .end local v1           #layer:Lcom/cooliris/media/GridLayer;
    :cond_91
    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 1785
    .restart local v1       #layer:Lcom/cooliris/media/GridLayer;
    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    if-ne v2, v5, :cond_48

    .line 1786
    invoke-virtual {v1, v6}, Lcom/cooliris/media/GridLayer;->setZoomValue(F)V

    .line 1787
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cooliris/media/HudLayer;->hideZoomButtons(Z)V

    goto :goto_48
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1180
    const/4 v0, 0x0

    return v0
.end method

.method public onSensorChanged(Lcom/cooliris/media/RenderView;Landroid/hardware/SensorEvent;I)V
    .registers 14
    .parameter "view"
    .parameter "event"
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    const/high16 v9, 0x4348

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 281
    iget-object v4, p2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_88

    .line 325
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 284
    :pswitch_10
    iget-object v3, p2, Landroid/hardware/SensorEvent;->values:[F

    .line 286
    .local v3, values:[F
    iget-object v4, p0, Lcom/cooliris/media/GridInputProcessor;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    packed-switch v4, :pswitch_data_92

    .line 300
    const/4 v2, 0x0

    .line 302
    .local v2, valueToUse:F
    :goto_1c
    const v4, 0x3f4ccccd

    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTiltValueLowPass:F

    mul-float/2addr v4, v5

    const v5, 0x3e4ccccd

    mul-float/2addr v5, v2

    add-float v1, v4, v5

    .line 303
    .local v1, tiltValue:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f00

    cmpg-float v4, v4, v5

    if-gez v4, :cond_33

    .line 304
    const/4 v1, 0x0

    .line 305
    :cond_33
    if-ne p3, v7, :cond_36

    .line 306
    const/4 v1, 0x0

    .line 307
    :cond_36
    cmpl-float v4, v1, v8

    if-eqz v4, :cond_3d

    .line 308
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->requestRender()V

    .line 309
    :cond_3d
    iget-object v4, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/high16 v5, -0x3fc0

    mul-float/2addr v5, v1

    iput v5, v4, Lcom/cooliris/media/GridCamera;->mEyeOffsetX:F

    .line 310
    aget v4, v3, v6

    aget v5, v3, v6

    mul-float/2addr v4, v5

    aget v5, v3, v7

    aget v6, v3, v7

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .line 311
    .local v0, shakeValue:F
    iget v4, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevShakeValueHighPass:F

    sub-float v4, v0, v4

    iput v4, p0, Lcom/cooliris/media/GridInputProcessor;->mShakeValue:F

    .line 312
    iput v0, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevShakeValueHighPass:F

    .line 313
    iget v4, p0, Lcom/cooliris/media/GridInputProcessor;->mShakeValue:F

    const/high16 v5, 0x4180

    cmpg-float v4, v4, v5

    if-gez v4, :cond_77

    .line 314
    iput v8, p0, Lcom/cooliris/media/GridInputProcessor;->mShakeValue:F

    goto :goto_f

    .line 288
    .end local v0           #shakeValue:F
    .end local v1           #tiltValue:F
    .end local v2           #valueToUse:F
    :pswitch_63
    aget v2, v3, v5

    .line 289
    .restart local v2       #valueToUse:F
    goto :goto_1c

    .line 291
    .end local v2           #valueToUse:F
    :pswitch_66
    iget-object v4, p2, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    neg-float v2, v4

    .line 292
    .restart local v2       #valueToUse:F
    goto :goto_1c

    .line 294
    .end local v2           #valueToUse:F
    :pswitch_6c
    iget-object v4, p2, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    neg-float v2, v4

    .line 295
    .restart local v2       #valueToUse:F
    goto :goto_1c

    .line 297
    .end local v2           #valueToUse:F
    :pswitch_72
    iget-object v4, p2, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v6

    .line 298
    .restart local v2       #valueToUse:F
    goto :goto_1c

    .line 316
    .restart local v0       #shakeValue:F
    .restart local v1       #tiltValue:F
    :cond_77
    iget v4, p0, Lcom/cooliris/media/GridInputProcessor;->mShakeValue:F

    const/high16 v5, 0x4080

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/cooliris/media/GridInputProcessor;->mShakeValue:F

    .line 317
    iget v4, p0, Lcom/cooliris/media/GridInputProcessor;->mShakeValue:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_f

    .line 318
    iput v9, p0, Lcom/cooliris/media/GridInputProcessor;->mShakeValue:F

    goto :goto_f

    .line 281
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 286
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_63
        :pswitch_66
        :pswitch_6c
        :pswitch_72
    .end packed-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 1187
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 1482
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x3f80

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1191
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 1192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 1193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1194
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    if-eq v5, v7, :cond_c8

    .line 1196
    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/high16 v6, 0x4000

    iput v6, v5, Lcom/cooliris/media/GridCamera;->mConvergenceSpeed:F

    .line 1197
    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v6, 0x0

    iput v6, v5, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 1198
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    .line 1199
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v6

    cmpl-float v6, v6, v12

    if-nez v6, :cond_56

    .line 1200
    const/high16 v6, 0x4200

    invoke-virtual {v3, v5, v6}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 1204
    :goto_30
    invoke-virtual {v3, v5}, Lcom/cooliris/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/cooliris/media/DisplayItem;

    move-result-object v5

    .line 1205
    if-eqz v5, :cond_55

    .line 1206
    iget-object v5, v5, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    .line 1207
    iget-object v6, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v6, v6, Lcom/cooliris/media/GridCamera;->mHeight:I

    div-int/lit8 v6, v6, 0x2

    .line 1208
    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v6, 0x40

    if-ge v0, v6, :cond_5a

    move v0, v1

    .line 1209
    :goto_48
    const/16 v2, 0x20

    if-ge v4, v2, :cond_5c

    if-eqz v0, :cond_5c

    .line 1211
    const-string v0, "GridInputProcessor"

    const-string v2, "skip changeFocusToPreviousSlot"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_55
    :goto_55
    return v1

    .line 1202
    :cond_56
    invoke-virtual {v3, v5}, Lcom/cooliris/media/GridLayer;->constrainCameraForSlot(I)Z

    goto :goto_30

    :cond_5a
    move v0, v2

    .line 1208
    goto :goto_48

    .line 1212
    :cond_5c
    iget-object v2, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v2, v2, Lcom/cooliris/media/GridCamera;->mWidth:I

    add-int/lit8 v2, v2, -0x20

    if-le v4, v2, :cond_6e

    if-eqz v0, :cond_6e

    .line 1214
    const-string v0, "GridInputProcessor"

    const-string v2, "skip changeFocusToNextSlot"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 1215
    :cond_6e
    invoke-virtual {v5}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v0

    if-ne v0, v1, :cond_9a

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->inSlideShowMode()Z

    move-result v0

    if-nez v0, :cond_9a

    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->iCurrentFocusSlot:I

    if-eq v0, v7, :cond_9a

    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    sget-object v2, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    if-ne v0, v2, :cond_9a

    iget-wide v6, p0, Lcom/cooliris/media/GridInputProcessor;->mScaleEndTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x12c

    sub-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-gez v0, :cond_9a

    .line 1219
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/cooliris/media/Utils;->playVideo(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 1220
    invoke-static {v1}, Lcom/cooliris/media/Gallery;->setPlayVideo(Z)V

    goto :goto_55

    .line 1223
    :cond_9a
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    .line 1224
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->inSlideShowMode()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1225
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    .line 1232
    :cond_a7
    :goto_a7
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v2

    if-ne v2, v1, :cond_55

    .line 1233
    invoke-virtual {v0, v12}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    goto :goto_55

    .line 1227
    :cond_b1
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    if-ne v2, v13, :cond_a7

    .line 1228
    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v2

    sub-float v2, v12, v2

    invoke-virtual {v0, v2}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 1229
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/HudLayer;->fullScreenMenuViewSet()V

    goto :goto_a7

    .line 1238
    :cond_c8
    invoke-virtual {v3, v4, v0}, Lcom/cooliris/media/GridLayer;->getSlotIndexForScreenPosition(II)I

    move-result v5

    .line 1239
    if-eq v5, v7, :cond_205

    .line 1240
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v4

    .line 1241
    invoke-virtual {v4}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_1d5

    .line 1243
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-ne v0, v1, :cond_184

    .line 1244
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 1245
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromWidget()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 1246
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->selectedBucketListSize()I

    move-result v0

    const/16 v4, 0x64

    if-ge v0, v4, :cond_103

    .line 1247
    invoke-virtual {p0, v5}, Lcom/cooliris/media/GridInputProcessor;->checkFile(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1248
    invoke-virtual {v3, v5, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_55

    .line 1250
    :cond_103
    invoke-virtual {v3, v5}, Lcom/cooliris/media/GridLayer;->isItemExistInSelectedBucketList(I)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 1251
    invoke-virtual {v3, v5, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_55

    .line 1253
    :cond_10e
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060099

    new-array v5, v1, [Ljava/lang/Object;

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_55

    .line 1259
    :cond_130
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromPhotoWall()Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 1260
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->selectedBucketListSize()I

    move-result v0

    const/16 v4, 0x12c

    if-ge v0, v4, :cond_14d

    .line 1261
    invoke-virtual {p0, v5}, Lcom/cooliris/media/GridInputProcessor;->checkFile(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1262
    invoke-virtual {v3, v5, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_55

    .line 1264
    :cond_14d
    invoke-virtual {v3, v5}, Lcom/cooliris/media/GridLayer;->isItemExistInSelectedBucketList(I)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 1265
    invoke-virtual {v3, v5, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_55

    .line 1267
    :cond_158
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060099

    new-array v5, v1, [Ljava/lang/Object;

    const/16 v6, 0x12c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_55

    .line 1274
    :cond_17a
    invoke-virtual {v3, v5, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_55

    .line 1277
    :cond_17f
    invoke-virtual {v3, v5, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_55

    .line 1279
    :cond_184
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v0

    if-eqz v0, :cond_1bf

    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-nez v0, :cond_1bf

    .line 1281
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromWidget()Z

    move-result v0

    if-nez v0, :cond_1ab

    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromPhotoWall()Z

    move-result v0

    if-nez v0, :cond_1ab

    .line 1283
    invoke-virtual {v3, v5, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_55

    .line 1285
    :cond_1ab
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->deselect()V

    .line 1286
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mPreviousSelectedSlot:I

    if-eq v0, v5, :cond_1bb

    .line 1287
    invoke-virtual {v3, v5, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 1288
    iput v5, p0, Lcom/cooliris/media/GridInputProcessor;->mPreviousSelectedSlot:I

    goto/16 :goto_55

    .line 1290
    :cond_1bb
    iput v7, p0, Lcom/cooliris/media/GridInputProcessor;->mPreviousSelectedSlot:I

    goto/16 :goto_55

    .line 1293
    :cond_1bf
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-eqz v0, :cond_1d0

    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_55

    .line 1295
    :cond_1d0
    invoke-virtual {v3, v5, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_55

    .line 1299
    :cond_1d5
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    if-ne v0, v7, :cond_203

    invoke-virtual {v3, v5, v2}, Lcom/cooliris/media/GridLayer;->tapGesture(IZ)Z

    move-result v0

    .line 1301
    :goto_1dd
    if-eqz v0, :cond_1e6

    .line 1302
    iput-boolean v1, v3, Lcom/cooliris/media/GridLayer;->mbFirstDecode:Z

    .line 1303
    iput-boolean v2, v3, Lcom/cooliris/media/GridLayer;->mIsDuplicatedDrmPopup:Z

    .line 1305
    invoke-direct {p0, v5}, Lcom/cooliris/media/GridInputProcessor;->selectSlot(I)V

    .line 1307
    :cond_1e6
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mFocusControl:Lcom/cooliris/media/GridFocusControl;

    invoke-virtual {v0, v5}, Lcom/cooliris/media/GridFocusControl;->setFocusSlot(I)V

    .line 1308
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mFocusControl:Lcom/cooliris/media/GridFocusControl;

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cooliris/media/GridFocusControl;->setState(I)V

    .line 1310
    invoke-virtual {v4}, Lcom/cooliris/media/HudLayer;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1311
    invoke-virtual {v4}, Lcom/cooliris/media/HudLayer;->enterSelectionMode()V

    goto/16 :goto_55

    :cond_203
    move v0, v1

    .line 1299
    goto :goto_1dd

    .line 1315
    :cond_205
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    .line 1316
    if-eq v2, v13, :cond_55

    if-eq v2, v1, :cond_55

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_55

    .line 1318
    invoke-virtual {v3, v4, v0}, Lcom/cooliris/media/GridLayer;->getMetadataSlotIndexForScreenPosition(II)I

    move-result v0

    .line 1319
    if-eq v0, v7, :cond_55

    .line 1320
    invoke-virtual {v3, v0, v1}, Lcom/cooliris/media/GridLayer;->tapGesture(IZ)Z

    goto/16 :goto_55
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const-wide/16 v7, 0x0

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosX:I

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosY:I

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    iput v5, p0, Lcom/cooliris/media/GridInputProcessor;->mActionCode:I

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 332
    .local v3, timestamp:J
    iget-wide v5, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchTime:J

    sub-long v0, v3, v5

    .line 333
    .local v0, delta:J
    iput-wide v3, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchTime:J

    .line 334
    long-to-float v2, v0

    .line 335
    .local v2, timeElapsed:F
    const v5, 0x3a83126f

    mul-float/2addr v2, v5

    .line 336
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mActionCode:I

    packed-switch v5, :pswitch_data_92

    .line 368
    :cond_2a
    :goto_2a
    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    sget-object v6, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    if-ne v5, v6, :cond_35

    .line 369
    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 371
    :cond_35
    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

    invoke-virtual {v5, p1}, Lcom/cooliris/media/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 372
    const/4 v5, 0x1

    return v5

    .line 338
    :pswitch_3c
    iget-boolean v5, p0, Lcom/cooliris/media/GridInputProcessor;->mProcessTouch:Z

    if-nez v5, :cond_47

    .line 339
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosX:I

    iget v6, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosY:I

    invoke-direct {p0, v5, v6}, Lcom/cooliris/media/GridInputProcessor;->touchBegan(II)V

    .line 341
    :cond_47
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosX:I

    iget v6, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosY:I

    invoke-virtual {p0, v5, v6, v2}, Lcom/cooliris/media/GridInputProcessor;->touchEnded(IIF)V

    .line 343
    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    sget v6, Lcom/cooliris/media/MotionDetector;->STATE_NONE:I

    iput v6, v5, Lcom/cooliris/media/MotionDetector;->mState:I

    .line 344
    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    invoke-virtual {v5}, Lcom/cooliris/media/MotionDetector;->unregisterMotionListener()V

    .line 345
    iput-wide v7, p0, Lcom/cooliris/media/GridInputProcessor;->mFingerZoomPressedTime:J

    goto :goto_2a

    .line 348
    :pswitch_5c
    iput-wide v3, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchTime:J

    .line 349
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosX:I

    iget v6, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosY:I

    invoke-direct {p0, v5, v6}, Lcom/cooliris/media/GridInputProcessor;->touchBegan(II)V

    .line 351
    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    sget v6, Lcom/cooliris/media/MotionDetector;->STATE_NONE:I

    iput v6, v5, Lcom/cooliris/media/MotionDetector;->mState:I

    .line 352
    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mMotionDetector:Lcom/cooliris/media/MotionDetector;

    invoke-virtual {v5}, Lcom/cooliris/media/MotionDetector;->unregisterMotionListener()V

    .line 353
    iput-wide v7, p0, Lcom/cooliris/media/GridInputProcessor;->mFingerZoomPressedTime:J

    goto :goto_2a

    .line 356
    :pswitch_73
    sget-boolean v5, Lcom/cooliris/media/Utils;->mUseGestureExt:Z

    if-eqz v5, :cond_89

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v5

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2a

    .line 358
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosX:I

    iget v6, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosY:I

    invoke-direct {p0, v5, v6, v2}, Lcom/cooliris/media/GridInputProcessor;->touchMoved(IIF)V

    goto :goto_2a

    .line 361
    :cond_89
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosX:I

    iget v6, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchPosY:I

    invoke-direct {p0, v5, v6, v2}, Lcom/cooliris/media/GridInputProcessor;->touchMoved(IIF)V

    goto :goto_2a

    .line 336
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_3c
        :pswitch_73
    .end packed-switch
.end method

.method public setCurrentFocusSlot(I)V
    .registers 2
    .parameter "slotId"

    .prologue
    .line 1038
    iput p1, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    .line 1039
    return-void
.end method

.method public setCurrentSelectedSlot(I)V
    .registers 15
    .parameter "slot"

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 193
    iput p1, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    .line 194
    iget-object v4, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 195
    .local v4, layer:Lcom/cooliris/media/GridLayer;
    invoke-virtual {v4, v10}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 196
    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/high16 v8, 0x40c0

    iput v8, v7, Lcom/cooliris/media/GridCamera;->mConvergenceSpeed:F

    .line 197
    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v8, 0x0

    iput v8, v7, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 199
    invoke-virtual {v4, p1}, Lcom/cooliris/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/cooliris/media/DisplayItem;

    move-result-object v1

    .line 200
    .local v1, displayItem:Lcom/cooliris/media/DisplayItem;
    const/4 v6, 0x0

    .line 201
    .local v6, tempItem:Lcom/cooliris/media/MediaItem;
    if-eqz v1, :cond_1e

    .line 202
    iget-object v6, v1, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    .line 204
    :cond_1e
    move-object v3, v6

    .line 206
    .local v3, item:Lcom/cooliris/media/MediaItem;
    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v7

    iget v8, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4}, Lcom/cooliris/media/GridLayer;->getCompleteRange()Lcom/cooliris/media/IndexRange;

    move-result-object v9

    iget v9, v9, Lcom/cooliris/media/IndexRange;->end:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v3, v8, v9}, Lcom/cooliris/media/HudLayer;->fullscreenSelectionChanged(Lcom/cooliris/media/MediaItem;II)V

    .line 208
    if-eqz v3, :cond_a6

    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->isDrmPopup()Z

    move-result v7

    if-nez v7, :cond_a6

    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    iget-boolean v7, v7, Lcom/cooliris/media/GridLayer;->mIsDuplicatedDrmPopup:Z

    if-nez v7, :cond_a6

    .line 213
    iget-boolean v7, v3, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-eqz v7, :cond_15a

    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v7

    if-nez v7, :cond_15a

    .line 214
    const/4 v5, 0x0

    .line 215
    .local v5, popupStrings:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->drmInfoUpdate()V

    .line 216
    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    iput-boolean v11, v7, Lcom/cooliris/media/GridLayer;->mbFirstDecode:Z

    .line 217
    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    iput-boolean v11, v7, Lcom/cooliris/media/GridLayer;->mIsDuplicatedDrmPopup:Z

    .line 219
    iget-boolean v7, v3, Lcom/cooliris/media/MediaItem;->hasDrmDisplayRights:Z

    if-eqz v7, :cond_f3

    .line 220
    iget v7, v3, Lcom/cooliris/media/MediaItem;->currentConstraint:I

    invoke-static {v7}, Lcom/cooliris/drm/DrmChecker;->hasCountConstraint(I)Z

    move-result v7

    if-eqz v7, :cond_be

    .line 221
    iget v0, v3, Lcom/cooliris/media/MediaItem;->currentCount:I

    .line 222
    .local v0, cnt:I
    const-string v7, "GridLayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDrmPopup() OmaDrm, Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-ne v0, v10, :cond_a7

    .line 225
    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v8, 0x7f060054

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-virtual {v3, v11}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 243
    .end local v0           #cnt:I
    :cond_92
    :goto_92
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->isDrmPopup()Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 244
    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    iput-boolean v12, v7, Lcom/cooliris/media/GridLayer;->mbFirstDecode:Z

    .line 245
    new-instance v2, Lcom/cooliris/drm/DrmPopupCountInfo2;

    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v7, v3}, Lcom/cooliris/drm/DrmPopupCountInfo2;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 246
    .local v2, drmPopup:Lcom/cooliris/drm/DrmPopup;
    invoke-virtual {v2}, Lcom/cooliris/drm/DrmPopup;->show()V

    .line 274
    .end local v2           #drmPopup:Lcom/cooliris/drm/DrmPopup;
    .end local v5           #popupStrings:Ljava/lang/String;
    :cond_a6
    :goto_a6
    return-void

    .line 228
    .restart local v0       #cnt:I
    .restart local v5       #popupStrings:Ljava/lang/String;
    :cond_a7
    if-ne v0, v11, :cond_92

    .line 229
    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v8, 0x7f060055

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v3, v11}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    goto :goto_92

    .line 233
    .end local v0           #cnt:I
    :cond_be
    iget v7, v3, Lcom/cooliris/media/MediaItem;->currentConstraint:I

    invoke-static {v7}, Lcom/cooliris/drm/DrmChecker;->hasIntervalConstraint(I)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 234
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->isDrmFirstView()Z

    move-result v7

    if-eqz v7, :cond_92

    .line 235
    const-string v7, "GridLayer"

    const-string v8, "getDrmPopup() OmaDrm, Interval, first time"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v8, 0x7f06005c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v9, 0x7f060056

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-virtual {v3, v11}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    goto :goto_92

    .line 250
    :cond_f3
    iget-object v7, v3, Lcom/cooliris/media/MediaItem;->drmInfo:[I

    aget v7, v7, v11

    invoke-static {v7}, Lcom/cooliris/drm/DrmChecker;->isSeparateDelivery(I)Z

    move-result v7

    if-eqz v7, :cond_121

    .line 251
    const-string v7, "GridLayer"

    const-string v8, "getDrmPopup() OmaDrm, Interval, first time"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v8, 0x7f06005a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-virtual {v3, v11}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 263
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->isDrmPopup()Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 264
    new-instance v2, Lcom/cooliris/drm/DrmPopupInavailable4;

    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v7, v3}, Lcom/cooliris/drm/DrmPopupInavailable4;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 265
    .restart local v2       #drmPopup:Lcom/cooliris/drm/DrmPopup;
    invoke-virtual {v2}, Lcom/cooliris/drm/DrmPopup;->show()V

    goto :goto_a6

    .line 255
    .end local v2           #drmPopup:Lcom/cooliris/drm/DrmPopup;
    :cond_121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v9, 0x7f060059

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    const v9, 0x7f060058

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 257
    new-instance v2, Lcom/cooliris/drm/DrmPopupInavailable3;

    iget-object v7, p0, Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v8

    invoke-direct {v2, v5, v7, v3, v8}, Lcom/cooliris/drm/DrmPopupInavailable3;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;I)V

    .line 259
    .restart local v2       #drmPopup:Lcom/cooliris/drm/DrmPopup;
    invoke-virtual {v2}, Lcom/cooliris/drm/DrmPopup;->show()V

    goto/16 :goto_a6

    .line 271
    .end local v2           #drmPopup:Lcom/cooliris/drm/DrmPopup;
    .end local v5           #popupStrings:Ljava/lang/String;
    :cond_15a
    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->drmInfoUpdate()V

    goto/16 :goto_a6
.end method

.method public setPreviousSelectedSlot(I)V
    .registers 2
    .parameter "slot"

    .prologue
    .line 2064
    iput p1, p0, Lcom/cooliris/media/GridInputProcessor;->mPreviousSelectedSlot:I

    .line 2065
    return-void
.end method

.method public touchEnded(IIF)V
    .registers 16
    .parameter "posX"
    .parameter "posY"
    .parameter "timeElapsedx"

    .prologue
    const/4 v11, -0x1

    const/high16 v10, 0x4000

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 882
    iget-boolean v5, p0, Lcom/cooliris/media/GridInputProcessor;->mProcessTouch:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    sget-object v6, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    if-eq v5, v6, :cond_12

    .line 980
    :cond_11
    :goto_11
    return-void

    .line 887
    :cond_12
    sget-boolean v5, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v5, :cond_1f

    .line 888
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v5

    sget-object v6, Lcom/quramsoft/xiv/SFUtils$AnimationMode;->TRACKING:Lcom/quramsoft/xiv/SFUtils$AnimationMode;

    invoke-virtual {v5, v6, v8}, Lcom/quramsoft/xiv/SFUtils;->setAnimationMode(Lcom/quramsoft/xiv/SFUtils$AnimationMode;Z)V

    .line 892
    :cond_1f
    invoke-direct {p0}, Lcom/cooliris/media/GridInputProcessor;->getFlickThreshold()I

    move-result v4

    .line 893
    .local v4, maxPixelsBeforeSwitch:I
    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iput v10, v5, Lcom/cooliris/media/GridCamera;->mConvergenceSpeed:F

    .line 894
    iget-object v3, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    .line 895
    .local v3, layer:Lcom/cooliris/media/GridLayer;
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getExpandedSlot()I

    move-result v5

    if-ne v5, v11, :cond_57

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->feedAboutToChange()Z

    move-result v5

    if-nez v5, :cond_57

    iget-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    sget-object v6, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    if-ne v5, v6, :cond_57

    .line 897
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    if-eq v5, v11, :cond_10d

    .line 898
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_57

    .line 899
    iget-boolean v5, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchMoved:Z

    if-nez v5, :cond_6a

    .line 901
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_57

    .line 902
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v3, v5, v10}, Lcom/cooliris/media/GridLayer;->changeFocusToSlot(IF)Z

    .line 973
    :cond_57
    :goto_57
    iput v11, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusSlot:I

    .line 974
    iput-boolean v8, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentFocusIsPressed:Z

    .line 975
    int-to-float v5, p1

    iput v5, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosX:F

    .line 976
    int-to-float v5, p2

    iput v5, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevTouchPosY:F

    .line 977
    iput-boolean v8, p0, Lcom/cooliris/media/GridInputProcessor;->mProcessTouch:Z

    .line 978
    sget-object v5, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    iput-object v5, p0, Lcom/cooliris/media/GridInputProcessor;->mZoomGesture:Lcom/cooliris/media/GridInputProcessor$GestureType;

    .line 979
    iput-boolean v8, p0, Lcom/cooliris/media/GridInputProcessor;->istwist:Z

    goto :goto_11

    .line 904
    :cond_6a
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_bf

    .line 907
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->inSlideShowMode()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 908
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    .line 910
    :cond_7b
    int-to-float v5, p1

    iget v6, p0, Lcom/cooliris/media/GridInputProcessor;->mFirstTouchPosX:F

    sub-float v0, v5, v6

    .line 915
    .local v0, deltaX:F
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v3, v5, v10}, Lcom/cooliris/media/GridLayer;->changeFocusToSlot(IF)Z

    .line 916
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v2

    .line 920
    .local v2, hud:Lcom/cooliris/media/HudLayer;
    sget-boolean v5, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v5, :cond_a0

    .line 921
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_57

    .line 922
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v5, v3, v6, p1, v4}, Lcom/quramsoft/xiv/SFUtils;->startAnimation(Lcom/cooliris/media/GridLayer;Lcom/cooliris/media/GridCamera;II)Z

    goto :goto_57

    .line 926
    :cond_a0
    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_af

    invoke-virtual {v2}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v5

    if-eq v5, v9, :cond_af

    .line 928
    invoke-virtual {v3, v7}, Lcom/cooliris/media/GridLayer;->changeFocusToPreviousSlot(F)Z

    goto :goto_57

    .line 929
    :cond_af
    neg-int v5, v4

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_57

    invoke-virtual {v2}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v5

    if-eq v5, v9, :cond_57

    .line 931
    invoke-virtual {v3, v7}, Lcom/cooliris/media/GridLayer;->changeFocusToNextSlot(F)Z

    goto :goto_57

    .line 940
    .end local v0           #deltaX:F
    .end local v2           #hud:Lcom/cooliris/media/HudLayer;
    :cond_bf
    iget v5, p0, Lcom/cooliris/media/GridInputProcessor;->mCurrentSelectedSlot:I

    invoke-virtual {v3, v5}, Lcom/cooliris/media/GridLayer;->constrainCameraForSlot(I)Z

    move-result v1

    .line 943
    .local v1, hitEdge:Z
    if-eqz v1, :cond_109

    iget-boolean v5, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevHitEdge:Z

    if-eqz v5, :cond_109

    .line 944
    int-to-float v5, p1

    iget v6, p0, Lcom/cooliris/media/GridInputProcessor;->mFirstTouchPosX:F

    sub-float v0, v5, v6

    .line 946
    .restart local v0       #deltaX:F
    mul-int/lit8 v4, v4, 0x4

    .line 950
    iput-boolean v8, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevHitEdge:Z

    .line 951
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v2

    .line 952
    .restart local v2       #hud:Lcom/cooliris/media/HudLayer;
    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_ee

    invoke-virtual {v2}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v5

    if-eq v5, v9, :cond_ee

    invoke-direct {p0}, Lcom/cooliris/media/GridInputProcessor;->isFirstSlot()Z

    move-result v5

    if-nez v5, :cond_ee

    .line 954
    invoke-virtual {v3, v7}, Lcom/cooliris/media/GridLayer;->changeFocusToPreviousSlot(F)Z

    goto/16 :goto_57

    .line 955
    :cond_ee
    neg-int v5, v4

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_105

    invoke-virtual {v2}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v5

    if-eq v5, v9, :cond_105

    invoke-direct {p0}, Lcom/cooliris/media/GridInputProcessor;->isLastSlot()Z

    move-result v5

    if-nez v5, :cond_105

    .line 957
    invoke-virtual {v3, v7}, Lcom/cooliris/media/GridLayer;->changeFocusToNextSlot(F)Z

    goto/16 :goto_57

    .line 959
    :cond_105
    iput-boolean v1, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevHitEdge:Z

    goto/16 :goto_57

    .line 962
    .end local v0           #deltaX:F
    .end local v2           #hud:Lcom/cooliris/media/HudLayer;
    :cond_109
    iput-boolean v1, p0, Lcom/cooliris/media/GridInputProcessor;->mPrevHitEdge:Z

    goto/16 :goto_57

    .line 968
    .end local v1           #hitEdge:Z
    :cond_10d
    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->feedAboutToChange()Z

    move-result v5

    if-nez v5, :cond_57

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_57

    iget-boolean v5, p0, Lcom/cooliris/media/GridInputProcessor;->mTouchMoved:Z

    if-eqz v5, :cond_57

    .line 969
    invoke-virtual {p0, v9}, Lcom/cooliris/media/GridInputProcessor;->constrainCamera(Z)V

    goto/16 :goto_57
.end method

.method public twist(Z)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1964
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/cooliris/media/GridInputProcessor;->istwist:Z

    .line 1965
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    if-nez v0, :cond_9

    .line 1993
    :cond_8
    :goto_8
    return v3

    .line 1968
    :cond_9
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getPickIntent()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->isSingleImageMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1973
    const-string v0, "GridInputProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "twist left? = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1975
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->enterSelectionMode(Z)V

    .line 1976
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    .line 1977
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 1978
    iget-object v0, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaSet;->isPicassaAlbum()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1982
    const-string v0, "GridInputProcessor"

    const-string v1, "start rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    if-eqz p1, :cond_7d

    .line 1984
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->rotateSelectedItems(F)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_77} :catch_78

    goto :goto_8

    .line 1989
    :catch_78
    move-exception v0

    .line 1990
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 1986
    :cond_7d
    :try_start_7d
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mLayer:Lcom/cooliris/media/GridLayer;

    const/high16 v1, -0x3d4c

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->rotateSelectedItems(F)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_84} :catch_78

    goto :goto_8
.end method

.method public update(F)V
    .registers 4
    .parameter "timeElapsed"

    .prologue
    .line 1031
    iget v0, p0, Lcom/cooliris/media/GridInputProcessor;->mDpadIgnoreTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/cooliris/media/GridInputProcessor;->mDpadIgnoreTime:F

    .line 1032
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mFriction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    .line 1033
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridInputProcessor;->constrainCamera(Z)V

    .line 1035
    :cond_12
    return-void
.end method
