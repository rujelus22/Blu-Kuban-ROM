.class public Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;
.super Landroid/opengl/GLSurfaceView;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static TAG:Ljava/lang/String;

.field private static mRenderer:Lcom/sdgtl/mediahub/spr/customview/j;


# instance fields
.field private HVGA_COVER_HEIGHT:I

.field private HVGA_COVER_OFFSET_Y_LAND:F

.field private HVGA_COVER_OFFSET_Y_PORT:F

.field private HVGA_COVER_WIDTH:I

.field private HVGA_INFO_WIDTH:I

.field private WSVGA_COVER_HEIGHT:I

.field private WSVGA_COVER_HEIGHT_LAND:I

.field private WSVGA_COVER_OFFSET_Y_LAND:F

.field private WSVGA_COVER_OFFSET_Y_PORT:F

.field private WSVGA_COVER_WIDTH:I

.field private WSVGA_COVER_WIDTH_LAND:I

.field private WSVGA_INFO_WIDTH:I

.field private WSVGA_TAB_COVER_HEIGHT:I

.field private WSVGA_TAB_COVER_OFFSET_Y_LAND:F

.field private WSVGA_TAB_COVER_OFFSET_Y_PORT:F

.field private WSVGA_TAB_COVER_WIDTH:I

.field private WSVGA_TAB_INFO_WIDTH:I

.field private WVGA_COVER_HEIGHT:I

.field private WVGA_COVER_HEIGHT_LAND:I

.field private WVGA_COVER_OFFSET_Y_LAND:F

.field private WVGA_COVER_OFFSET_Y_PORT:F

.field private WVGA_COVER_WIDTH:I

.field private WVGA_COVER_WIDTH_LAND:I

.field private WVGA_INFO_WIDTH:I

.field private WXGA_COVER_HEIGHT:I

.field private WXGA_COVER_OFFSET_Y_LAND:F

.field private WXGA_COVER_OFFSET_Y_PORT:F

.field private WXGA_COVER_WIDTH:I

.field private WXGA_INFO_WIDTH:I

.field private WXGA_XHDPI_COVER_HEIGHT:I

.field private WXGA_XHDPI_COVER_OFFSET_Y_LAND:F

.field private WXGA_XHDPI_COVER_OFFSET_Y_PORT:F

.field private WXGA_XHDPI_COVER_WIDTH:I

.field private mAnimationDuration:I

.field private mCenterBetweenSideGap:F

.field private mCoverBitmapProvider:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;

.field mCoverHeight:I

.field private mCoverOffsetY:F

.field mCoverWidth:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

.field private mFrontMedia:Ljava/util/ArrayList;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInfoBitmapProvider:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;

.field mInfoWidth:I

.field private mIsFirstScroll:Z

.field private mLeftRightBetweenSideGap:F

.field private mLoopCoverFlow:Z

.field public mMedia:Ljava/util/ArrayList;

.field private mOnItemClickListener:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnItemClickListener;

.field private mOnSelectionChangeListener:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnSelectionChangeListener;

.field private mPause:Z

.field private mPerspective:F

.field mPositionWidth:F

.field mProgress:F

.field private mRearMedia:Ljava/util/ArrayList;

.field mScrollDirection:I

.field public mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

.field private mShadowDepth:F

.field private mShouldCallbackDuringFling:Z

.field private mShouldStopFling:Z

.field private mSuppressSelectionChanged:Z

.field mUiHandler:Landroid/os/Handler;

.field private mWasMovingOnMotionStart:Z

.field private mainSize:I

.field private oldVisibility:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "CoverFlowGL"

    sput-object v0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRenderer:Lcom/sdgtl/mediahub/spr/customview/j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mUiHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFrontMedia:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRearMedia:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    const/high16 v0, 0x4396

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPositionWidth:F

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mScrollDirection:I

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPause:Z

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->oldVisibility:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mAnimationDuration:I

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShouldCallbackDuringFling:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/a;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/a;-><init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/d;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/d;-><init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    const-string v0, "************"

    const-string v1, "CoverFlowGL(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v2, v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->init(ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mUiHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFrontMedia:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRearMedia:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    const/high16 v0, 0x4396

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPositionWidth:F

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mScrollDirection:I

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPause:Z

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->oldVisibility:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mAnimationDuration:I

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShouldCallbackDuringFling:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/a;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/a;-><init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/d;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/d;-><init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    const-string v0, "************"

    const-string v1, "CoverFlowGL(Context context, AttributeSet attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v2, v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->init(ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .registers 8

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mUiHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFrontMedia:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRearMedia:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    const/high16 v0, 0x4396

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPositionWidth:F

    iput v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mScrollDirection:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPause:Z

    iput v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->oldVisibility:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mAnimationDuration:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShouldCallbackDuringFling:Z

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/a;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/a;-><init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/d;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/d;-><init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    const-string v0, "************"

    const-string v1, "a CoverFlowGL(Context context, boolean translucent, int depth, int stencil)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3, p4}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->init(ZII)V

    const-string v0, "************"

    const-string v1, "b CoverFlowGL(Context context, boolean translucent, int depth, int stencil)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$0(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSuppressSelectionChanged:Z

    return-void
.end method

.method static synthetic access$1()Lcom/sdgtl/mediahub/spr/customview/j;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRenderer:Lcom/sdgtl/mediahub/spr/customview/j;

    return-object v0
.end method

.method static synthetic access$10(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShadowDepth:F

    return v0
.end method

.method static synthetic access$11(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;FF)[F
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->calcProjectionMatrix(FF)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    return v0
.end method

.method static synthetic access$13(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z

    return v0
.end method

.method static synthetic access$14(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPause:Z

    return v0
.end method

.method static synthetic access$15(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$16(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$17(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShouldStopFling:Z

    return-void
.end method

.method static synthetic access$18(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$2(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverBitmapProvider:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoBitmapProvider:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method static synthetic access$6(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setDimensionWithScreenWidth()V

    return-void
.end method

.method static synthetic access$7(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPerspective:F

    return v0
.end method

.method static synthetic access$8(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLeftRightBetweenSideGap:F

    return v0
.end method

.method static synthetic access$9(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)F
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCenterBetweenSideGap:F

    return v0
.end method

.method private calcProjectionMatrix(FF)[F
    .registers 13

    const/high16 v9, 0x4000

    const/high16 v8, 0x3f80

    const/16 v6, 0x10

    const/4 v1, 0x0

    const/4 v7, 0x0

    const-wide v2, 0x4041800000000000L

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float v3, p1, p2

    div-float/2addr v0, v9

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v0, v4

    div-float v5, v8, v0

    new-array v2, v6, [F

    div-float v0, v5, v3

    aput v0, v2, v1

    const/4 v0, 0x1

    aput v7, v2, v0

    const/4 v0, 0x2

    aput v7, v2, v0

    const/4 v0, 0x3

    aput v7, v2, v0

    const/4 v0, 0x4

    aput v7, v2, v0

    const/4 v0, 0x5

    aput v5, v2, v0

    const/4 v0, 0x6

    aput v7, v2, v0

    const/4 v0, 0x7

    aput v7, v2, v0

    const/16 v0, 0x8

    aput v7, v2, v0

    const/16 v0, 0x9

    aput v7, v2, v0

    const/16 v0, 0xa

    const v3, -0x407cc26e

    aput v3, v2, v0

    const/16 v0, 0xb

    const/high16 v3, -0x4080

    aput v3, v2, v0

    const/16 v0, 0xc

    aput v7, v2, v0

    const/16 v0, 0xd

    aput v7, v2, v0

    const/16 v0, 0xe

    const v3, -0x3cb577e6

    aput v3, v2, v0

    const/16 v0, 0xf

    aput v7, v2, v0

    new-array v4, v6, [F

    new-array v0, v6, [F

    invoke-static {v4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v3, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverOffsetY:F

    div-float v6, p2, v9

    neg-float v6, v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, v8

    invoke-static {v4, v1, v7, v3, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-object v0
.end method

.method private checkCoverFlowRegion(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v2, v0, v1

    iget v3, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverOffsetY:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_28

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverOffsetY:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2a

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    goto :goto_29
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 7

    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    sget-object v1, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->TAG:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearSelected()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/customview/e;->b()V

    :cond_c
    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mOnSelectionChangeListener:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnSelectionChangeListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mOnSelectionChangeListener:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnSelectionChangeListener;

    const/4 v1, -0x1

    invoke-interface {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnSelectionChangeListener;->onSelectionChange(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;I)V

    :cond_1a
    return-void
.end method

.method private init(ZII)V
    .registers 12

    const/4 v4, 0x5

    const/4 v7, 0x0

    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setLayoutValues()V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_22
    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/c;

    invoke-direct {v0, v7}, Lcom/sdgtl/mediahub/spr/customview/c;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    if-eqz p1, :cond_49

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/b;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sdgtl/mediahub/spr/customview/b;-><init>(IIIIII)V

    :goto_36
    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/j;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/j;-><init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRenderer:Lcom/sdgtl/mediahub/spr/customview/j;

    sget-object v0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRenderer:Lcom/sdgtl/mediahub/spr/customview/j;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setRenderMode(I)V

    return-void

    :cond_49
    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/b;

    const/4 v2, 0x6

    move v1, v4

    move v3, v4

    move v4, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sdgtl/mediahub/spr/customview/b;-><init>(IIIIII)V

    goto :goto_36
.end method

.method private scrollIntoSlots()V
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    float-to-double v3, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_41

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_41

    const-wide v0, 0x3f847ae147ae147bL

    :goto_2a
    add-double/2addr v0, v3

    iget v3, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPositionWidth:F

    float-to-double v3, v3

    mul-double/2addr v0, v3

    double-to-int v0, v0

    int-to-float v1, v2

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPositionWidth:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_3d

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/customview/d;->b(I)V

    :cond_3d
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->updateSelected()V

    goto :goto_8

    :cond_41
    const-wide/16 v0, 0x0

    goto :goto_2a
.end method

.method private setDimensionWithScreenWidth()V
    .registers 8

    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f00

    const v6, 0x3e4ccccd

    const/4 v2, 0x1

    const v4, 0x3f4ccccd

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_7a

    :cond_1f
    move v1, v2

    :goto_20
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    :goto_34
    sparse-switch v0, :sswitch_data_172

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_136

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_TAB_COVER_WIDTH:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_TAB_COVER_HEIGHT:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverHeight:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_TAB_INFO_WIDTH:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    if-eqz v1, :cond_132

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_TAB_COVER_OFFSET_Y_LAND:F

    :goto_53
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverOffsetY:F

    :goto_55
    if-eqz v1, :cond_14d

    const/high16 v0, 0x4000

    move-object v3, p0

    :goto_5a
    iput v0, v3, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShadowDepth:F

    :cond_5c
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_152

    if-eqz v1, :cond_6b

    const v5, 0x3f11eb85

    :cond_6b
    iput v5, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLeftRightBetweenSideGap:F

    const v0, 0x3f666666

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCenterBetweenSideGap:F

    if-eqz v1, :cond_77

    const v4, 0x3e99999a

    :cond_77
    iput v4, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPerspective:F

    :goto_79
    return-void

    :cond_7a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_20

    :cond_7d
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_34

    :sswitch_82
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->HVGA_COVER_WIDTH:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->HVGA_COVER_HEIGHT:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverHeight:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->HVGA_INFO_WIDTH:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    if-eqz v1, :cond_97

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->HVGA_COVER_OFFSET_Y_LAND:F

    :goto_92
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverOffsetY:F

    move v0, v3

    move-object v3, p0

    goto :goto_5a

    :cond_97
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->HVGA_COVER_OFFSET_Y_PORT:F

    goto :goto_92

    :sswitch_9a
    if-eqz v1, :cond_b3

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_WIDTH_LAND:I

    :goto_9e
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    if-eqz v1, :cond_b6

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_HEIGHT_LAND:I

    :goto_a4
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverHeight:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_INFO_WIDTH:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    if-eqz v1, :cond_b9

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_OFFSET_Y_LAND:F

    :goto_ae
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverOffsetY:F

    move v0, v3

    move-object v3, p0

    goto :goto_5a

    :cond_b3
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_WIDTH:I

    goto :goto_9e

    :cond_b6
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_HEIGHT:I

    goto :goto_a4

    :cond_b9
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_OFFSET_Y_PORT:F

    goto :goto_ae

    :sswitch_bc
    if-eqz v1, :cond_d5

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_WIDTH_LAND:I

    :goto_c0
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    if-eqz v1, :cond_d8

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_HEIGHT_LAND:I

    :goto_c6
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverHeight:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_INFO_WIDTH:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    if-eqz v1, :cond_db

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_OFFSET_Y_LAND:F

    :goto_d0
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverOffsetY:F

    move v0, v4

    move-object v3, p0

    goto :goto_5a

    :cond_d5
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_WIDTH:I

    goto :goto_c0

    :cond_d8
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_HEIGHT:I

    goto :goto_c6

    :cond_db
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_OFFSET_Y_PORT:F

    goto :goto_d0

    :sswitch_de
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_WIDTH:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_HEIGHT:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverHeight:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_INFO_WIDTH:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    if-eqz v1, :cond_123

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_OFFSET_Y_LAND:F

    :goto_ee
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverOffsetY:F

    if-eqz v1, :cond_126

    const/high16 v0, 0x4000

    :goto_f4
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShadowDepth:F

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_10d

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->d(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5c

    :cond_10d
    if-eqz v1, :cond_129

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_WIDTH:I

    :goto_111
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    if-eqz v1, :cond_12c

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_HEIGHT:I

    :goto_117
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverHeight:I

    if-eqz v1, :cond_12f

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_XHDPI_COVER_OFFSET_Y_LAND:F

    :goto_11d
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverOffsetY:F

    move v0, v5

    move-object v3, p0

    goto/16 :goto_5a

    :cond_123
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_OFFSET_Y_PORT:F

    goto :goto_ee

    :cond_126
    const/high16 v0, 0x4040

    goto :goto_f4

    :cond_129
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_XHDPI_COVER_WIDTH:I

    goto :goto_111

    :cond_12c
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_XHDPI_COVER_HEIGHT:I

    goto :goto_117

    :cond_12f
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_XHDPI_COVER_OFFSET_Y_PORT:F

    goto :goto_11d

    :cond_132
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_TAB_COVER_OFFSET_Y_PORT:F

    goto/16 :goto_53

    :cond_136
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_WIDTH:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_HEIGHT:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverHeight:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_INFO_WIDTH:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    if-eqz v1, :cond_14a

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_OFFSET_Y_LAND:F

    :goto_146
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverOffsetY:F

    goto/16 :goto_55

    :cond_14a
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_OFFSET_Y_PORT:F

    goto :goto_146

    :cond_14d
    const/high16 v0, 0x4040

    move-object v3, p0

    goto/16 :goto_5a

    :cond_152
    if-eqz v1, :cond_169

    const v0, 0x3f333333

    :goto_157
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLeftRightBetweenSideGap:F

    if-eqz v1, :cond_16d

    const v0, 0x3da3d70a

    :goto_15e
    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCenterBetweenSideGap:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    if-eqz v1, :cond_16f

    :goto_165
    iput v6, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPerspective:F

    goto/16 :goto_79

    :cond_169
    const v0, 0x3f19999a

    goto :goto_157

    :cond_16d
    move v0, v6

    goto :goto_15e

    :cond_16f
    move v6, v4

    goto :goto_165

    nop

    :sswitch_data_172
    .sparse-switch
        0x140 -> :sswitch_82
        0x1e0 -> :sswitch_9a
        0x258 -> :sswitch_bc
        0x2d0 -> :sswitch_de
        0x320 -> :sswitch_de
    .end sparse-switch
.end method

.method private setLayoutValues()V
    .registers 7

    const/16 v5, 0x14d

    const/16 v4, 0x71

    const/high16 v3, 0x42d2

    const/high16 v2, 0x4234

    const/high16 v1, 0x41a0

    iput v4, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->HVGA_COVER_WIDTH:I

    const/16 v0, 0xaa

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->HVGA_COVER_HEIGHT:I

    iput v4, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->HVGA_INFO_WIDTH:I

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->HVGA_COVER_OFFSET_Y_PORT:F

    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->HVGA_COVER_OFFSET_Y_LAND:F

    const/16 v0, 0xb5

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_WIDTH:I

    const/16 v0, 0xa0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_WIDTH_LAND:I

    const/16 v0, 0x10e

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_HEIGHT:I

    const/16 v0, 0xde

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_HEIGHT_LAND:I

    const/16 v0, 0xa8

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_INFO_WIDTH:I

    const/high16 v0, 0x42a2

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_OFFSET_Y_PORT:F

    const/high16 v0, 0x4220

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WVGA_COVER_OFFSET_Y_LAND:F

    const/16 v0, 0xdd

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_WIDTH:I

    const/16 v0, 0x130

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_HEIGHT:I

    const/16 v0, 0xba

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_WIDTH_LAND:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_HEIGHT_LAND:I

    iput v5, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_INFO_WIDTH:I

    iput v3, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_OFFSET_Y_PORT:F

    iput v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_COVER_OFFSET_Y_LAND:F

    const/16 v0, 0xbf

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_TAB_COVER_WIDTH:I

    const/16 v0, 0x10f

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_TAB_COVER_HEIGHT:I

    iput v5, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_TAB_INFO_WIDTH:I

    iput v3, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_TAB_COVER_OFFSET_Y_PORT:F

    iput v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WSVGA_TAB_COVER_OFFSET_Y_LAND:F

    const/16 v0, 0xec

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_WIDTH:I

    const/16 v0, 0x14e

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_HEIGHT:I

    const/16 v0, 0x19e

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_INFO_WIDTH:I

    const/high16 v0, 0x428c

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_OFFSET_Y_PORT:F

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_COVER_OFFSET_Y_LAND:F

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_XHDPI_COVER_WIDTH:I

    const/16 v0, 0x1ae

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_XHDPI_COVER_HEIGHT:I

    const/high16 v0, 0x4316

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_XHDPI_COVER_OFFSET_Y_PORT:F

    const/high16 v0, 0x4248

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->WXGA_XHDPI_COVER_OFFSET_Y_LAND:F

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setDimensionWithScreenWidth()V

    return-void
.end method

.method private updateSelected()V
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/e;

    :goto_19
    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

    if-eq v0, v2, :cond_4d

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/customview/e;->b()V

    :cond_24
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_50

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/customview/e;->a(F)V

    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mOnSelectionChangeListener:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnSelectionChangeListener;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mOnSelectionChangeListener:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnSelectionChangeListener;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

    if-eqz v2, :cond_4a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSelected:Lcom/sdgtl/mediahub/spr/customview/e;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/customview/e;->a:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    :cond_4a
    invoke-interface {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnSelectionChangeListener;->onSelectionChange(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;I)V

    :cond_4d
    return-void

    :cond_4e
    move-object v0, v1

    goto :goto_19

    :cond_50
    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/customview/e;->j:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->requestRender()V

    goto :goto_3c
.end method


# virtual methods
.method public getCoverHeight()I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverHeight:I

    return v0
.end method

.method public getCoverWidth()I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    return v0
.end method

.method public getInfoWidth()I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    return v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .registers 7

    const/4 v1, 0x0

    int-to-float v0, p2

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPositionWidth:F

    div-float/2addr v0, v2

    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_13

    :cond_e
    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    if-gtz v2, :cond_18

    move v0, v1

    :cond_13
    :goto_13
    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPositionWidth:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_18
    if-eqz p1, :cond_22

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_13

    :cond_22
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_13
.end method

.method public getPosition()I
    .registers 3

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    :goto_6
    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int v0, v1, v0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getProgress()F
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    return v0
.end method

.method public isScrolling()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/d;->b(Lcom/sdgtl/mediahub/spr/customview/d;)Landroid/widget/Scroller;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/d;->b(Lcom/sdgtl/mediahub/spr/customview/d;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method onCancel()V
    .registers 1

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->onUp()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/d;->b(Lcom/sdgtl/mediahub/spr/customview/d;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_30

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fa999999999999aL

    cmpl-double v0, v2, v4

    if-lez v0, :cond_30

    move v0, v1

    :goto_26
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mWasMovingOnMotionStart:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/d;->a()V

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mIsFirstScroll:Z

    return v1

    :cond_30
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->checkCoverFlowRegion(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0, p2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->checkCoverFlowRegion(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->clearSelected()V

    iget-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShouldCallbackDuringFling:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSuppressSelectionChanged:Z

    if-nez v1, :cond_21

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSuppressSelectionChanged:Z

    :cond_21
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mScrollDirection:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/customview/d;->a(I)V

    goto :goto_e
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->performHapticFeedback(I)Z

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->checkCoverFlowRegion(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0, p2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->checkCoverFlowRegion(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    :goto_f
    return v0

    :cond_10
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->clearSelected()V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShouldCallbackDuringFling:Z

    if-nez v2, :cond_3b

    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mIsFirstScroll:Z

    if-eqz v2, :cond_2f

    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSuppressSelectionChanged:Z

    if-nez v2, :cond_28

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSuppressSelectionChanged:Z

    :cond_28
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {p0, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    :goto_2f
    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mScrollDirection:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->trackMotionScroll(I)V

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mIsFirstScroll:Z

    goto :goto_f

    :cond_3b
    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSuppressSelectionChanged:Z

    if-eqz v2, :cond_2f

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mSuppressSelectionChanged:Z

    goto :goto_2f
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->checkCoverFlowRegion(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-boolean v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mWasMovingOnMotionStart:Z

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    iget v3, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mScrollDirection:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPositionWidth:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/d;->b(I)V

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    goto :goto_7

    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverWidth:I

    iget v3, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_56

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mScrollDirection:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPositionWidth:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/d;->b(I)V

    goto :goto_2f

    :cond_56
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/e;

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mOnItemClickListener:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnItemClickListener;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mOnItemClickListener:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnItemClickListener;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/customview/e;->a:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-interface {v2, v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnItemClickListener;->onItemClick(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;I)V

    goto :goto_2f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->onUp()V

    :cond_10
    :goto_10
    return v0

    :cond_11
    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->onCancel()V

    goto :goto_10
.end method

.method onUp()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/d;->b(Lcom/sdgtl/mediahub/spr/customview/d;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->scrollIntoSlots()V

    :cond_f
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x4

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->oldVisibility:I

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->oldVisibility:I

    if-ne v0, v2, :cond_16

    :cond_b
    if-nez p1, :cond_16

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->onResume()V

    :cond_10
    :goto_10
    iput p1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->oldVisibility:I

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    return-void

    :cond_16
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->oldVisibility:I

    if-nez v0, :cond_10

    if-eq p1, v1, :cond_1e

    if-ne p1, v2, :cond_10

    :cond_1e
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->onPause()V

    goto :goto_10
.end method

.method public pointToProduct(I)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_f

    :cond_a
    int-to-float v0, v1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->updatePosition(F)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/e;

    iget-boolean v2, v0, Lcom/sdgtl/mediahub/spr/customview/e;->h:Z

    if-nez v2, :cond_21

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/customview/e;->a:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    if-eq p1, v0, :cond_a

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setContantsList(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->setContantsList(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public setContantsList(Ljava/util/ArrayList;Z)V
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_8
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFrontMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRearMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_35

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2e
    if-gez v0, :cond_b3

    :cond_30
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    if-ge v6, v0, :cond_35

    move p2, v2

    :cond_35
    move v4, v3

    :goto_36
    if-lt v4, v6, :cond_c0

    monitor-exit v5
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_f8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFrontMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRearMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    if-le v0, v2, :cond_5c

    move v0, v3

    :goto_54
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_fb

    :cond_5c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFrontMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFrontMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :cond_6b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRearMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRearMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7a
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->requestRender()V

    if-eqz p2, :cond_ae

    move v1, v3

    :goto_80
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_113

    move v2, v3

    :goto_89
    if-nez v2, :cond_ae

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    float-to-int v1, v1

    if-lez v0, :cond_ae

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/e;

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/sdgtl/mediahub/spr/customview/e;->g:F

    :cond_ae
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->updateSelected()V

    goto/16 :goto_4

    :cond_b3
    add-int/lit8 v1, v6, -0x1

    if-le v0, v1, :cond_30

    :try_start_b7
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2e

    :cond_c0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_ed

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/customview/e;

    iget v7, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/customview/e;->a:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    if-eq v7, v1, :cond_e8

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    new-instance v7, Lcom/sdgtl/mediahub/spr/customview/e;

    invoke-direct {v7, p0, v0}, Lcom/sdgtl/mediahub/spr/customview/e;-><init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V

    invoke-virtual {v1, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e8
    :goto_e8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_36

    :cond_ed
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    new-instance v7, Lcom/sdgtl/mediahub/spr/customview/e;

    invoke-direct {v7, p0, v0}, Lcom/sdgtl/mediahub/spr/customview/e;-><init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f7
    .catchall {:try_start_b7 .. :try_end_f7} :catchall_f8

    goto :goto_e8

    :catchall_f8
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_fb
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFrontMedia:Ljava/util/ArrayList;

    new-instance v4, Lcom/sdgtl/mediahub/spr/customview/e;

    invoke-direct {v4, p0}, Lcom/sdgtl/mediahub/spr/customview/e;-><init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mRearMedia:Ljava/util/ArrayList;

    new-instance v4, Lcom/sdgtl/mediahub/spr/customview/e;

    invoke-direct {v4, p0}, Lcom/sdgtl/mediahub/spr/customview/e;-><init>(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_54

    :cond_113
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/e;

    iget-boolean v4, v0, Lcom/sdgtl/mediahub/spr/customview/e;->h:Z

    if-nez v4, :cond_135

    const-string v4, "Y"

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/customview/e;->a:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->C:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    int-to-float v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    goto/16 :goto_89

    :cond_135
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_80
.end method

.method public setCoverBitmapProvider(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mCoverBitmapProvider:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;

    return-void
.end method

.method public setInfoBitmapProvider(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mInfoBitmapProvider:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;

    return-void
.end method

.method public setLoopCoverFlow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mOnItemClickListener:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnItemClickListener;

    return-void
.end method

.method public setOnSelectionChangeListener(Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnSelectionChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mOnSelectionChangeListener:Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnSelectionChangeListener;

    return-void
.end method

.method public setParentPause(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPause:Z

    return-void
.end method

.method public stopScrolling()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/d;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mIsFirstScroll:Z

    goto :goto_4
.end method

.method trackMotionScroll(I)V
    .registers 7

    const/4 v1, 0x1

    const v4, 0x3a83126f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    if-gez p1, :cond_46

    move v0, v1

    :goto_10
    invoke-virtual {p0, v0, p1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    if-eq v0, p1, :cond_1b

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mFlingRunnable:Lcom/sdgtl/mediahub/spr/customview/d;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/customview/d;->a(Lcom/sdgtl/mediahub/spr/customview/d;)V

    :cond_1b
    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    int-to-float v0, v0

    iget v3, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mPositionWidth:F

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mLoopCoverFlow:Z

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    if-le v0, v1, :cond_42

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_48

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    :cond_42
    :goto_42
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->requestRender()V

    goto :goto_c

    :cond_46
    const/4 v0, 0x0

    goto :goto_10

    :cond_48
    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_42

    iget v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mainSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, v4

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    goto :goto_42
.end method

.method public updatePosition(F)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->mProgress:F

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->updateSelected()V

    return-void
.end method
