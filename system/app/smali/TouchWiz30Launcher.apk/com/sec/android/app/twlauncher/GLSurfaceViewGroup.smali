.class public Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
.super Landroid/view/ViewGroup;
.source "GLSurfaceViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GLSurfaceCreatedNotifier;,
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;,
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;,
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mIsPortrait:Z

.field private static sOurTopLandscape:I

.field private static sOurTopPortrait:I

.field public static sTextureUploadLock:Ljava/lang/Object;

.field private static screenShotCounter:I


# instance fields
.field private IM4x4:[F

.field private M3x3:[F

.field private M4x4:[F

.field private RM4x4:[F

.field private SM4x4:[F

.field private TM4x4:[F

.field private mAllPreloaded:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockDispatchDraw:Z

.field private mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

.field private mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

.field private mDrawBlackFrame:Z

.field private mDrawRequested:Z

.field private mFixedHeight:I

.field private mFocalDepth:F

.field private mFrameDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mLastFrameStartTime:J

.field private mMyLoc:[I

.field private mPreloadOnNextFrame:Z

.field private mPreloadQueue:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mProjection:[F

.field private mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mSuspendDrawingUntilResume:Z

.field private mTransRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/TransRef;",
            ">;"
        }
    .end annotation
.end field

.field private mViewLoc:[I

.field private mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

.field private trans:Landroid/view/animation/Transformation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->screenShotCounter:I

    .line 78
    sput v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopPortrait:I

    .line 80
    sput v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopLandscape:I

    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    .line 1202
    const-string v0, "GLSurfaceViewGroup"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    .line 62
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    .line 70
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    .line 72
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    .line 74
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    .line 76
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    .line 86
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    .line 90
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    .line 92
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    .line 688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    .line 689
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    .line 690
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    .line 1003
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->SM4x4:[F

    .line 1005
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TM4x4:[F

    .line 1007
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->IM4x4:[F

    .line 1045
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    .line 1047
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    .line 1049
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->RM4x4:[F

    .line 1051
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->trans:Landroid/view/animation/Transformation;

    .line 1168
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    .line 1170
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    .line 100
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->init(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    .line 62
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    .line 70
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    .line 72
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    .line 74
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    .line 76
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    .line 86
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    .line 90
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    .line 92
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    .line 688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    .line 689
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    .line 690
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    .line 1003
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->SM4x4:[F

    .line 1005
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TM4x4:[F

    .line 1007
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->IM4x4:[F

    .line 1045
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    .line 1047
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    .line 1049
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->RM4x4:[F

    .line 1051
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->trans:Landroid/view/animation/Transformation;

    .line 1168
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    .line 1170
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    .line 105
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->init(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)Ljava/util/concurrent/Semaphore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->refreshAllPreloaded()V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawWithoutViewRoot()V

    return-void
.end method

.method private calcProjectionMatrix()V
    .registers 13

    .prologue
    const/16 v11, 0x10

    const/4 v1, 0x0

    const/high16 v10, 0x4000

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v2

    int-to-float v9, v2

    .line 638
    .local v9, w:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v2

    int-to-float v8, v2

    .line 639
    .local v8, h:F
    new-array v0, v11, [F

    .line 640
    .local v0, projection:[F
    mul-float v2, v9, v10

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    .line 641
    neg-float v2, v9

    div-float/2addr v2, v10

    div-float v3, v9, v10

    div-float v4, v8, v10

    neg-float v5, v8

    div-float/2addr v5, v10

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    mul-float/2addr v7, v10

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 646
    const/16 v2, 0xa

    const/16 v3, 0xe

    const/4 v4, 0x0

    aput v4, v0, v3

    aput v4, v0, v2

    .line 650
    new-array v6, v11, [F

    .line 651
    .local v6, pretrans:[F
    invoke-static {v6, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 652
    neg-float v2, v9

    div-float/2addr v2, v10

    neg-float v3, v8

    div-float/2addr v3, v10

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    neg-float v4, v4

    invoke-static {v6, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 653
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 654
    return-void
.end method

.method private convertMatrix3x3To4x4([F[F)V
    .registers 14
    .parameter "M3x3"
    .parameter "M4x4"

    .prologue
    const/high16 v9, 0x3f00

    const/high16 v8, -0x4080

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1010
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TM4x4:[F

    .line 1011
    .local v2, localTM4x4:[F
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->SM4x4:[F

    .line 1012
    .local v4, localSM4x4:[F
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->IM4x4:[F

    .line 1014
    .local v0, localIM4x4:[F
    aget v3, p1, v1

    aput v3, v2, v1

    .line 1015
    const/4 v3, 0x1

    const/4 v5, 0x3

    aget v5, p1, v5

    aput v5, v2, v3

    .line 1016
    const/4 v3, 0x2

    aput v6, v2, v3

    .line 1017
    const/4 v3, 0x3

    const/4 v5, 0x6

    aget v5, p1, v5

    aput v5, v2, v3

    .line 1019
    const/4 v3, 0x4

    const/4 v5, 0x1

    aget v5, p1, v5

    aput v5, v2, v3

    .line 1020
    const/4 v3, 0x5

    const/4 v5, 0x4

    aget v5, p1, v5

    aput v5, v2, v3

    .line 1021
    const/4 v3, 0x6

    aput v6, v2, v3

    .line 1022
    const/4 v3, 0x7

    const/4 v5, 0x7

    aget v5, p1, v5

    aput v5, v2, v3

    .line 1024
    const/16 v3, 0x8

    aput v6, v2, v3

    .line 1025
    const/16 v3, 0x9

    aput v6, v2, v3

    .line 1026
    const/16 v3, 0xa

    aput v7, v2, v3

    .line 1027
    const/16 v3, 0xb

    aput v6, v2, v3

    .line 1029
    const/16 v3, 0xc

    const/4 v5, 0x2

    aget v5, p1, v5

    aput v5, v2, v3

    .line 1030
    const/16 v3, 0xd

    const/4 v5, 0x5

    aget v5, p1, v5

    aput v5, v2, v3

    .line 1031
    const/16 v3, 0xe

    aput v6, v2, v3

    .line 1032
    const/16 v3, 0xf

    const/16 v5, 0x8

    aget v5, p1, v5

    aput v5, v2, v3

    .line 1034
    invoke-static {v4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1035
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    invoke-static {v4, v1, v3, v5, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1036
    invoke-static {v4, v1, v7, v7, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move v3, v1

    move v5, v1

    .line 1037
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1039
    invoke-static {v4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1040
    invoke-static {v4, v1, v8, v8, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1041
    const/high16 v3, 0x4000

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x4000

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v1, v3, v5, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    move-object v5, p2

    move v6, v1

    move-object v7, v4

    move v8, v1

    move-object v9, v0

    move v10, v1

    .line 1042
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1043
    return-void
.end method

.method private doDispatchDrawGL()V
    .registers 11

    .prologue
    const/high16 v5, 0x4000

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 756
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    if-eqz v3, :cond_10

    .line 757
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "Skipped drawing due to suspendDrawingUntilResume()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_f
    return-void

    .line 760
    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    monitor-enter v4

    .line 761
    :try_start_13
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->isReady()Z

    move-result v3

    if-nez v3, :cond_48

    .line 762
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v5, "Skipped drawing because egl surface is not ready yet"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 767
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v5, "Surface is not valid, skip rendering, from 1st meet"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    monitor-exit v4

    goto :goto_f

    .line 777
    :catchall_3b
    move-exception v3

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_3b

    throw v3

    .line 772
    :cond_3e
    :try_start_3e
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 774
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    .line 775
    monitor-exit v4

    goto :goto_f

    .line 777
    :cond_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_3b

    .line 778
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    .line 782
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 783
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->measure(II)V

    .line 787
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->layout(IIII)V

    .line 796
    :cond_85
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    monitor-enter v4

    .line 798
    :try_start_88
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    if-eqz v3, :cond_91

    .line 799
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->recycle()V

    .line 802
    :cond_91
    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v7

    invoke-direct {v3, v5, p0, v6, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;II)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    .line 804
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->setProjectionMatrix([F)V

    .line 808
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {p0, v3, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z

    move-result v2

    .line 809
    .local v2, more:Z
    if-eqz v2, :cond_b4

    .line 810
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    .line 812
    :cond_b4
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    if-ne v3, v9, :cond_c0

    .line 813
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->doPreload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 814
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    .line 817
    :cond_c0
    if-nez v2, :cond_ce

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->hasNextPreloadable()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 818
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    .line 819
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->postInvalidate()V

    .line 822
    :cond_ce
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->getSceneGraph()Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->setSceneGraph(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    .line 829
    monitor-exit v4
    :try_end_da
    .catchall {:try_start_88 .. :try_end_da} :catchall_11d

    .line 831
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->getTransRefList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    .line 833
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 837
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_127

    .line 838
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "Surface is not valid, skip rendering, from 2nd meet"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->setupEGL(Z)V

    .line 843
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->onResume()V

    .line 844
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_120

    .line 846
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "Still not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 829
    .end local v2           #more:Z
    :catchall_11d
    move-exception v3

    :try_start_11e
    monitor-exit v4
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    throw v3

    .line 849
    .restart local v2       #more:Z
    :cond_120
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "Now is valid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_127
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 855
    :try_start_12c
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 857
    .local v0, acquired:Z
    if-nez v0, :cond_13f

    .line 858
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "timeout while waiting for GLThread to draw a frame"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catch Ljava/lang/InterruptedException; {:try_start_12c .. :try_end_13f} :catch_146

    .line 865
    .end local v0           #acquired:Z
    :cond_13f
    :goto_13f
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->assertBalancedSaveRestore()V

    goto/16 :goto_f

    .line 861
    :catch_146
    move-exception v1

    .line 862
    .local v1, e:Ljava/lang/InterruptedException;
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "InterruptedException caught while waiting for GLThread to draw a frame."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f
.end method

.method private declared-synchronized doPreload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 1188
    monitor-enter p0

    const/16 v0, 0x8

    .line 1189
    .local v0, left:I
    :goto_3
    if-lez v0, :cond_17

    :try_start_5
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->hasNextPreloadable()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1190
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getNextPreloadable()Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    move-result-object v1

    .line 1191
    .local v1, preloadable:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    if-eqz v1, :cond_14

    .line 1192
    invoke-interface {v1, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_19

    .line 1194
    :cond_14
    add-int/lit8 v0, v0, -0x1

    .line 1195
    goto :goto_3

    .line 1196
    .end local v1           #preloadable:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    :cond_17
    monitor-exit p0

    return-void

    .line 1188
    :catchall_19
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private drawWithoutViewRoot()V
    .registers 2

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v0

    if-nez v0, :cond_10

    .line 708
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestLayout()V

    .line 712
    :goto_f
    return-void

    .line 711
    :cond_10
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->doDispatchDrawGL()V

    goto :goto_f
.end method

.method public static drawableToRetainedSurface(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .registers 11
    .parameter "canvas"
    .parameter "surface"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 587
    if-nez p3, :cond_4

    move-object v3, p1

    .line 604
    .end local p1
    .local v3, surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    :goto_3
    return-object v3

    .line 590
    .end local v3           #surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .restart local p1
    :cond_4
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 591
    new-instance v2, Landroid/graphics/Point;

    iget v4, p3, Landroid/graphics/Rect;->right:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 592
    .local v2, size:Landroid/graphics/Point;
    iget v4, v2, Landroid/graphics/Point;->x:I

    if-lez v4, :cond_3a

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-lez v4, :cond_3a

    .line 593
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 595
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 596
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 597
    if-nez p1, :cond_3c

    .line 598
    new-instance p1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .end local p1
    invoke-direct {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    .line 599
    .restart local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    :cond_3a
    :goto_3a
    move-object v3, p1

    .line 604
    .end local p1
    .restart local v3       #surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    goto :goto_3

    .line 601
    .end local v3           #surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v1       #c:Landroid/graphics/Canvas;
    .restart local p1
    :cond_3c
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    goto :goto_3a
.end method

.method public static findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .registers 3
    .parameter "child"

    .prologue
    .line 612
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 613
    .local v0, parent:Landroid/view/ViewParent;
    :goto_4
    if-eqz v0, :cond_f

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    if-nez v1, :cond_f

    .line 614
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 615
    :cond_f
    if-eqz v0, :cond_18

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    if-eqz v1, :cond_18

    .line 616
    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    .line 618
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_17
    return-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private declared-synchronized getNextPreloadable()Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    .registers 4

    .prologue
    .line 1177
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1178
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    .line 1180
    .local v1, p:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_20

    .line 1183
    .end local v1           #p:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    :goto_1c
    monitor-exit p0

    return-object v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1c

    .line 1177
    .end local v0           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;>;"
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized hasNextPreloadable()Z
    .registers 2

    .prologue
    .line 1173
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 110
    .local v2, status_bar:I
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 111
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 112
    .local v3, w:I
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 113
    .local v0, h:I
    if-le v0, v3, :cond_2b

    move v1, v0

    .line 114
    .local v1, height:I
    :goto_26
    sub-int v5, v1, v2

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFixedHeight:I

    .line 115
    return-void

    .end local v1           #height:I
    :cond_2b
    move v1, v3

    .line 113
    goto :goto_26
.end method

.method public static invalidateViewTree(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 551
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 552
    .local v0, found:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    if-eqz v0, :cond_9

    .line 553
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    .line 554
    :cond_9
    return-void
.end method

.method private declared-synchronized refreshAllPreloaded()V
    .registers 3

    .prologue
    .line 1199
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 1200
    monitor-exit p0

    return-void

    .line 1199
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static requestFrame(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 545
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 546
    .local v0, found:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    if-eqz v0, :cond_9

    .line 547
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    .line 548
    :cond_9
    return-void
.end method


# virtual methods
.method applyAnimation(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;)Z
    .registers 12
    .parameter "canvas"
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 1054
    invoke-interface {p2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;->getAnimationGL()Landroid/view/animation/Animation;

    move-result-object v6

    .line 1056
    .local v6, a:Landroid/view/animation/Animation;
    if-eqz v6, :cond_3e

    .line 1057
    new-instance v8, Landroid/view/animation/Transformation;

    invoke-direct {v8}, Landroid/view/animation/Transformation;-><init>()V

    .line 1059
    .local v8, t:Landroid/view/animation/Transformation;
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 1061
    .local v0, RM4x4:[F
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3, v8}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v7

    .line 1063
    .local v7, more:Z
    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1065
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->convertMatrix3x3To4x4([F[F)V

    .line 1067
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->getProjectionMatrix()[F

    move-result-object v4

    .line 1069
    .local v4, originalM:[F
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1071
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setProjectionMatrix([F)V

    .line 1073
    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 1077
    .end local v0           #RM4x4:[F
    .end local v4           #originalM:[F
    .end local v7           #more:Z
    .end local v8           #t:Landroid/view/animation/Transformation;
    :goto_3d
    return v7

    :cond_3e
    move v7, v1

    goto :goto_3d
.end method

.method public calculateCenterOffset(Landroid/view/View;[F)Z
    .registers 14
    .parameter "child"
    .parameter "offsets"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f00

    .line 931
    if-eqz p2, :cond_b

    array-length v5, p2

    const/4 v6, 0x2

    if-ge v5, v6, :cond_13

    .line 932
    :cond_b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "offsets must be an array of two integers"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 934
    :cond_13
    const/4 v3, 0x0

    .line 935
    .local v3, rc:Z
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    .line 936
    .local v0, centerX:F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    add-float v1, v5, v6

    .line 938
    .local v1, centerY:F
    aput v8, p2, v9

    .line 939
    aput v8, p2, v10

    .line 941
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 942
    .local v2, parent:Landroid/view/ViewParent;
    :goto_36
    instance-of v5, v2, Landroid/view/View;

    if-eqz v5, :cond_54

    move-object v4, v2

    .line 943
    check-cast v4, Landroid/view/View;

    .line 944
    .local v4, view:Landroid/view/View;
    if-ne v4, p0, :cond_55

    .line 945
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float v5, v0, v5

    aput v5, p2, v9

    .line 946
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    sub-float v5, v1, v5

    aput v5, p2, v10

    .line 947
    const/4 v3, 0x1

    .line 954
    .end local v4           #view:Landroid/view/View;
    :cond_54
    return v3

    .line 950
    .restart local v4       #view:Landroid/view/View;
    :cond_55
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v0, v5

    .line 951
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 952
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 953
    goto :goto_36
.end method

.method public declared-synchronized cancelPreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1158
    monitor-exit p0

    return-void

    .line 1156
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public detectTransRefCollision(Landroid/graphics/Point;)Z
    .registers 6
    .parameter "p"

    .prologue
    .line 973
    const/4 v0, 0x0

    .line 974
    .local v0, hit:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_2a

    .line 975
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    .line 976
    .local v2, temp:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->detectTransCollision(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 977
    const/4 v0, 0x1

    .line 978
    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TransRef;->mapXToOriginal(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 979
    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TransRef;->mapYToOriginal(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 983
    .end local v2           #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_2a
    return v0

    .line 974
    .restart local v2       #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 719
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 720
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTop()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v0

    int-to-float v3, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 721
    invoke-virtual {p1, v6, v6, v6}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 722
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 724
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    if-eqz v0, :cond_22

    .line 745
    :cond_21
    :goto_21
    return-void

    .line 736
    :cond_22
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 743
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    if-nez v0, :cond_21

    .line 744
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    goto :goto_21
.end method

.method drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z
    .registers 12
    .parameter "canvas"
    .parameter "vg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1082
    const/4 v1, 0x0

    .line 1084
    .local v1, more:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_70

    .line 1085
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1086
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_61

    .line 1087
    instance-of v5, v4, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v5, :cond_64

    .line 1089
    invoke-virtual {v4}, Landroid/view/View;->computeScroll()V

    .line 1090
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1091
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getLocationOnScreen([I)V

    .line 1092
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1093
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    aget v5, v5, v7

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int v2, v5, v6

    .line 1094
    .local v2, tx:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    aget v6, v6, v8

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int v3, v5, v6

    .line 1095
    .local v3, ty:I
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v5, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1097
    instance-of v5, v4, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    if-eqz v5, :cond_57

    move-object v5, v4

    .line 1098
    check-cast v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    invoke-virtual {p0, p1, v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->applyAnimation(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1101
    :cond_57
    check-cast v4, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    .end local v4           #v:Landroid/view/View;
    invoke-interface {v4, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1103
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1084
    .end local v2           #tx:I
    .end local v3           #ty:I
    :cond_61
    :goto_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1104
    .restart local v4       #v:Landroid/view/View;
    :cond_64
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_61

    .line 1105
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #v:Landroid/view/View;
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_61

    .line 1109
    :cond_70
    return v1
.end method

.method drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z
    .registers 16
    .parameter "canvas"
    .parameter "vg"
    .parameter "px"
    .parameter "py"

    .prologue
    const/4 v10, 0x0

    .line 1113
    const/4 v2, 0x0

    .line 1114
    .local v2, more:Z
    const/4 v0, 0x0

    .line 1115
    .local v0, debug:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_69

    .line 1116
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1117
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1118
    .local v6, x:I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1119
    .local v7, y:I
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_56

    .line 1120
    instance-of v8, v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v8, :cond_59

    .line 1121
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1122
    add-int v8, p3, v6

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v9

    sub-int v3, v8, v9

    .line 1123
    .local v3, tx:I
    add-int v8, p4, v7

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v9

    sub-int v4, v8, v9

    .line 1124
    .local v4, ty:I
    int-to-float v8, v3

    int-to-float v9, v4

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1125
    instance-of v8, v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    if-eqz v8, :cond_44

    move-object v8, v5

    .line 1126
    check-cast v8, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    invoke-virtual {p0, p1, v8}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->applyAnimation(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;)Z

    move-result v8

    or-int/2addr v2, v8

    :cond_44
    move-object v8, v5

    .line 1128
    check-cast v8, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    invoke-interface {v8, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v8

    or-int/2addr v2, v8

    .line 1129
    if-eqz v0, :cond_53

    .line 1130
    const/high16 v8, 0x3f80

    invoke-static {p1, v5, v8, v10, v10}, Lcom/sec/android/app/twlauncher/SamsungUtils;->drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    .line 1132
    :cond_53
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1115
    .end local v3           #tx:I
    .end local v4           #ty:I
    .end local v5           #v:Landroid/view/View;
    :cond_56
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1133
    .restart local v5       #v:Landroid/view/View;
    :cond_59
    instance-of v8, v5, Landroid/view/ViewGroup;

    if-eqz v8, :cond_56

    .line 1134
    check-cast v5, Landroid/view/ViewGroup;

    .end local v5           #v:Landroid/view/View;
    add-int v8, p3, v6

    add-int v9, p4, v7

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v8

    or-int/2addr v2, v8

    goto :goto_56

    .line 1138
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_69
    return v2
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 3
    .parameter "r"

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public getTransRefList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/TransRef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isAbsRefEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    .line 987
    const/4 v1, 0x0

    .line 988
    .local v1, isAbsEvt:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_1a

    .line 989
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    .line 990
    .local v2, temp:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->detectAbsCollision(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 991
    const/4 v1, 0x1

    .line 996
    .end local v2           #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_1a
    return v1

    .line 988
    .restart local v2       #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->setupEGL(Z)V

    .line 138
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x0

    .line 495
    sub-int v4, p4, p2

    .line 496
    .local v4, width:I
    sub-int v2, p5, p3

    .line 497
    .local v2, height:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildCount()I

    move-result v1

    .line 498
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v1, :cond_1e

    .line 499
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 500
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1b

    .line 501
    invoke-virtual {v0, v7, v7, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 498
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 504
    .end local v0           #child:Landroid/view/View;
    :cond_1e
    if-eqz p1, :cond_27

    if-lez v4, :cond_27

    if-lez v2, :cond_27

    .line 505
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->calcProjectionMatrix()V

    .line 507
    :cond_27
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x0

    .line 436
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 437
    .local v7, wSpec:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 439
    .local v2, hSpec:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 440
    .local v8, window:Landroid/view/Window;
    const v9, 0x1020002

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 454
    .local v6, topView:Landroid/view/View;
    if-ge v7, v2, :cond_4f

    const/4 v9, 0x1

    :goto_1d
    sput-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    .line 457
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ne v2, v9, :cond_54

    .line 458
    sget-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    if-eqz v9, :cond_51

    sget v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopPortrait:I

    :goto_2b
    sub-int v3, v2, v9

    .line 459
    .local v3, height:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 460
    .local v1, hMode:I
    sget-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    if-eqz v9, :cond_37

    .line 461
    iget v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFixedHeight:I

    .line 463
    :cond_37
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 484
    .end local v1           #hMode:I
    .end local v3           #height:I
    :cond_3b
    :goto_3b
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 487
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildCount()I

    move-result v0

    .line 488
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_43
    if-ge v4, v0, :cond_7c

    .line 489
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Landroid/view/View;->measure(II)V

    .line 488
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .end local v0           #count:I
    .end local v4           #i:I
    :cond_4f
    move v9, v10

    .line 454
    goto :goto_1d

    .line 458
    :cond_51
    sget v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopLandscape:I

    goto :goto_2b

    .line 465
    :cond_54
    sget-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    if-eqz v9, :cond_5c

    sget v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopPortrait:I

    if-eqz v9, :cond_64

    :cond_5c
    sget-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    if-nez v9, :cond_3b

    sget v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopLandscape:I

    if-nez v9, :cond_3b

    .line 469
    :cond_64
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 470
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 476
    sget-boolean v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mIsPortrait:Z

    if-eqz v9, :cond_77

    .line 477
    sput v10, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopPortrait:I

    goto :goto_3b

    .line 481
    :cond_77
    iget v9, v5, Landroid/graphics/Rect;->top:I

    sput v9, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sOurTopLandscape:I

    goto :goto_3b

    .line 491
    .end local v5           #rect:Landroid/graphics/Rect;
    .restart local v0       #count:I
    .restart local v4       #i:I
    :cond_7c
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->suspendDrawingUntilResume()V

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    if-eqz v0, :cond_14

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->recycle()V

    .line 516
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    .line 519
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->setSceneGraph(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    .line 521
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    .line 533
    return-void
.end method

.method public processTransformRefEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    .line 959
    const/4 v1, 0x0

    .line 960
    .local v1, isTransEvnt:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_1d

    .line 961
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    .line 962
    .local v2, temp:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->detectTransCollision(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 963
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->adjustEventToView(Landroid/view/MotionEvent;)V

    .line 964
    const/4 v1, 0x1

    .line 969
    .end local v2           #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_1d
    return v1

    .line 960
    .restart local v2       #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public declared-synchronized queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 1151
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 1153
    monitor-exit p0

    return-void

    .line 1151
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestDraw()V
    .registers 9

    .prologue
    .line 692
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_24

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$2;-><init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 704
    :cond_24
    monitor-exit p0

    return-void

    .line 692
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V
    .registers 11
    .parameter "canvas"
    .parameter "child"
    .parameter "scale"
    .parameter "transX"
    .parameter "transY"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 903
    const/4 v2, 0x2

    new-array v0, v2, [F

    .line 904
    .local v0, centerOffsets:[F
    cmpg-float v2, p3, v3

    if-lez v2, :cond_14

    cmpl-float v2, p3, v4

    if-gtz v2, :cond_14

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->calculateCenterOffset(Landroid/view/View;[F)Z

    move-result v2

    if-nez v2, :cond_18

    .line 905
    :cond_14
    invoke-virtual {p1, p4, p5, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    .line 912
    :goto_17
    return-void

    .line 907
    :cond_18
    sub-float v2, v4, p3

    div-float v1, v2, p3

    .line 908
    .local v1, xlateScale:F
    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, p4

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, p5

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    neg-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    goto :goto_17
.end method

.method public setFrameDelay(I)V
    .registers 2
    .parameter "frameDelay"

    .prologue
    .line 119
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    .line 120
    return-void
.end method

.method public setupEGL(Z)V
    .registers 16
    .parameter "is565"

    .prologue
    const/4 v1, 0x5

    const/4 v13, 0x1

    const/4 v12, -0x1

    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_20

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    if-eqz v0, :cond_1b

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->mGraphRenderer:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->onContextLost()V

    .line 145
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->removeView(Landroid/view/View;)V

    .line 148
    :cond_20
    new-instance v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$1;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$1;-><init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 160
    if-eqz p1, :cond_6d

    .line 162
    sget-object v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v2, "setting 565 buffer for static wallpaper"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x6

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 171
    :goto_43
    new-instance v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;-><init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 174
    if-eqz p1, :cond_7f

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 183
    :goto_5d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0, v12, v12}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->addView(Landroid/view/View;II)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v4}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v13}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 192
    return-void

    .line 167
    :cond_6d
    sget-object v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v1, "setting 8888 buffer for live wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    move v7, v6

    move v8, v6

    move v9, v6

    move v10, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    goto :goto_43

    .line 180
    :cond_7f
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v13}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_5d
.end method

.method public stopSuspendingDrawing()V
    .registers 2

    .prologue
    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    .line 525
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    .line 526
    return-void
.end method

.method public suspendDrawingUntilResume()V
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    .line 130
    return-void
.end method

.method public unblockDispatchDraw()V
    .registers 2

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    if-eqz v0, :cond_a

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    .line 751
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    .line 753
    :cond_a
    return-void
.end method

.method public declared-synchronized willBePreloaded(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 1165
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
