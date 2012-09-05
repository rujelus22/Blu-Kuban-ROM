.class public Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;
.super Ljava/lang/Object;
.source "Ui3dLogicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$3;,
        Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;,
        Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;,
        Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunSelectTimezone;,
        Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunOnKey;,
        Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunResizeView;,
        Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "Ui3dLogic"

.field private static msInstance:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager; = null

.field private static final ui3d_CurrentRowIdsEvent:I = 0x1

.field public static final ui3d_Gesture_Custom1:I = 0xa

.field public static final ui3d_Gesture_Custom2:I = 0xb

.field public static final ui3d_Gesture_Custom3:I = 0xc

.field public static final ui3d_Gesture_Custom4:I = 0xd

.field public static final ui3d_Gesture_Custom5:I = 0xe

.field public static final ui3d_Gesture_Panning:I = 0x15

.field public static final ui3d_Gesture_PointerTouchDown:I = 0x8

.field public static final ui3d_Gesture_PointerTouchUp:I = 0x9

.field public static final ui3d_Gesture_Tilt:I = 0x14

.field public static final ui3d_Gesture_TouchDown:I = 0x5

.field public static final ui3d_Gesture_TouchMove:I = 0x7

.field public static final ui3d_Gesture_TouchUp:I = 0x6

.field private static final ui3d_GetContentEvent:I


# instance fields
.field private mContentPane:Landroid/view/ViewGroup;

.field private mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

.field private mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

.field private mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

.field private mIsCreated:Z

.field private mIsInitialized:Z

.field private mIsRenderInitialized:Z

.field public mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field private mMainActivity:Landroid/app/Activity;

.field private mMapDp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

.field public mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

.field private mRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundMgr:Lcom/samsung/stri/ui3dglobe/SoundManager;

.field private mTimeStart:J

.field private m_bIsDisableTouch:Z

.field private m_bIsSingleTouchDown:Z

.field private m_bIsToResume:Z

.field private m_bIsViewportAnimationRunning:Z

.field private m_nCurrOrientation:I

.field private m_onRender3DStartedListener:Lcom/samsung/stri/ui3dglobe/onRender3DStartedListener;

.field private m_onViewportAnimationListener:Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;

.field private m_viewportHolder:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->$assertionsDisabled:Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->msInstance:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    .line 69
    const-string v0, "ui3d-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    return-void

    .line 18
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    .line 47
    iput-boolean v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsToResume:Z

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mTimeStart:J

    .line 53
    iput-object v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLocale:Ljava/util/Locale;

    .line 55
    iput-boolean v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsViewportAnimationRunning:Z

    .line 56
    iput-object v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_viewportHolder:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;

    .line 57
    iput-object v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_onViewportAnimationListener:Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;

    .line 59
    iput-object v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_onRender3DStartedListener:Lcom/samsung/stri/ui3dglobe/onRender3DStartedListener;

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mRunnableList:Ljava/util/ArrayList;

    .line 706
    iput-object v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    .line 708
    iput-object v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMapDp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    .line 715
    iput-boolean v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsRenderInitialized:Z

    .line 716
    iput-boolean v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsInitialized:Z

    .line 717
    iput-boolean v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsCreated:Z

    .line 722
    iput-boolean v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsSingleTouchDown:Z

    .line 723
    iput v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_nCurrOrientation:I

    .line 88
    invoke-direct {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeInit()V

    .line 89
    return-void
.end method

.method public static Instance()Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->msInstance:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    if-nez v0, :cond_b

    .line 74
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-direct {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;-><init>()V

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->msInstance:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    .line 77
    :cond_b
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->msInstance:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    return-object v0
.end method

.method private OnDestroy()V
    .registers 3

    .prologue
    .line 327
    const-string v0, "Ui3dLogic"

    const-string v1, "======= OnDestroy() ============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsRenderInitialized:Z

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsCreated:Z

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsInitialized:Z

    .line 333
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    if-eqz v0, :cond_1f

    .line 334
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->Release()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    .line 339
    :cond_1f
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    if-eqz v0, :cond_2b

    .line 340
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->destroy()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    .line 345
    :cond_2b
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMapDp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    if-eqz v0, :cond_37

    .line 346
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMapDp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->Release()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMapDp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    .line 349
    :cond_37
    invoke-direct {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeDestroy()V

    .line 350
    monitor-exit v1

    .line 357
    return-void

    .line 350
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_b .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public static ReleaseInstance()V
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->msInstance:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    if-eqz v0, :cond_c

    .line 82
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->msInstance:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-direct {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->OnDestroy()V

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->msInstance:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    .line 85
    :cond_c
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)Lcom/samsung/stri/ui3dglobe/onRender3DStartedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_onRender3DStartedListener:Lcom/samsung/stri/ui3dglobe/onRender3DStartedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_onViewportAnimationListener:Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeResizeView(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnKey(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeSelectTimezone(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IZZZ)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeBringCityToFront(IZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IIIIII)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p6}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeAnimateViewPort(IIIIII)V

    return-void
.end method

.method private native nativeAnimateViewPort(IIIIII)V
.end method

.method private native nativeBringCityToFront(IZZZ)Z
.end method

.method private native nativeBringCoordinateToFront(FFFZ)Z
.end method

.method private native nativeChangeOrientation(I)V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativeOnKey(IZ)V
.end method

.method private native nativeOnMotionGesture(IFII)V
.end method

.method private native nativeOnTouch(IIIII)V
.end method

.method private native nativeRefreshGLContext()V
.end method

.method private native nativeRender()V
.end method

.method private native nativeRenderInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I
.end method

.method private native nativeResizeView(II)V
.end method

.method private native nativeSelectTimezone(I)V
.end method

.method private native nativeZeroState(Z)V
.end method

.method private onRender3DStarted()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_onRender3DStartedListener:Lcom/samsung/stri/ui3dglobe/onRender3DStartedListener;

    if-eqz v0, :cond_e

    .line 222
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$1;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 229
    :cond_e
    return-void
.end method

.method private onViewportAnimationFlow(I)V
    .registers 4
    .parameter "flowEvent"

    .prologue
    .line 535
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsViewportAnimationRunning:Z

    .line 539
    :cond_6
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_onViewportAnimationListener:Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;

    if-eqz v0, :cond_14

    .line 540
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$2;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 557
    :cond_14
    return-void
.end method


# virtual methods
.method public AnimateViewPort(ILcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;Landroid/graphics/Rect;)V
    .registers 9
    .parameter "time_ms"
    .parameter "anim_type"
    .parameter "viewport_delta"

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, nAnim_type:I
    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$3;->$SwitchMap$com$samsung$stri$ui3dglobe$Ui3dLogicManager$ViewportAnimationType:[I

    invoke-virtual {p2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$ViewportAnimationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_42

    .line 575
    sget-boolean v1, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->$assertionsDisabled:Z

    if-nez v1, :cond_17

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 566
    :pswitch_16
    const/4 v0, 0x0

    .line 578
    :cond_17
    :goto_17
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 579
    :try_start_1a
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mRunnableList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v3, p0, p1, v0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IILandroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v1, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v1, p0, v3, v0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IILandroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_viewportHolder:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;

    .line 581
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsViewportAnimationRunning:Z

    .line 582
    monitor-exit v2

    .line 583
    return-void

    .line 569
    :pswitch_3b
    const/4 v0, 0x1

    .line 570
    goto :goto_17

    .line 572
    :pswitch_3d
    const/4 v0, 0x1

    .line 573
    goto :goto_17

    .line 582
    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_3f

    throw v1

    .line 563
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_16
        :pswitch_3b
        :pswitch_3d
    .end packed-switch
.end method

.method public CenterOnCoordinate(FFFZ)Z
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "bBringCoordWithAnimation"

    .prologue
    .line 521
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 522
    :try_start_3
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsInitialized:Z

    if-eqz v0, :cond_a

    .line 523
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeBringCoordinateToFront(FFFZ)Z

    .line 525
    :cond_a
    monitor-exit v1

    .line 527
    const/4 v0, 0x1

    return v0

    .line 525
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public GetDP()Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-direct {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;-><init>()V

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    .line 96
    :cond_b
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    return-object v0
.end method

.method public GetMapDP()Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMapDp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    if-nez v0, :cond_12

    .line 101
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    invoke-direct {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;-><init>()V

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMapDp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    .line 102
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMapDp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    const-string v1, "dp_map"

    invoke-virtual {v0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->SetID(Ljava/lang/String;)V

    .line 105
    :cond_12
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMapDp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    return-object v0
.end method

.method public Init(Landroid/app/Activity;Landroid/view/ViewGroup;JZLjava/lang/String;)Z
    .registers 16
    .parameter "act"
    .parameter "contentPane"
    .parameter "startTime"
    .parameter "isToResume"
    .parameter "packageSubStr"

    .prologue
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 122
    .local v2, t:J
    sub-long v0, v2, p3

    .line 123
    .local v0, cT:J
    const-string v5, "Ui3dLogic"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ---- TIME : ui3dLogicManager::Init(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 126
    :try_start_27
    iput-boolean p5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsToResume:Z

    .line 127
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsInitialized:Z

    .line 128
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsCreated:Z

    .line 130
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-virtual {v5, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->AttachActivity(Landroid/app/Activity;)V

    .line 131
    iput-object p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mContentPane:Landroid/view/ViewGroup;

    .line 132
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMainActivity:Landroid/app/Activity;

    .line 134
    iput-wide p3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mTimeStart:J

    .line 136
    new-instance v5, Lcom/samsung/stri/ui3dglobe/SoundManager;

    invoke-direct {v5}, Lcom/samsung/stri/ui3dglobe/SoundManager;-><init>()V

    iput-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mSoundMgr:Lcom/samsung/stri/ui3dglobe/SoundManager;

    .line 140
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    if-eqz v5, :cond_4a

    .line 141
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-virtual {v5}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->destroy()V

    .line 142
    :cond_4a
    new-instance v5, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-direct {v5}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;-><init>()V

    iput-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    .line 145
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    const/4 v7, 0x0

    invoke-virtual {v5, p1, p6, v7}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->Start(Landroid/content/Context;Ljava/lang/String;I)V

    .line 147
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->WaitForDataInit()V

    .line 148
    invoke-static {}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->GetPreloadState()I

    move-result v5

    const v7, 0x80001

    if-eq v5, v7, :cond_80

    .line 149
    const-string v5, "Ui3dLogic"

    const-string v7, "Can\'t load model"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMainActivity:Landroid/app/Activity;

    const-string v7, "Error - Not enough memory to run this operation. Close some applications and try to run again."

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 156
    .local v4, toast:Landroid/widget/Toast;
    const/16 v5, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 157
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 159
    const/4 v5, 0x0

    monitor-exit v6

    .line 188
    .end local v4           #toast:Landroid/widget/Toast;
    :goto_7f
    return v5

    .line 162
    :cond_80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v2

    .line 163
    const-string v5, "Ui3dLogic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ---- TIME : After ui3dLogicManager::Init(Ui3dInitData.WaitForDataInit()): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v5, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMainActivity:Landroid/app/Activity;

    invoke-direct {v5, v7}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    .line 168
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    invoke-virtual {v5, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->SetLogic(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)V

    .line 171
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mContentPane:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v2

    .line 174
    const-string v5, "Ui3dLogic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ---- TIME : After ui3dLogicManager::Init(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-virtual {v5}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->HasData()Z

    move-result v5

    if-nez v5, :cond_106

    .line 177
    const-string v5, "Ui3dLogic"

    const-string v7, "3D resources are missing"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMainActivity:Landroid/app/Activity;

    const-string v7, "Error - 3D resources are missing"

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 182
    .restart local v4       #toast:Landroid/widget/Toast;
    const/16 v5, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 183
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 185
    const/4 v5, 0x0

    monitor-exit v6

    goto/16 :goto_7f

    .line 189
    .end local v4           #toast:Landroid/widget/Toast;
    :catchall_103
    move-exception v5

    monitor-exit v6
    :try_end_105
    .catchall {:try_start_27 .. :try_end_105} :catchall_103

    throw v5

    .line 188
    :cond_106
    const/4 v5, 0x1

    :try_start_107
    monitor-exit v6
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_103

    goto/16 :goto_7f
.end method

.method public OnKey(IZ)Z
    .registers 6
    .parameter "vkey"
    .parameter "bAnimateZoom"

    .prologue
    .line 373
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_3
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsInitialized:Z

    if-eqz v0, :cond_d

    .line 375
    invoke-direct {p0, p1, p2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnKey(IZ)V

    .line 379
    :goto_a
    monitor-exit v1

    .line 380
    const/4 v0, 0x0

    return v0

    .line 377
    :cond_d
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mRunnableList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunOnKey;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunOnKey;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IZ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 379
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public OnMotionPanning(II)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 487
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    const/16 v0, 0x15

    const/4 v2, 0x0

    :try_start_6
    invoke-direct {p0, v0, v2, p1, p2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnMotionGesture(IFII)V

    .line 489
    monitor-exit v1

    .line 490
    const/4 v0, 0x1

    return v0

    .line 489
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public OnMotionTilt(F)Z
    .registers 6
    .parameter "tiltValue"

    .prologue
    .line 479
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    const/16 v0, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_7
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnMotionGesture(IFII)V

    .line 481
    monitor-exit v1

    .line 482
    const/4 v0, 0x1

    return v0

    .line 481
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public OnPause()V
    .registers 3

    .prologue
    .line 311
    const-string v0, "Ui3dLogic"

    const-string v1, "======= OnPause() ============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    if-eqz v0, :cond_10

    .line 313
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->onPause()V

    .line 314
    :cond_10
    return-void
.end method

.method public OnResume(Z)V
    .registers 5
    .parameter "bInitialize"

    .prologue
    .line 317
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_3
    const-string v0, "Ui3dLogic"

    const-string v2, "======= OnResume() ============="

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-nez p1, :cond_1a

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsToResume:Z

    .line 320
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    if-eqz v0, :cond_18

    .line 321
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->onResume()V

    .line 322
    :cond_18
    monitor-exit v1

    .line 323
    return-void

    .line 319
    :cond_1a
    const/4 v0, 0x0

    goto :goto_d

    .line 322
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public ReInit(Landroid/app/Activity;Landroid/view/ViewGroup;JZLjava/lang/String;)Z
    .registers 9
    .parameter "act"
    .parameter "contentPane"
    .parameter "startTime"
    .parameter "isToResume"
    .parameter "packageSubStr"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsCreated:Z

    if-nez v0, :cond_10

    .line 112
    const-string v0, "Ui3dLogic"

    const-string v1, "=== Calling ReInit (mIsInitialized is false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual/range {p0 .. p6}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->Init(Landroid/app/Activity;Landroid/view/ViewGroup;JZLjava/lang/String;)Z

    move-result v0

    .line 116
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public RegisterRender3DListener(Lcom/samsung/stri/ui3dglobe/onRender3DStartedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_onRender3DStartedListener:Lcom/samsung/stri/ui3dglobe/onRender3DStartedListener;

    .line 217
    return-void
.end method

.method public SelectTimezone(I)V
    .registers 6
    .parameter "id"

    .prologue
    .line 494
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    :try_start_3
    const-string v0, "Ui3dLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SelectTimezone( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mRunnableList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunSelectTimezone;

    invoke-direct {v2, p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunSelectTimezone;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    monitor-exit v1

    .line 500
    return-void

    .line 499
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public ShowCity(IZZZ)Z
    .registers 13
    .parameter "id"
    .parameter "bSetCityZoomLevel"
    .parameter "bBringCityWithAnimation"
    .parameter "bAnimateZoom"

    .prologue
    .line 505
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 507
    :try_start_3
    const-string v0, "Ui3dLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShowCity( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) - bSetCityZoomLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsInitialized:Z

    if-eqz v0, :cond_2f

    .line 510
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeBringCityToFront(IZZZ)Z

    .line 515
    :goto_2c
    monitor-exit v6

    .line 516
    const/4 v0, 0x1

    return v0

    .line 512
    :cond_2f
    iget-object v7, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mRunnableList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunBringCityToFront;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IZZZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 515
    :catchall_3f
    move-exception v0

    monitor-exit v6
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_3
    const-string v0, "JLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======= onConfigurationChanged newConfig = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_nCurrOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_2a

    .line 366
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_nCurrOrientation:I

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsToResume:Z

    .line 369
    :cond_2a
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public onContextBeforeDestroy(Landroid/view/ViewGroup;)V
    .registers 5
    .parameter "contentPane"

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mContentPane:Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 207
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    if-eqz v0, :cond_12

    .line 208
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mContentPane:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    iput-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    .line 212
    :cond_12
    iput-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mContentPane:Landroid/view/ViewGroup;

    .line 213
    return-void
.end method

.method public onContextChanged(Landroid/app/Activity;Landroid/view/ViewGroup;J)V
    .registers 7
    .parameter "act"
    .parameter "contentPane"
    .parameter "startTime"

    .prologue
    .line 193
    iput-wide p3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mTimeStart:J

    .line 194
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-virtual {v0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->AttachActivity(Landroid/app/Activity;)V

    .line 195
    iput-object p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mContentPane:Landroid/view/ViewGroup;

    .line 196
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMainActivity:Landroid/app/Activity;

    .line 198
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMainActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    .line 199
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    invoke-virtual {v0, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->SetLogic(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mContentPane:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "ev"

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v0, v9

    double-to-int v2, v0

    .line 385
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v0, v9

    double-to-int v3, v0

    .line 387
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 388
    .local v6, actionCode:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 390
    .local v7, nPointers:I
    iget-object v9, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 392
    const/4 v0, 0x2

    if-le v7, v0, :cond_2b

    .line 393
    const/4 v0, 0x1

    :try_start_23
    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsDisableTouch:Z

    .line 394
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    sget v1, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_NONE:I

    iput v1, v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mState:I

    .line 398
    :cond_2b
    if-nez v6, :cond_7d

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsSingleTouchDown:Z

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsDisableTouch:Z

    .line 401
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    sget v1, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_MOVE:I

    iput v1, v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mState:I

    .line 402
    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnTouch(IIIII)V

    .line 417
    :cond_40
    :goto_40
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsDisableTouch:Z

    if-nez v0, :cond_7a

    .line 419
    const/4 v0, 0x5

    if-ne v6, v0, :cond_a8

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 422
    .local v8, pointIndex:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v0, v10

    double-to-int v2, v0

    .line 423
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v0, v10

    double-to-int v3, v0

    .line 425
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    sget v1, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_TILT:I

    iput v1, v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mState:I

    .line 426
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    const/16 v1, 0xf

    iput v1, v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mTiltAdjustDegree:I

    .line 430
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsSingleTouchDown:Z

    if-eqz v0, :cond_6e

    .line 431
    const/4 v8, 0x1

    .line 434
    :cond_6e
    if-nez v8, :cond_9c

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsSingleTouchDown:Z

    .line 437
    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnTouch(IIIII)V

    .line 472
    .end local v8           #pointIndex:I
    :cond_7a
    :goto_7a
    monitor-exit v9

    .line 473
    const/4 v0, 0x1

    return v0

    .line 406
    :cond_7d
    const/4 v0, 0x1

    if-ne v6, v0, :cond_40

    .line 407
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    sget v1, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_NONE:I

    iput v1, v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mState:I

    .line 408
    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnTouch(IIIII)V

    .line 409
    const/16 v1, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnTouch(IIIII)V

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsSingleTouchDown:Z

    goto :goto_40

    .line 472
    :catchall_99
    move-exception v0

    monitor-exit v9
    :try_end_9b
    .catchall {:try_start_23 .. :try_end_9b} :catchall_99

    throw v0

    .line 439
    .restart local v8       #pointIndex:I
    :cond_9c
    const/4 v0, 0x1

    if-ne v8, v0, :cond_7a

    .line 440
    const/16 v1, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_a4
    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnTouch(IIIII)V

    goto :goto_7a

    .line 444
    .end local v8           #pointIndex:I
    :cond_a8
    const/4 v0, 0x6

    if-ne v6, v0, :cond_e0

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 447
    .restart local v8       #pointIndex:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v0, v10

    double-to-int v2, v0

    .line 448
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v0, v10

    double-to-int v3, v0

    .line 450
    if-nez v8, :cond_d4

    .line 451
    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnTouch(IIIII)V

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsSingleTouchDown:Z

    .line 459
    :cond_cd
    :goto_cd
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMotionDetector:Lcom/samsung/stri/ui3dglobe/MotionDetector;

    sget v1, Lcom/samsung/stri/ui3dglobe/MotionDetector;->STATE_MOVE:I

    iput v1, v0, Lcom/samsung/stri/ui3dglobe/MotionDetector;->mState:I

    goto :goto_7a

    .line 455
    :cond_d4
    const/4 v0, 0x1

    if-ne v8, v0, :cond_cd

    .line 456
    const/16 v1, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnTouch(IIIII)V

    goto :goto_cd

    .line 460
    .end local v8           #pointIndex:I
    :cond_e0
    const/4 v0, 0x2

    if-ne v6, v0, :cond_7a

    .line 461
    const/4 v4, -0x1

    .local v4, x1:I
    const/4 v5, -0x1

    .line 463
    .local v5, y1:I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_fc

    .line 464
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v0, v10

    double-to-int v4, v0

    .line 465
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v0, v10

    double-to-int v5, v0

    .line 468
    :cond_fc
    const/4 v1, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeOnTouch(IIIII)V
    :try_end_101
    .catchall {:try_start_a4 .. :try_end_101} :catchall_99

    goto/16 :goto_7a
.end method

.method public render()V
    .registers 4

    .prologue
    .line 297
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 298
    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsRenderInitialized:Z

    if-eqz v1, :cond_2d

    .line 299
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 300
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    .line 307
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1

    .line 303
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 304
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-virtual {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->SendResponses()V

    .line 305
    invoke-direct {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeRender()V

    .line 307
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_1d

    .line 308
    return-void
.end method

.method public renderInit(II)V
    .registers 15
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x1

    .line 233
    iget v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_nCurrOrientation:I

    if-nez v1, :cond_a

    .line 234
    if-le p1, p2, :cond_8

    const/4 v0, 0x2

    :cond_8
    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_nCurrOrientation:I

    .line 238
    :cond_a
    iget-object v11, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 239
    :try_start_d
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsRenderInitialized:Z

    if-nez v0, :cond_93

    .line 240
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    if-eqz v0, :cond_20

    .line 241
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->SetAsyncHandling(Z)V

    .line 242
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->Create()V

    .line 244
    :cond_20
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMapDp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    if-eqz v0, :cond_29

    .line 245
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mMapDp:Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dStaticDP;->Init()V

    .line 248
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 249
    .local v9, t:J
    iget-wide v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mTimeStart:J

    sub-long v7, v9, v0

    .line 251
    .local v7, cT:J
    const-string v0, "Ui3dLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== TIME: renderInit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->GetXMLFileName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->GetDataPath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mInitData:Lcom/samsung/stri/ui3dglobe/Ui3dInitData;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dInitData;->GetSoundPath()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsToResume:Z

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeRenderInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsRenderInitialized:Z

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsInitialized:Z

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v7, v0, v9

    .line 261
    const-string v0, "Ui3dLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== TIME: After nativeRenderInit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    if-eqz v0, :cond_91

    .line 263
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mDp:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->SetAsyncHandling(Z)V

    .line 274
    .end local v7           #cT:J
    .end local v9           #t:J
    :cond_91
    :goto_91
    monitor-exit v11

    .line 275
    return-void

    .line 265
    :cond_93
    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsToResume:Z

    invoke-direct {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeZeroState(Z)V

    .line 266
    invoke-direct {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeRefreshGLContext()V

    .line 267
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_viewportHolder:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;

    if-eqz v0, :cond_c2

    iget-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsViewportAnimationRunning:Z

    if-nez v0, :cond_c2

    .line 268
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mRunnableList:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_viewportHolder:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_anim_type:I
    invoke-static {v3}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->access$100(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_viewportHolder:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_viewport:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->access$200(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_bIsViewportAnimationRunning:Z

    .line 272
    :cond_c2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsInitialized:Z

    goto :goto_91

    .line 274
    :catchall_c6
    move-exception v0

    monitor-exit v11
    :try_end_c8
    .catchall {:try_start_d .. :try_end_c8} :catchall_c6

    throw v0
.end method

.method public resizeView(II)V
    .registers 10
    .parameter "w"
    .parameter "h"

    .prologue
    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 280
    .local v2, t:J
    iget-wide v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mTimeStart:J

    sub-long v0, v2, v4

    .line 282
    .local v0, cT:J
    const-string v4, "Ui3dLogic"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=== TIME: resizeView width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 285
    :try_start_37
    iget-boolean v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mIsInitialized:Z

    if-eqz v4, :cond_5e

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeResizeView(II)V

    .line 290
    :goto_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_69

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 293
    const-string v4, "Ui3dLogic"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=== TIME: After resizeView : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 288
    :cond_5e
    :try_start_5e
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mRunnableList:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunResizeView;

    invoke-direct {v6, p0, p1, p2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunResizeView;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;II)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 290
    :catchall_69
    move-exception v4

    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_69

    throw v4
.end method

.method public setOnGlobeViewAnimationListener(Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;)V
    .registers 2
    .parameter "_onGlobeViewAnimationListener"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->m_onViewportAnimationListener:Lcom/samsung/stri/ui3dglobe/onGlobeViewAnimationListener;

    .line 532
    return-void
.end method
