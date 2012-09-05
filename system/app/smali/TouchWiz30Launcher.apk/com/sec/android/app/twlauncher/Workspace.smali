.class public Lcom/sec/android/app/twlauncher/Workspace;
.super Lcom/sec/android/app/twlauncher/Scene;
.source "Workspace.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;
.implements Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;,
        Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;,
        Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    }
.end annotation


# instance fields
.field private LAUNCHER_LOOP_WORKSPACE:Z

.field private LAUNCHER_TILT_WORKSPACE:Z

.field private final LOOP_LEFT:I

.field private final LOOP_NONE:I

.field private final LOOP_RIGHT:I

.field private mAllowLongPress:Z

.field private mAniRotateFadeIn3D:Landroid/view/animation/Animation;

.field private mAniRotateFadeOut3D:Landroid/view/animation/Animation;

.field private mAniTransition:Landroid/view/animation/Animation;

.field private mAutoScrollRunnable:Ljava/lang/Runnable;

.field private final mBestFitRect:Landroid/graphics/Rect;

.field final mClipBounds:Landroid/graphics/Rect;

.field private mCurrentWidgetRect:Landroid/graphics/Rect;

.field private mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

.field private mDefaultIMEIPosX:I

.field private mDefaultIMEIPosY:I

.field private mDefaultIMEIPosYGap:I

.field private mDefaultIMEIRectHeight:I

.field private mDefaultIMEIRectLeft:I

.field private mDefaultIMEIRectTop:I

.field private mDefaultIMEIRectWidth:I

.field private mDefaultScreen:I

.field private final mDimPaint:Landroid/graphics/Paint;

.field private mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field final mDrawerBounds:Landroid/graphics/Rect;

.field private mEndScreen:I

.field private mExistWidgetSpace:Z

.field protected mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field protected mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

.field private mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mHoverInRect:Landroid/graphics/Rect;

.field private mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mHoverOutRect:Landroid/graphics/Rect;

.field private mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

.field private mHoverScratchRect:Landroid/graphics/Rect;

.field private mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mIMEITextPaint:Landroid/graphics/Paint;

.field private mIMSISurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mIgnoreRestore:Z

.field private mIsAnimating:Z

.field private mIsAutoScrolling:Z

.field private mIsOnAnimation:Z

.field private mIsResizing:Z

.field private mIsWallpaperLooping:Z

.field private mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mModeResize:Z

.field private mOverlayColorRed:I

.field private mOverlayColorYellow:I

.field private mResizeBaseCellRect:Landroid/graphics/Rect;

.field private mResizeBaseRect:Landroid/graphics/Rect;

.field private mResizeData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mResizeDimPaint:Landroid/graphics/Paint;

.field private mResizeDimRect:Landroid/graphics/Rect;

.field private mResizeDotGray:Landroid/graphics/drawable/Drawable;

.field private mResizeDotRed:Landroid/graphics/drawable/Drawable;

.field private mResizeDotYellow:Landroid/graphics/drawable/Drawable;

.field private mResizeEnableState:I

.field private mResizeHandle:Landroid/graphics/drawable/Drawable;

.field private mResizeHandleRect:Landroid/graphics/Rect;

.field private mResizeHandleRectTouched:Z

.field private mResizeModeCancel:Z

.field private mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

.field private mResizeOverlayRed:Landroid/graphics/drawable/Drawable;

.field private mResizeOverlayYellow:Landroid/graphics/drawable/Drawable;

.field private mResizeRect:Landroid/graphics/Rect;

.field private mResizeRectPaint:Landroid/graphics/Paint;

.field private mResizeStrokePaint:Landroid/graphics/Paint;

.field private mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

.field private mScrollDirection:I

.field private mSnaptoScreenStartTime:J

.field private mStartScreen:I

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempEstimate:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mWallpaperLooingState:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidgetResizeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 329
    invoke-direct {p0, p1, p2, v6}, Lcom/sec/android/app/twlauncher/Scene;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 113
    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 115
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempCell:[I

    .line 117
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    .line 121
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    .line 123
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mClipBounds:Landroid/graphics/Rect;

    .line 125
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 127
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    .line 135
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWidgetResizeLock:Ljava/lang/Object;

    .line 139
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 141
    iput v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 143
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 186
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    .line 188
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    .line 190
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    .line 192
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0xc8

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 194
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0xc8

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 196
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverScratchRect:Landroid/graphics/Rect;

    .line 198
    new-instance v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 207
    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    invoke-direct {v2, p0, v5}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    .line 209
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    .line 211
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    .line 213
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    .line 215
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    .line 217
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsResizing:Z

    .line 266
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    .line 276
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x12c

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 279
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x12c

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 285
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    .line 286
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_NONE:I

    .line 287
    iput v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_LEFT:I

    .line 288
    iput v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->LOOP_RIGHT:I

    .line 291
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 292
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    .line 298
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_TILT_WORKSPACE:Z

    .line 995
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    .line 997
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    .line 3671
    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace$2;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    .line 331
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 333
    sget-object v2, Lcom/sec/android/app/twlauncher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v2, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 335
    .local v0, a:Landroid/content/res/TypedArray;
    const-string v2, "ro.csc.homescreen.defaultscreen"

    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 338
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 341
    .local v1, res:Landroid/content/res/Resources;
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->initWorkspace(Landroid/content/res/Resources;)V

    .line 342
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->initPageIndicator(Landroid/content/res/Resources;)V

    .line 343
    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/twlauncher/Workspace;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/Workspace;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Workspace;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$408(Lcom/sec/android/app/twlauncher/Workspace;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$410(Lcom/sec/android/app/twlauncher/Workspace;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/twlauncher/Workspace;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentWidgetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/Workspace;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/twlauncher/Workspace;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/Workspace;Landroid/graphics/Rect;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->setResizeRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method private cancelRunningTransitionAnimation()V
    .registers 3

    .prologue
    .line 3517
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v1, :cond_16

    .line 3518
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    .line 3519
    .local v0, started:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 3520
    if-nez v0, :cond_16

    .line 3521
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3524
    .end local v0           #started:Z
    :cond_16
    return-void
.end method

.method private checkResizeHandleRectTouchedDown(II)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2425
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    if-nez v1, :cond_6

    .line 2456
    :cond_5
    :goto_5
    return v0

    .line 2429
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    .line 2430
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    .line 2436
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3faaaaab

    mul-float/2addr v3, v4

    .line 2450
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    int-to-float v4, p1

    sub-float/2addr v1, v4

    .line 2451
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    int-to-float v4, p2

    sub-float/2addr v2, v4

    .line 2452
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 2453
    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    .line 2454
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private clearVacantCache()V
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_c

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 800
    :cond_c
    return-void
.end method

.method private cloneFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/CellLayout;IIZ)V
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3075
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v17

    .line 3076
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v18

    .line 3077
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->renewFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V

    .line 3078
    const-wide/16 v2, -0x1

    move-object/from16 v0, v18

    iput-wide v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 3082
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_63

    .line 3083
    const v3, 0x7f03000a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    invoke-static {v3, v4, v2, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml2(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v7

    .line 3088
    :goto_37
    if-eqz p5, :cond_7d

    const/4 v2, 0x0

    :goto_3a
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;I)V

    .line 3089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3090
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 3091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-nez v2, :cond_7f

    .line 3109
    :goto_62
    return-void

    .line 3086
    :cond_63
    const v3, 0x7f03000a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    invoke-static {v3, v4, v2, v0}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v7

    goto :goto_37

    .line 3088
    :cond_7d
    const/4 v2, -0x1

    goto :goto_3a

    .line 3093
    :cond_7f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 3094
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 3095
    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    .line 3099
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b7

    .line 3100
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v10, -0x64

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget v13, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v14, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v9, v18

    invoke-static/range {v8 .. v16}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabaseUserFolderWithShortcut(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZI)V

    .line 3107
    :goto_ae
    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/LauncherModel;->addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 3108
    check-cast v7, Lcom/sec/android/app/twlauncher/FolderIcon;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/FolderIcon;->onClone()V

    goto :goto_62

    .line 3104
    :cond_b7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v10, -0x64

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iget v13, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v14, v2, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v9, v18

    invoke-static/range {v8 .. v14}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_ae
.end method

.method private currentlyOverscrollingChild(I)Z
    .registers 6
    .parameter "page"

    .prologue
    const/4 v0, 0x1

    .line 1157
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-nez v1, :cond_23

    .line 1158
    if-nez p1, :cond_c

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-gez v1, :cond_c

    .line 1164
    :cond_b
    :goto_b
    return v0

    .line 1160
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_23

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    if-gt v1, v2, :cond_b

    .line 1164
    :cond_23
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private drawDefaultIMSIText(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1582
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectWidth:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1583
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1585
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1589
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mPdaVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1591
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mPhoneVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1597
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mCscVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1599
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mRfCalDate:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1601
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1603
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mCameraFirmVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1605
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mTspFirmVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x7

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1607
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1612
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v5, v5, 0x9

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1615
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMSISurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1617
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1618
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1619
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 1621
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1622
    const v0, 0x3f19999a

    invoke-virtual {p1, v6, v6, v6, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    .line 1623
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectTop:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectLeft:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectTop:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 1625
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1627
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMSISurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 1628
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1629
    return-void
.end method

.method private drawHoverRect(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;FF)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 1399
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    .line 1400
    sub-float v0, v5, v0

    mul-float/2addr v0, p3

    .line 1402
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1404
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 1405
    invoke-direct {p0, p1, v1, p4}, Lcom/sec/android/app/twlauncher/Workspace;->transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;IF)V

    .line 1408
    neg-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1414
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1415
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isManagingWallpaper()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1427
    const/16 v1, 0x306

    const/16 v2, 0x300

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    .line 1430
    const/high16 v1, 0x3f00

    invoke-static {v1, v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    .line 1431
    invoke-virtual {p1, v1, v1, v1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    .line 1437
    :goto_40
    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(Landroid/graphics/Rect;)V

    .line 1438
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1442
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 1443
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1444
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1446
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 1447
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1448
    return-void

    .line 1434
    :cond_69
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 1435
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncErase()V

    goto :goto_40
.end method

.method private drawPageIndicator(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 6
    .parameter "canvas"

    .prologue
    .line 1647
    const/4 v0, 0x0

    .line 1648
    .local v0, redraw:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_1c

    .line 1649
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1650
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageScrollOffset(I)V

    .line 1655
    :goto_14
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    move-result v0

    .line 1657
    :cond_1c
    return v0

    .line 1652
    :cond_1d
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    .line 1653
    .local v1, updatedScreen:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    goto :goto_14
.end method

.method private drawResizeGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 11
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1355
    const/4 v7, 0x0

    .line 1356
    .local v7, ret:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a4

    .line 1357
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    .line 1361
    :goto_17
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1367
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1370
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1371
    .local v6, cl:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPointX(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1372
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPointY(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1373
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixelW(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1374
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixelH(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1375
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1379
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->drawWidgetResizeAnimatorGL(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v7, v1

    .line 1382
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_8c

    .line 1383
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->drawResizeOverlay(Landroid/graphics/Canvas;)V

    .line 1385
    :cond_8c
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v1, :cond_97

    .line 1386
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1389
    :cond_97
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 1390
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v1, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 1393
    return v7

    .line 1360
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v6           #cl:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_a4
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_17
.end method

.method private drawResizeOverlay(Landroid/graphics/Canvas;)V
    .registers 19
    .parameter "canvas"

    .prologue
    .line 1464
    const/4 v6, 0x0

    .line 1465
    .local v6, overlay:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    .line 1466
    .local v4, handle:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1467
    .local v1, dot:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 1468
    .local v10, tmpRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_84

    .line 1469
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayRed:Landroid/graphics/drawable/Drawable;

    .line 1470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    .line 1471
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorRed:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorRed:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1479
    :goto_2f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 1481
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1483
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 1484
    .local v9, resizableRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    if-eqz v11, :cond_67

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a0

    .line 1485
    :cond_67
    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v9, Landroid/graphics/Rect;->top:I

    iget v13, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->right:I

    iget v14, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    iget v15, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1488
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4b

    .line 1474
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #resizableRect:Landroid/graphics/Rect;
    :cond_84
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayYellow:Landroid/graphics/drawable/Drawable;

    .line 1475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    .line 1476
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorYellow:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2f

    .line 1490
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v9       #resizableRect:Landroid/graphics/Rect;
    :cond_a0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

    iget v12, v9, Landroid/graphics/Rect;->left:I

    iget v13, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->top:I

    iget v14, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    iget v14, v9, Landroid/graphics/Rect;->right:I

    iget v15, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    iget v15, v9, Landroid/graphics/Rect;->bottom:I

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1493
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4b

    .line 1497
    .end local v9           #resizableRect:Landroid/graphics/Rect;
    :cond_c8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_144

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 1498
    .restart local v9       #resizableRect:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1500
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    if-eqz v11, :cond_ef

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_115

    .line 1501
    :cond_ef
    iget v11, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1503
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1510
    :goto_111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d0

    .line 1505
    :cond_115
    iget v11, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_111

    .line 1513
    .end local v9           #resizableRect:Landroid/graphics/Rect;
    :cond_144
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    invoke-direct {v8, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1514
    .local v8, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1516
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1517
    .local v7, padding:Landroid/graphics/Rect;
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1519
    iget v11, v8, Landroid/graphics/Rect;->left:I

    iget v12, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iput v11, v8, Landroid/graphics/Rect;->left:I

    .line 1520
    iget v11, v8, Landroid/graphics/Rect;->right:I

    iget v12, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    iput v11, v8, Landroid/graphics/Rect;->right:I

    .line 1521
    iget v11, v8, Landroid/graphics/Rect;->top:I

    iget v12, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iput v11, v8, Landroid/graphics/Rect;->top:I

    .line 1522
    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    iput v11, v8, Landroid/graphics/Rect;->bottom:I

    .line 1524
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1525
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1527
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1528
    iget v11, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, v7, Landroid/graphics/Rect;->right:I

    sub-int v2, v11, v12

    .line 1529
    .local v2, dx:I
    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v11, v12

    .line 1530
    .local v3, dy:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1531
    int-to-float v11, v2

    int-to-float v12, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1532
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1533
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1534
    return-void
.end method

.method private drawWidgetResizeAnimatorGL(Landroid/graphics/Canvas;)Z
    .registers 5
    .parameter "canvas"

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-nez v1, :cond_6

    .line 1452
    const/4 v0, 0x0

    .line 1460
    :goto_5
    return v0

    .line 1454
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1455
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1457
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    .line 1458
    .local v0, redraw:Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5
.end method

.method private estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I
    .registers 15
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 3238
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_b

    .line 3239
    const/4 v0, 0x0

    invoke-virtual {p6, v0, p5}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3242
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 3244
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageFramePaddingLeft:I

    sub-int/2addr p1, v0

    .line 3247
    :cond_18
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findNearestVacantArea(IIIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private findCellForResizableWidget([ILjava/lang/Object;)Z
    .registers 14
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x78

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3130
    check-cast p2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    .line 3133
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3134
    if-nez v6, :cond_84

    move v5, v2

    .line 3135
    :goto_11
    if-nez v6, :cond_88

    move v1, v2

    .line 3137
    :goto_14
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v4, v7, v5, v1, v3}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v4

    .line 3138
    if-nez v4, :cond_99

    .line 3139
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->getSupportSize()[Ljava/lang/String;

    move-result-object v7

    .line 3140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3141
    const/4 v1, -0x1

    move v0, v3

    .line 3143
    :goto_3b
    array-length v8, v7

    if-ge v0, v8, :cond_9c

    .line 3144
    aget-object v8, v7, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8b

    move v1, v0

    move v0, v2

    .line 3151
    :goto_48
    if-eqz v0, :cond_99

    if-ltz v1, :cond_99

    .line 3152
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v4

    :goto_50
    if-ltz v1, :cond_9a

    .line 3153
    aget-object v4, v7, v1

    .line 3154
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3155
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3157
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v8, v9, v5, v4, v3}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v4

    or-int/2addr v4, v0

    .line 3159
    if-eqz v4, :cond_94

    .line 3160
    if-nez v6, :cond_8e

    move v0, v2

    :goto_7c
    iput v0, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 3161
    if-nez v6, :cond_91

    move v0, v2

    :goto_81
    iput v0, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 3168
    :goto_83
    return v2

    .line 3134
    :cond_84
    iget v1, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move v5, v1

    goto :goto_11

    .line 3135
    :cond_88
    iget v1, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    goto :goto_14

    .line 3143
    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 3160
    :cond_8e
    iget v0, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    goto :goto_7c

    .line 3161
    :cond_91
    iget v0, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    goto :goto_81

    .line 3152
    :cond_94
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v4

    goto :goto_50

    :cond_99
    move v0, v4

    :cond_9a
    move v2, v0

    .line 3168
    goto :goto_83

    :cond_9c
    move v0, v3

    goto :goto_48
.end method

.method private findSearchWidget(Lcom/sec/android/app/twlauncher/CellLayout;)Lcom/sec/android/app/twlauncher/Search;
    .registers 6
    .parameter "screen"

    .prologue
    .line 3357
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v0

    .line 3358
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 3359
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3360
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/Search;

    if-eqz v3, :cond_12

    .line 3361
    check-cast v2, Lcom/sec/android/app/twlauncher/Search;

    .line 3364
    .end local v2           #v:Landroid/view/View;
    :goto_11
    return-object v2

    .line 3358
    .restart local v2       #v:Landroid/view/View;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3364
    .end local v2           #v:Landroid/view/View;
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private getAllResizeCellSpans()Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2671
    .local v0, info:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2672
    .local v7, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    new-instance v5, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v5, v12, v13}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 2673
    .local v5, multi:Lcom/sec/android/app/twlauncher/MultipleSize;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2675
    .local v8, screen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMaxX()I

    move-result v3

    .line 2676
    .local v3, maxX:I
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMaxY()I

    move-result v4

    .line 2677
    .local v4, maxY:I
    const/4 v12, 0x2

    new-array v6, v12, [I

    .line 2678
    .local v6, pixelWH:[I
    const/4 v12, 0x2

    new-array v2, v12, [I

    .line 2680
    .local v2, maxWH:[I
    const/4 v9, 0x0

    .line 2685
    .local v9, top:I
    iget-object v12, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v12}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v1

    .line 2686
    .local v1, left:I
    iget-object v12, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v12}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v9

    .line 2689
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v12

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v13

    invoke-virtual {v8, v12, v13, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 2690
    const/4 v11, 0x1

    .local v11, y:I
    :goto_3f
    if-gt v11, v4, :cond_75

    .line 2691
    const/4 v10, 0x1

    .local v10, x:I
    :goto_42
    if-gt v10, v3, :cond_72

    .line 2692
    invoke-virtual {v5, v10, v11}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v12

    if-eqz v12, :cond_6f

    .line 2693
    invoke-virtual {v8, v10, v11, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 2694
    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/2addr v12, v1

    const/4 v13, 0x0

    aget v13, v2, v13

    if-gt v12, v13, :cond_6f

    const/4 v12, 0x1

    aget v12, v6, v12

    add-int/2addr v12, v9

    const/4 v13, 0x1

    aget v13, v2, v13

    if-gt v12, v13, :cond_6f

    .line 2695
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    aget v13, v6, v13

    add-int/2addr v13, v1

    const/4 v14, 0x1

    aget v14, v6, v14

    add-int/2addr v14, v9

    invoke-direct {v12, v1, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2691
    :cond_6f
    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    .line 2690
    :cond_72
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    .line 2701
    .end local v10           #x:I
    :cond_75
    return-object v7
.end method

.method private getWhichScreen()I
    .registers 9

    .prologue
    .line 2382
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    .line 2384
    .local v2, scrWidth:I
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v6, :cond_c

    .line 2385
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v2

    .line 2388
    :cond_c
    move v3, v2

    .line 2389
    .local v3, screenWidth:I
    const/4 v5, 0x0

    .line 2390
    .local v5, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 2391
    .local v1, count:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 2393
    .local v4, scrollX:I
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v6, :cond_2a

    const/4 v6, 0x2

    if-lt v1, v6, :cond_2a

    .line 2394
    if-gez v4, :cond_24

    .line 2395
    div-int/lit8 v6, v3, 0x2

    sub-int v6, v4, v6

    div-int v5, v6, v3

    .line 2421
    :goto_23
    return v5

    .line 2397
    :cond_24
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    div-int v5, v6, v3

    goto :goto_23

    .line 2401
    :cond_2a
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v7

    sub-int v0, v6, v7

    .line 2403
    .local v0, availableToScroll:I
    if-gez v4, :cond_3f

    .line 2404
    const/4 v5, 0x0

    goto :goto_23

    .line 2405
    :cond_3f
    if-gtz v0, :cond_44

    .line 2406
    add-int/lit8 v5, v1, -0x1

    goto :goto_23

    .line 2409
    :cond_44
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-nez v6, :cond_4e

    .line 2410
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    div-int v5, v6, v3

    goto :goto_23

    .line 2412
    :cond_4e
    if-lez v3, :cond_56

    .line 2413
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    div-int v5, v6, v3

    goto :goto_23

    .line 2415
    :cond_56
    const/4 v5, 0x0

    goto :goto_23
.end method

.method private initPageIndicator(Landroid/content/res/Resources;)V
    .registers 11
    .parameter

    .prologue
    .line 1636
    new-instance v0, Lcom/sec/android/app/twlauncher/PageIndicator;

    const v1, 0x7f0b0042

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x7

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorTop:I

    const v1, 0x7f0b003d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v1, 0x7f0b003e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v1, 0x7f090004

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    move-object v1, p1

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/twlauncher/PageIndicator;-><init>(Landroid/content/res/Resources;IIIIIZLcom/sec/android/app/twlauncher/Scene;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 1643
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 1644
    return-void
.end method

.method private initWorkspace(Landroid/content/res/Resources;)V
    .registers 11
    .parameter "res"

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 349
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 350
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 353
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    .line 354
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mMaximumVelocity:I

    .line 355
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    .line 361
    const v1, 0x7f090005

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    .line 362
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 363
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x7f07000e

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 366
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_1c1

    .line 367
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    .line 377
    :goto_4f
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    .line 392
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 401
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 405
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    .line 407
    const v1, 0x7f02002c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    .line 410
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    .line 415
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimPaint:Landroid/graphics/Paint;

    .line 416
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x6700

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 421
    const v1, 0x7f02001b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayYellow:Landroid/graphics/drawable/Drawable;

    .line 422
    const v1, 0x7f020018

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayRed:Landroid/graphics/drawable/Drawable;

    .line 423
    const v1, 0x7f020014

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

    .line 425
    const v1, 0x7f020017

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    .line 426
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_146

    .line 427
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 429
    :cond_146
    const v1, 0x7f020016

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_164

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 433
    :cond_164
    const v1, 0x7f020015

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    .line 434
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_182

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 438
    :cond_182
    const v1, 0x7f020055

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    .line 439
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a0

    .line 440
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 443
    :cond_1a0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    .line 444
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    .line 445
    const v1, 0x7f070012

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorYellow:I

    .line 446
    const v1, 0x7f070010

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorRed:I

    .line 447
    return-void

    .line 369
    :cond_1c1
    const/16 v1, 0x258

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    goto/16 :goto_4f
.end method

.method private isResizableWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2641
    if-nez p1, :cond_5

    .line 2651
    :cond_4
    :goto_4
    return v0

    .line 2645
    :cond_5
    new-instance v2, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 2646
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->countAvailableSizes()I

    move-result v2

    .line 2647
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resizable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%#x"

    new-array v6, v1, [Ljava/lang/Object;

    iget-wide v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cnt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    if-ge v1, v2, :cond_4

    move v0, v1

    .line 2649
    goto :goto_4
.end method

.method private isSamsungWidgetInfo(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3112
    const/4 v2, 0x0

    .line 3114
    check-cast p1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    .line 3115
    instance-of v3, v0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    if-eqz v3, :cond_2f

    .line 3116
    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    .line 3117
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->getProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.android.widgetapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 3119
    new-instance v3, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 3120
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MultipleSize;->countAvailableSizes()I

    move-result v0

    if-le v0, v1, :cond_2f

    move v0, v1

    .line 3125
    :goto_2e
    return v0

    :cond_2f
    move v0, v2

    goto :goto_2e
.end method

.method private onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V
    .registers 13
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "cellLayout"

    .prologue
    .line 2983
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 2984
    return-void
.end method

.method private onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2991
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 2992
    if-eqz v0, :cond_9

    .line 2993
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 2996
    :cond_9
    check-cast p4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v8

    .line 2997
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v9

    .line 3000
    iget v0, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    sparse-switch v0, :sswitch_data_ee

    .line 3043
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3003
    :sswitch_33
    iget-wide v0, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_44

    .line 3005
    new-instance v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v0, v8

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    move-object v8, v1

    .line 3007
    :cond_44
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const v2, 0x7f030001

    move-object v0, v8

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v1, v2, p5, v0}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v5

    .line 3046
    if-eqz p6, :cond_b1

    const/4 v0, 0x0

    :goto_53
    invoke-virtual {p5, v5, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;I)V

    .line 3047
    if-nez v5, :cond_b3

    .line 3070
    :cond_58
    :goto_58
    return-void

    .line 3012
    :sswitch_59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v9

    .line 3013
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    iput v0, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 3021
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 3022
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 3024
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v0

    .line 3025
    if-eqz v0, :cond_98

    .line 3026
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 3027
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 3028
    iput v3, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 3029
    iput v4, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 3030
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 3034
    :goto_8a
    iget v0, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/16 v1, 0xfa4

    if-ne v0, v1, :cond_9c

    .line 3035
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v8, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/app/twlauncher/Launcher;->addNewDroppedAppWidget(Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_58

    .line 3032
    :cond_98
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    goto :goto_8a

    .line 3037
    :cond_9c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/app/twlauncher/Launcher;->addNewDroppedSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_58

    :sswitch_a4
    move-object v1, v8

    .line 3040
    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v0, p0

    move-object v2, p5

    move v3, p2

    move v4, p3

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->cloneFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/CellLayout;IIZ)V

    goto :goto_58

    .line 3046
    :cond_b1
    const/4 v0, -0x1

    goto :goto_53

    .line 3049
    :cond_b3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3050
    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 3051
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-eqz v0, :cond_58

    .line 3053
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    invoke-virtual {p5, v5, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 3054
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 3057
    invoke-virtual {v9, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 3067
    :cond_dc
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v2, -0x64

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    iget v5, v1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v6, v1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move-object v1, v8

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto/16 :goto_58

    .line 3000
    :sswitch_data_ee
    .sparse-switch
        0x0 -> :sswitch_33
        0x1 -> :sswitch_33
        0x2 -> :sswitch_a4
        0x5 -> :sswitch_59
        0xfa4 -> :sswitch_59
    .end sparse-switch
.end method

.method private setResizeBaseRect(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .registers 14
    .parameter "lawi"

    .prologue
    const/4 v10, 0x0

    .line 3712
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3713
    .local v0, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 3714
    .local v5, point:[I
    new-instance v4, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v4, v7, v8}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 3715
    .local v4, ms:Lcom/sec/android/app/twlauncher/MultipleSize;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinX()I

    move-result v3

    .line 3716
    .local v3, minCellW:I
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinY()I

    move-result v2

    .line 3717
    .local v2, minCellH:I
    invoke-virtual {v0, v3, v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 3718
    new-instance v7, Landroid/graphics/Rect;

    aget v8, v5, v10

    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    .line 3720
    iget v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v8

    mul-int v6, v7, v8

    .line 3721
    .local v6, top:I
    iget v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v8

    mul-int v1, v7, v8

    .line 3725
    .local v1, left:I
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget-object v8, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v8

    iget-object v9, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 3728
    new-instance v7, Landroid/graphics/Rect;

    iget v8, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v9, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v10, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    add-int/2addr v10, v3

    iget v11, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    add-int/2addr v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseCellRect:Landroid/graphics/Rect;

    .line 3733
    return-void
.end method

.method private setResizeRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 3706
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    .line 3707
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentWidgetRect:Landroid/graphics/Rect;

    .line 3708
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 3709
    return-void
.end method

.method private snapToDestination()V
    .registers 3

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 2461
    return-void
.end method

.method private transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;IF)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x4000

    const/high16 v9, 0x3fc0

    const/high16 v8, 0x3f80

    const/4 v5, 0x0

    .line 1173
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    .line 1174
    mul-int v0, v6, p2

    .line 1175
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int v7, v0, v1

    .line 1177
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_TILT_WORKSPACE:Z

    if-nez v1, :cond_58

    .line 1178
    cmpg-float v1, p3, v5

    if-gtz v1, :cond_35

    .line 1179
    int-to-float v0, v0

    int-to-float v1, v7

    int-to-float v2, v6

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageGap:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1189
    :goto_25
    int-to-float v0, v6

    mul-float/2addr v0, v9

    .line 1190
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float/2addr v0, p3

    sub-float v0, v8, v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 1229
    :goto_34
    return-void

    .line 1182
    :cond_35
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleMain:F

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleSide:F

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v6

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    .line 1183
    invoke-static {v8, v1, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    .line 1185
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomPageGap:I

    mul-int/2addr v1, v7

    div-int/2addr v1, v6

    add-int/2addr v1, v0

    .line 1186
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 1187
    int-to-float v4, v1

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    goto :goto_25

    .line 1193
    :cond_58
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleMain:F

    invoke-static {v8, v1, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNormalScaleSide:F

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleSide:F

    invoke-static {v2, v3, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v6

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    .line 1198
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageGap:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomPageGap:I

    int-to-float v2, v2

    invoke-static {v1, v2, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    .line 1199
    int-to-float v0, v0

    int-to-float v2, v7

    mul-float/2addr v1, v2

    int-to-float v2, v6

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v1, v0

    .line 1201
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 1202
    int-to-float v4, v1

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    .line 1204
    int-to-float v0, v6

    mul-float/2addr v0, v9

    .line 1205
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float/2addr v0, p3

    sub-float v0, v8, v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 1208
    neg-int v0, v7

    int-to-float v0, v0

    int-to-float v1, v6

    div-float/2addr v0, v1

    .line 1210
    const/high16 v1, 0x41a0

    const/high16 v2, 0x4170

    invoke-static {v1, v2, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 1212
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->currentlyOverscrollingChild(I)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 1214
    neg-int v0, v7

    int-to-float v0, v0

    invoke-virtual {p1, v0, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1218
    div-int/lit8 v0, v6, 0x4

    .line 1219
    const/high16 v1, 0x4140

    .line 1222
    int-to-float v2, v7

    int-to-float v0, v0

    div-float v0, v2, v0

    mul-float/2addr v0, v1

    .line 1225
    :cond_bc
    int-to-float v1, v6

    div-float/2addr v1, v10

    invoke-virtual {p1, v1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1226
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotateY(F)V

    .line 1227
    neg-int v0, v6

    int-to-float v0, v0

    div-float/2addr v0, v10

    invoke-virtual {p1, v0, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    goto/16 :goto_34
.end method

.method private updateWallpaperOffset(I)V
    .registers 7
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    const/4 v4, 0x0

    .line 822
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 826
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    cmpl-float v3, v1, v4

    if-nez v3, :cond_33

    :goto_12
    invoke-virtual {v2, v0, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 828
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 829
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 830
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 832
    if-gez v1, :cond_35

    .line 838
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_32

    .line 842
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v0, v2, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 847
    :cond_32
    return-void

    :cond_33
    move v0, v1

    .line 826
    goto :goto_12

    .line 834
    :cond_35
    if-gtz v2, :cond_25

    .line 835
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_25
.end method


# virtual methods
.method public ResizeWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2811
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2813
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 2816
    :try_start_b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_120

    .line 2824
    :goto_1d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_11f

    .line 2825
    new-instance v3, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 2826
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MultipleSize;->countAvailableSizes()I

    move-result v0

    if-le v0, v9, :cond_11f

    .line 2827
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V

    .line 2829
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->isResizableWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 2832
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v0

    .line 2833
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 2834
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->deactivate()V

    .line 2835
    :cond_56
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    .line 2836
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2838
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v5

    mul-int/2addr v4, v5

    .line 2839
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v5

    mul-int/2addr v4, v5

    .line 2841
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 2842
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v1, v5, v6, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 2849
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2852
    aget v6, v4, v8

    aget v7, v4, v9

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 2853
    invoke-direct {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->setResizeRect(Landroid/graphics/Rect;)V

    .line 2855
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinX()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinY()I

    move-result v3

    invoke-virtual {v1, v5, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 2856
    new-instance v3, Landroid/graphics/Rect;

    aget v5, v4, v8

    aget v4, v4, v9

    invoke-direct {v3, v8, v8, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2858
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v5

    mul-int/2addr v4, v5

    .line 2859
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v1

    mul-int/2addr v1, v4

    .line 2863
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getTop()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 2866
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setResizeBaseRect(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    .line 2868
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-nez v0, :cond_e3

    .line 2869
    new-instance v0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    new-instance v1, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;

    invoke-direct {v1, p0, v10}, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    .line 2872
    :cond_e3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->flipTo(Landroid/graphics/Bitmap;)V

    .line 2874
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 2878
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    if-eqz v0, :cond_114

    .line 2879
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2880
    :cond_114
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getAllResizeCellSpans()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    .line 2881
    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    .line 2883
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 2889
    :cond_11f
    :goto_11f
    return-void

    .line 2819
    :catch_120
    move-exception v0

    .line 2820
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2821
    const-string v0, "Launcher.Workspace"

    const-string v1, "Unable to getAppWidgetInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 2885
    :cond_12d
    iput-object v10, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    goto :goto_11f
.end method

.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 16
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3176
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 3177
    .local v3, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3178
    .local v1, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v1, :cond_30

    move v4, v5

    .line 3179
    .local v4, spanX:I
    :goto_b
    if-nez v1, :cond_33

    .line 3181
    .local v5, spanY:I
    :goto_d
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v7, :cond_1a

    .line 3182
    if-nez v1, :cond_36

    move-object v2, v6

    .line 3183
    .local v2, ignoreView:Landroid/view/View;
    :goto_14
    invoke-virtual {v3, v6, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3187
    .end local v2           #ignoreView:Landroid/view/View;
    :cond_1a
    invoke-direct {p0, p6}, Lcom/sec/android/app/twlauncher/Workspace;->isSamsungWidgetInfo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 3188
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-direct {p0, v6, p6}, Lcom/sec/android/app/twlauncher/Workspace;->findCellForResizableWidget([ILjava/lang/Object;)Z

    move-result v0

    .line 3192
    .local v0, accept:Z
    :goto_26
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    if-eqz v0, :cond_43

    sget-object v6, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    :goto_2c
    invoke-interface {v7, v6}, Lcom/sec/android/app/twlauncher/DragController;->setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    .line 3194
    return v0

    .line 3178
    .end local v0           #accept:Z
    .end local v4           #spanX:I
    .end local v5           #spanY:I
    :cond_30
    iget v4, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    goto :goto_b

    .line 3179
    .restart local v4       #spanX:I
    :cond_33
    iget v5, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    goto :goto_d

    .line 3182
    .restart local v5       #spanY:I
    :cond_36
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_14

    .line 3190
    :cond_39
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v0

    .restart local v0       #accept:Z
    goto :goto_26

    .line 3192
    :cond_43
    sget-object v6, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRANS:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    goto :goto_2c
.end method

.method addApplicationShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .registers 12
    .parameter "info"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 2632
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v5

    .line 2633
    .local v5, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 2635
    .local v7, result:[I
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v5, v0, v1, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 2636
    const/4 v1, 0x0

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    new-instance v4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v4, p1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 2638
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1772
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1773
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 1774
    .local v0, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-nez v0, :cond_49

    .line 1775
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1776
    const/16 v1, 0x11

    if-ne p2, v1, :cond_2f

    .line 1777
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lez v1, :cond_2e

    .line 1778
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1789
    .end local v0           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_2e
    :goto_2e
    return-void

    .line 1780
    .restart local v0       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_2f
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2e

    .line 1781
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2e

    .line 1782
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_2e

    .line 1786
    :cond_49
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_2e
.end method

.method addInCurrentScreen(Landroid/view/View;IIII)V
    .registers 14
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 660
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .registers 15
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 676
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIII)V
    .registers 15
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 690
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 691
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIIIZ)V
    .registers 16
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 707
    if-ltz p2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    if-lt p2, v5, :cond_60

    .line 709
    :cond_8
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item in db lies on nonexistent screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Screen count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Item will be deleted. Iteminfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mContext:Landroid/content/Context;

    .line 713
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 714
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 757
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #context:Landroid/content/Context;
    :cond_5f
    :goto_5f
    return-void

    .line 721
    :cond_60
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 723
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 724
    .local v3, group:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v4, 0x0

    .line 725
    .local v4, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_7c

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    if-eqz v5, :cond_7c

    .line 727
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 730
    .restart local v4       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_7c
    if-nez v4, :cond_9c

    .line 731
    new-instance v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-direct {v4, p3, p4, p5, p6}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 738
    .restart local v4       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_83
    if-eqz p7, :cond_a5

    const/4 v5, 0x0

    :goto_86
    invoke-virtual {v3, p1, v5, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 739
    instance-of v5, p1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v5, :cond_92

    .line 740
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 743
    :cond_92
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    .line 744
    .local v2, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v2, :cond_5f

    .line 745
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto :goto_5f

    .line 733
    .end local v2           #folder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_9c
    iput p3, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    .line 734
    iput p4, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .line 735
    iput p5, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 736
    iput p6, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_83

    .line 738
    :cond_a5
    const/4 v5, -0x1

    goto :goto_86
.end method

.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 504
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_c

    .line 505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_c
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;)V

    .line 508
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 512
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_c

    .line 513
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;I)V

    .line 516
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 6
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 520
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_c

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;II)V

    .line 524
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 496
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_c

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 500
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 528
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_c

    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    return-void
.end method

.method addWidget(Landroid/view/View;Lcom/sec/android/app/twlauncher/Widget;Z)V
    .registers 12
    .parameter "view"
    .parameter "widget"
    .parameter "insert"

    .prologue
    .line 760
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 762
    return-void
.end method

.method public allowLongPress()Z
    .registers 2

    .prologue
    .line 3434
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method public animateClose()V
    .registers 4

    .prologue
    .line 3911
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelRunningTransitionAnimation()V

    .line 3912
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v0, :cond_1e

    .line 3913
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    check-cast v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    .line 3916
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    .line 3917
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 3919
    return-void
.end method

.method public animateOpen()V
    .registers 4

    .prologue
    .line 3900
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelRunningTransitionAnimation()V

    .line 3901
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v0, :cond_1e

    .line 3902
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    check-cast v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    .line 3905
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    .line 3906
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 3908
    return-void
.end method

.method backgroundAlphaInterpolator(F)F
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1041
    .line 1042
    const v1, 0x3e99999a

    .line 1043
    cmpg-float v2, p1, v0

    if-gez v2, :cond_9

    .line 1048
    :goto_8
    return v0

    .line 1045
    :cond_9
    cmpl-float v2, p1, v1

    if-lez v2, :cond_10

    .line 1046
    const/high16 v0, 0x3f80

    goto :goto_8

    .line 1048
    :cond_10
    sub-float v2, p1, v0

    sub-float v0, v1, v0

    div-float v0, v2, v0

    goto :goto_8
.end method

.method public cancelOutAnimIfRunning()Z
    .registers 3

    .prologue
    .line 3530
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_f

    .line 3531
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelRunningTransitionAnimation()V

    .line 3532
    const/4 v0, 0x1

    .line 3534
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public computeScroll()V
    .registers 11

    .prologue
    const/high16 v9, 0x3f00

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/high16 v1, 0x3f80

    const/4 v6, 0x0

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 885
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->suspendWidgetUpdates()V

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 888
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 889
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v2, :cond_3d

    if-lt v0, v7, :cond_3d

    .line 890
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_75

    .line 891
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 897
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v0

    if-nez v0, :cond_71

    .line 901
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_af

    .line 904
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    if-eqz v0, :cond_ab

    .line 905
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 906
    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 907
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 909
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    if-ne v3, v7, :cond_93

    .line 910
    cmpl-float v0, v0, v1

    if-lez v0, :cond_6a

    .line 912
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 913
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    .line 919
    :cond_6a
    if-eqz v2, :cond_71

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, v2, v9, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 948
    :cond_71
    :goto_71
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    .line 988
    :cond_74
    :goto_74
    return-void

    .line 892
    :cond_75
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-le v2, v3, :cond_3d

    .line 893
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v0, v3

    sub-int v0, v2, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    goto :goto_3d

    .line 922
    :cond_93
    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_71

    .line 923
    cmpl-float v3, v0, v1

    if-lez v3, :cond_a1

    .line 925
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 926
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    move v0, v1

    .line 928
    :cond_a1
    sub-float v0, v1, v0

    .line 932
    if-eqz v2, :cond_71

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, v2, v9, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_71

    .line 939
    :cond_ab
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_71

    .line 945
    :cond_af
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_71

    .line 949
    :cond_b3
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_74

    .line 950
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 951
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 953
    if-lt v0, v7, :cond_de

    .line 954
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 956
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v1, :cond_de

    .line 957
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-gez v1, :cond_10e

    .line 958
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 965
    :cond_de
    :goto_de
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 966
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 968
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11b

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 974
    :goto_fd
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_106

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 982
    :cond_106
    :goto_106
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->resumeWidgetUpdates()V

    .line 983
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    goto/16 :goto_74

    .line 959
    :cond_10e
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v1, v0, :cond_de

    .line 960
    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_de

    .line 972
    :cond_115
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_fd

    .line 977
    :cond_11b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_106

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v0, :cond_106

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    goto :goto_106
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 1055
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1236
    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    if-nez v0, :cond_14

    .line 1348
    :cond_13
    :goto_13
    return v2

    .line 1243
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v0

    if-gez v0, :cond_13

    .line 1246
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMSI:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1247
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawDefaultIMSIText(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 1249
    :cond_3b
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    if-eqz v0, :cond_60

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    if-eqz v0, :cond_60

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_4c

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1252
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v0, :cond_57

    .line 1253
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Workspace$1;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    .line 1260
    :cond_57
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 1261
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1264
    :cond_60
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCylinderAnimationFactor()F

    move-result v3

    .line 1265
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->isCylinderAnimating()Z

    move-result v0

    or-int v4, v2, v0

    .line 1271
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDarkenFactor()F

    move-result v0

    .line 1272
    cmpl-float v1, v0, v9

    if-lez v1, :cond_147

    .line 1273
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1276
    const/high16 v1, 0x42ff

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 1277
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(I)V

    .line 1278
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v5, v0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    int-to-float v6, v0

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v7, v0

    iget v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {p1, v5, v6, v7, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 1280
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move v0, v1

    .line 1283
    :goto_a9
    invoke-virtual {p1, p0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClipToView(Landroid/view/View;Z)V

    .line 1284
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    .line 1285
    neg-float v1, v1

    invoke-virtual {p1, v9, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1286
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    or-int/2addr v1, v4

    .line 1288
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1291
    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 1296
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v4, :cond_de

    .line 1297
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v5

    mul-float/2addr v5, v3

    invoke-direct {p0, p1, v4, v5, v3}, Lcom/sec/android/app/twlauncher/Workspace;->drawHoverRect(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;FF)V

    .line 1298
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v1, v4

    .line 1300
    :cond_de
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v4, :cond_f9

    .line 1301
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v5

    mul-float/2addr v5, v3

    invoke-direct {p0, p1, v4, v5, v3}, Lcom/sec/android/app/twlauncher/Workspace;->drawHoverRect(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;FF)V

    .line 1302
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v1, v4

    .line 1307
    :cond_f9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    .line 1308
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v5, v5

    int-to-float v6, v4

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1309
    cmpl-float v6, v3, v9

    if-gtz v6, :cond_110

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    rem-int v4, v6, v4

    if-eqz v4, :cond_11e

    .line 1310
    :cond_110
    add-int/lit8 v4, v5, -0x1

    invoke-virtual {p0, p1, v4, v3, v10}, Lcom/sec/android/app/twlauncher/Workspace;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1311
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p0, p1, v4, v3, v10}, Lcom/sec/android/app/twlauncher/Workspace;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1313
    :cond_11e
    invoke-virtual {p0, p1, v5, v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1317
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-boolean v2, v2, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    if-eqz v2, :cond_12c

    .line 1319
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->fadeEdges(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    .line 1324
    :cond_12c
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;

    .line 1341
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v0, :cond_145

    .line 1342
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawResizeGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v0

    or-int/2addr v0, v1

    .line 1344
    :goto_13a
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1346
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageIndicator(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    or-int v2, v0, v1

    .line 1348
    goto/16 :goto_13

    :cond_145
    move v0, v1

    goto :goto_13a

    :cond_147
    move v0, v2

    goto/16 :goto_a9
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 1756
    const/16 v1, 0x11

    if-ne p2, v1, :cond_17

    .line 1757
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    if-lez v1, :cond_33

    .line 1758
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1767
    :goto_16
    return v0

    .line 1761
    :cond_17
    const/16 v1, 0x42

    if-ne p2, v1, :cond_33

    .line 1762
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_33

    .line 1763
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto :goto_16

    .line 1767
    :cond_33
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_16
.end method

.method draggingOverTouchSlop()V
    .registers 2

    .prologue
    .line 3871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    .line 3872
    return-void
.end method

.method protected drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x3f00

    const v5, 0x3a83126f

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1065
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_24

    .line 1071
    :cond_14
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1073
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_20

    .line 1074
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAtLooped(I)Landroid/view/View;

    move-result-object v1

    .line 1077
    :cond_20
    if-nez v1, :cond_2e

    move v0, v2

    .line 1153
    :goto_23
    return v0

    .line 1068
    :cond_24
    if-ltz p2, :cond_2c

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_14

    :cond_2c
    move v0, v2

    .line 1069
    goto :goto_23

    .line 1081
    :cond_2e
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1083
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1084
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Workspace;->transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;IF)V

    .line 1086
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_TILT_WORKSPACE:Z

    if-eqz v0, :cond_5a

    .line 1088
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    int-to-float v4, p2

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v0

    .line 1090
    invoke-static {v0, v7, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v0

    .line 1092
    cmpl-float v4, v0, v5

    if-lez v4, :cond_5a

    .line 1093
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageBackground(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    .line 1097
    :cond_5a
    cmpl-float v0, p3, v5

    if-lez v0, :cond_82

    .line 1099
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_TILT_WORKSPACE:Z

    if-nez v0, :cond_65

    .line 1100
    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageBackground(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    .line 1103
    :cond_65
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1104
    const/high16 v0, 0x4000

    mul-float/2addr v0, p3

    const/high16 v4, 0x40a0

    mul-float/2addr v4, p3

    const/high16 v5, 0x40a0

    mul-float/2addr v5, p3

    invoke-virtual {p1, v0, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    .line 1106
    mul-float v0, v8, p3

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    move-object v0, v1

    .line 1107
    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/CellLayout;->drawShadows(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 1108
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1111
    :cond_82
    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1112
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ne p2, v0, :cond_9e

    .line 1114
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-static {p1, v0, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 1118
    :cond_9e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCylinderAnimationFactor()F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_eb

    .line 1119
    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->setScreenClipExtendedEdge(I)V

    .line 1124
    :goto_a9
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_f1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_f1

    if-ltz p2, :cond_bc

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_f1

    .line 1126
    :cond_bc
    const v0, 0x186a0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->setScreenClipExtendedEdge(I)V

    .line 1133
    :cond_c2
    :goto_c2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDarkenFactor()F

    move-result v0

    mul-float/2addr v0, v8

    sub-float v0, v7, v0

    .line 1134
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1137
    invoke-virtual {p1, v0, v0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    .line 1140
    invoke-virtual {v1, p1, v2, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    move-result v0

    .line 1141
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1143
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollPage:I

    if-ne p2, v1, :cond_e6

    .line 1147
    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 1148
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    .line 1149
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    .line 1152
    :cond_e6
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_23

    .line 1121
    :cond_eb
    div-int/lit8 v0, v3, 0x4

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->setScreenClipExtendedEdge(I)V

    goto :goto_a9

    .line 1128
    :cond_f1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_TILT_WORKSPACE:Z

    if-eqz v0, :cond_c2

    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->currentlyOverscrollingChild(I)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 1129
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->setScreenClipExtendedEdge(I)V

    goto :goto_c2
.end method

.method public drawWallpaperImageGL(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;)V
    .registers 15
    .parameter "canvas"
    .parameter "drawDst"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    .line 1001
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, v7, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1002
    .local v1, s:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    if-eqz v1, :cond_88

    .line 1003
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCylinderAnimationFactor()F

    move-result v0

    .line 1005
    .local v0, factor:F
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1006
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    iput v11, v7, Landroid/graphics/Rect;->left:I

    .line 1007
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getWidth()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 1009
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int v4, v7, v8

    .line 1010
    .local v4, scrollXMax:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 1011
    .local v3, scrollX:I
    if-gez v3, :cond_2f

    .line 1012
    const/4 v3, 0x0

    .line 1014
    :cond_2f
    if-le v3, v4, :cond_32

    .line 1015
    move v3, v4

    .line 1018
    :cond_32
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1019
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int v5, v7, v8

    .line 1020
    .local v5, scrollableWidth:I
    const/4 v6, 0x0

    .line 1021
    .local v6, translateX:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4e

    .line 1022
    neg-int v7, v5

    int-to-float v7, v7

    int-to-float v8, v3

    int-to-float v9, v4

    div-float/2addr v8, v9

    mul-float v6, v7, v8

    .line 1024
    :cond_4e
    invoke-static {v10, v10, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v2

    .line 1026
    .local v2, scale:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1027
    invoke-virtual {p1, v2, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1028
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1030
    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1032
    invoke-virtual {p1, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 1033
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Rect;)V

    .line 1035
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1037
    .end local v0           #factor:F
    .end local v2           #scale:F
    .end local v3           #scrollX:I
    .end local v4           #scrollXMax:I
    .end local v5           #scrollableWidth:I
    .end local v6           #translateX:F
    :cond_88
    return-void
.end method

.method public estimateDropLocation(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 17
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "recycle"

    .prologue
    .line 3204
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v6

    .line 3206
    .local v6, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3207
    .local v8, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v8, :cond_22

    const/4 v3, 0x1

    .line 3208
    .local v3, spanX:I
    :goto_9
    if-nez v8, :cond_25

    const/4 v4, 0x1

    .line 3209
    .local v4, spanY:I
    :goto_c
    if-nez v8, :cond_28

    const/4 v5, 0x0

    .line 3211
    .local v5, ignoreView:Landroid/view/View;
    :goto_f
    if-eqz p5, :cond_2b

    move-object/from16 v10, p5

    .line 3214
    .local v10, location:Landroid/graphics/Rect;
    :goto_13
    sub-int v1, p1, p3

    sub-int v2, p2, p4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempCell:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v9

    .line 3217
    .local v9, dropCell:[I
    if-nez v9, :cond_31

    .line 3218
    const/4 v10, 0x0

    .line 3229
    .end local v10           #location:Landroid/graphics/Rect;
    :goto_21
    return-object v10

    .line 3207
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    .end local v5           #ignoreView:Landroid/view/View;
    .end local v9           #dropCell:[I
    :cond_22
    iget v3, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    goto :goto_9

    .line 3208
    .restart local v3       #spanX:I
    :cond_25
    iget v4, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    goto :goto_c

    .line 3209
    .restart local v4       #spanY:I
    :cond_28
    iget-object v5, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_f

    .line 3211
    .restart local v5       #ignoreView:Landroid/view/View;
    :cond_2b
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    goto :goto_13

    .line 3221
    .restart local v9       #dropCell:[I
    .restart local v10       #location:Landroid/graphics/Rect;
    :cond_31
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 3222
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 3223
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 3225
    const/4 v0, 0x0

    aget v0, v9, v0

    add-int/2addr v0, v3

    const/4 v1, 0x1

    aget v1, v9, v1

    add-int/2addr v1, v4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 3226
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 3227
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_21
.end method

.method findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .registers 5
    .parameter "occupied"

    .prologue
    const/4 v1, 0x0

    .line 776
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 777
    .local v0, group:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v0, :cond_d

    .line 778
    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v1

    .line 780
    :cond_d
    return-object v1
.end method

.method findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .registers 7

    .prologue
    .line 784
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 785
    .local v2, group:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v2, :cond_2a

    .line 786
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v0

    .line 787
    .local v0, countX:I
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v1

    .line 788
    .local v1, countY:I
    filled-new-array {v0, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    .line 789
    .local v3, occupied:[[Z
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v4, v3, v0, v1, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->findAllOccupiedCells([[ZIII)V

    .line 790
    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCellsFromOccupied([[ZII)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v4

    .line 792
    .end local v0           #countX:I
    .end local v1           #countY:I
    .end local v3           #occupied:[[Z
    :goto_29
    return-object v4

    :cond_2a
    const/4 v4, 0x0

    goto :goto_29
.end method

.method public findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;
    .registers 3

    .prologue
    .line 3372
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3373
    .local v0, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidget(Lcom/sec/android/app/twlauncher/CellLayout;)Lcom/sec/android/app/twlauncher/Search;

    move-result-object v1

    return-object v1
.end method

.method finishAppWidgetResize()V
    .registers 4

    .prologue
    .line 3875
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWidgetResizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3876
    :try_start_3
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v0, :cond_45

    .line 3877
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-static {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3879
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-eqz v0, :cond_1a

    .line 3880
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->end()V

    .line 3881
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    .line 3884
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V

    .line 3886
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    .line 3887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 3888
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    if-eqz v0, :cond_3c

    .line 3889
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    .line 3890
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    const/16 v2, 0xaa

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->removeMessages(I)V

    .line 3892
    :cond_3c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    .line 3893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    .line 3894
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 3896
    :cond_45
    monitor-exit v1

    .line 3897
    return-void

    .line 3896
    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public getAnimationGL()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 3922
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected getChildAtLooped(I)Landroid/view/View;
    .registers 4
    .parameter "index"

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1060
    .local v0, count:I
    add-int v1, v0, p1

    rem-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;
    .registers 3

    .prologue
    .line 620
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 621
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    .line 625
    .local v0, page:I
    :goto_c
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    return-object v1

    .line 623
    .end local v0           #page:I
    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .restart local v0       #page:I
    :goto_1d
    goto :goto_c

    .end local v0           #page:I
    :cond_1e
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_1d
.end method

.method getCurrentScreen()I
    .registers 3

    .prologue
    .line 605
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 606
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    .line 609
    .local v0, page:I
    :goto_10
    return v0

    .line 608
    .end local v0           #page:I
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .restart local v0       #page:I
    :goto_1b
    goto :goto_10

    .end local v0           #page:I
    :cond_1c
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_1b
.end method

.method protected getCylinderAnimationFactor()F
    .registers 4

    .prologue
    .line 1538
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->getCylinderAnimationFactor()F

    move-result v1

    .line 1540
    .local v1, superF:F
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    .line 1541
    .local v0, externalF:F
    const/high16 v2, 0x3f80

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v2

    return v2
.end method

.method public getDarkenFactor()F
    .registers 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "outRect"

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getHitRect(Landroid/graphics/Rect;)V

    .line 451
    return-void
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;
    .registers 12
    .parameter "tag"

    .prologue
    .line 3377
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 3378
    .local v7, screenCount:I
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_5
    if-ge v6, v7, :cond_40

    .line 3379
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 3380
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 3381
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_10
    if-ge v4, v1, :cond_3d

    .line 3382
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3383
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 3384
    .local v5, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getColumns()I

    move-result v9

    if-ne v8, v9, :cond_3a

    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getRows()I

    move-result v9

    if-ne v8, v9, :cond_3a

    instance-of v8, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v8, :cond_3a

    move-object v3, v0

    .line 3387
    check-cast v3, Lcom/sec/android/app/twlauncher/Folder;

    .line 3388
    .local v3, f:Lcom/sec/android/app/twlauncher/Folder;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v8

    if-ne v8, p1, :cond_3a

    .line 3394
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #f:Lcom/sec/android/app/twlauncher/Folder;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_39
    return-object v3

    .line 3381
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v4       #i:I
    .restart local v5       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 3378
    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 3394
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #i:I
    :cond_40
    const/4 v3, 0x0

    goto :goto_39
.end method

.method getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 554
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_19

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 555
    .local v4, index:I
    :goto_b
    const/4 v2, 0x0

    .line 556
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1c

    .line 557
    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 561
    :goto_15
    if-nez v2, :cond_21

    move-object v0, v6

    .line 572
    :goto_18
    return-object v0

    .line 554
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #index:I
    :cond_19
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_b

    .line 559
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v4       #index:I
    :cond_1c
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    goto :goto_15

    .line 563
    :cond_21
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 564
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_26
    if-ge v3, v1, :cond_4c

    .line 565
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 566
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 567
    .local v5, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v7, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getColumns()I

    move-result v8

    if-ne v7, v8, :cond_49

    iget v7, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getRows()I

    move-result v8

    if-ne v7, v8, :cond_49

    instance-of v7, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v7, :cond_49

    .line 569
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    goto :goto_18

    .line 564
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_4c
    move-object v0, v6

    .line 572
    goto :goto_18
.end method

.method getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;
    .registers 10
    .parameter "screen"

    .prologue
    const/4 v5, 0x0

    .line 535
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 536
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v2, :cond_9

    move-object v0, v5

    .line 547
    :goto_8
    return-object v0

    .line 538
    :cond_9
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 539
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-ge v3, v1, :cond_34

    .line 540
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 541
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 542
    .local v4, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v6, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getColumns()I

    move-result v7

    if-ne v6, v7, :cond_31

    iget v6, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getRows()I

    move-result v7

    if-ne v6, v7, :cond_31

    instance-of v6, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v6, :cond_31

    .line 544
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    goto :goto_8

    .line 539
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_34
    move-object v0, v5

    .line 547
    goto :goto_8
.end method

.method getOpenFolders()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 577
    .local v7, screens:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_a
    if-ge v6, v7, :cond_40

    .line 580
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 581
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 582
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_15
    if-ge v4, v1, :cond_3a

    .line 583
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 584
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 585
    .local v5, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getColumns()I

    move-result v9

    if-ne v8, v9, :cond_3d

    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getRows()I

    move-result v9

    if-ne v8, v9, :cond_3d

    instance-of v8, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v8, :cond_3d

    .line 588
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 582
    .restart local v0       #child:Landroid/view/View;
    .restart local v5       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 594
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_40
    return-object v3
.end method

.method getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;
    .registers 3
    .parameter "index"

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    return-object v0
.end method

.method public getScreenForView(Landroid/view/View;)I
    .registers 7
    .parameter "v"

    .prologue
    .line 3340
    const/4 v2, -0x1

    .line 3341
    .local v2, result:I
    if-eqz p1, :cond_18

    .line 3342
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 3343
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 3344
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_18

    .line 3345
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_15

    .line 3350
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_14
    return v1

    .line 3344
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_18
    move v1, v2

    .line 3350
    goto :goto_14
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 9
    .parameter "tag"

    .prologue
    .line 3398
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    .line 3399
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_5
    if-ge v4, v5, :cond_23

    .line 3400
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 3401
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 3402
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v1, :cond_20

    .line 3403
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3404
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_1d

    .line 3409
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    :goto_1c
    return-object v0

    .line 3402
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v3       #i:I
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3399
    .end local v0           #child:Landroid/view/View;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3409
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    :cond_23
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method initAddWidget()V
    .registers 2

    .prologue
    .line 1632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 1633
    return-void
.end method

.method public invalidateIMSICache()V
    .registers 2

    .prologue
    .line 1551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMSISurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1552
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 1553
    return-void
.end method

.method protected isCylinderAnimating()Z
    .registers 2

    .prologue
    .line 1546
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->isCylinderAnimating()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method moveToDefaultScreen()V
    .registers 4

    .prologue
    .line 3581
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 3583
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    .line 3587
    :goto_c
    return-void

    .line 3584
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    .line 3585
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_c
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 3930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    .line 3931
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    .line 3932
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 3936
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 3926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    .line 3927
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 2893
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2896
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    .line 2897
    iput p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    .line 2903
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 2973
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2974
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2975
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    .line 2976
    .local v0, page:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    .line 2977
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 2979
    .end local v0           #page:I
    :cond_19
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 15
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 2913
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    sub-int/2addr v0, p2

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    sub-int/2addr v2, p3

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x402e

    cmpl-double v0, v0, v2

    if-lez v0, :cond_25

    .line 2914
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    .line 2915
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    .line 2916
    iput p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    .line 2919
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v6

    .line 2920
    .local v6, cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v6, :cond_4a

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_4a

    .line 2921
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverScratchRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropLocation(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 2922
    .local v7, r:Landroid/graphics/Rect;
    if-eqz v7, :cond_4a

    .line 2923
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getTop()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2924
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->setDropLocationFeedback(Landroid/graphics/Rect;)V

    .line 2928
    .end local v7           #r:Landroid/graphics/Rect;
    :cond_4a
    invoke-super {p0, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->setPageOnDragOver(II)V

    .line 2929
    return-void
.end method

.method public onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 8
    .parameter "v"
    .parameter "newSource"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 2730
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2733
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/Workspace;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 2735
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2736
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2737
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 2740
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v5

    .line 2741
    if-eq p1, p0, :cond_30

    .line 2742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    .line 2743
    sub-int v2, p2, p4

    sub-int v3, p3, p5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V

    .line 2806
    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    .line 2746
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_2e

    .line 2748
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2749
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_e0

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 2751
    :goto_42
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    if-eq v4, v0, :cond_c1

    .line 2752
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 2753
    invoke-virtual {v0, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2756
    if-eqz v11, :cond_be

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_be

    .line 2757
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrop()  both cell and cell parent are NULL : originalCellLayout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " screen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v2, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cell.getParent()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b5

    .line 2762
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 2763
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrop() cell screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_b5
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2768
    :cond_be
    invoke-virtual {v5, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;)V

    .line 2771
    :cond_c1
    if-eqz v11, :cond_11c

    .line 2772
    sub-int v7, p2, p4

    sub-int v8, p3, p5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v10, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v6, p0

    move-object v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 2774
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-nez v0, :cond_e4

    .line 2775
    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2749
    :cond_e0
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto/16 :goto_42

    .line 2776
    :cond_e4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    invoke-virtual {v5, v11, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 2778
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 2779
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 2780
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v2, -0x64

    iget v5, v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v6, v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 2783
    instance-of v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v0, :cond_112

    .line 2784
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2788
    :cond_112
    instance-of v0, v11, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-eqz v0, :cond_11c

    .line 2789
    check-cast v11, Lcom/sec/android/app/twlauncher/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setIsDragging(Z)V

    .line 2793
    :cond_11c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 2794
    if-eqz v0, :cond_125

    .line 2795
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    :cond_125
    move-object/from16 v0, p6

    .line 2798
    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->isLauncherAppWidgetInfo()Z

    move-result v0

    if-eqz v0, :cond_14c

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    if-nez v0, :cond_14c

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isShown()Z

    move-result v0

    if-nez v0, :cond_14c

    .line 2801
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->ResizeWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    .line 2803
    :cond_14c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    goto/16 :goto_2e
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3252
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3253
    instance-of v0, p7, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-nez v0, :cond_12

    .line 3254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DragController.startDrag()\'s dragInfo argument should have been LauncherDragInfo instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3257
    :cond_12
    check-cast p7, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .line 3258
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->disableRollNavigation()V

    .line 3261
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 3262
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3263
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-eqz v0, :cond_3b

    .line 3269
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setIsDragging(Z)V

    .line 3271
    :cond_3b
    if-eqz p6, :cond_6d

    .line 3272
    if-eq p1, p0, :cond_65

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_65

    .line 3273
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v1

    .line 3274
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 3275
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 3277
    invoke-virtual {p7}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->shouldDelayRemovingFromSourceWhenDrop()Z

    move-result v3

    if-nez v3, :cond_69

    .line 3279
    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 3280
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3294
    :cond_65
    :goto_65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3295
    return-void

    .line 3284
    :cond_69
    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_65

    .line 3288
    :cond_6d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_65

    .line 3289
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3290
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_65
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 1793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 1797
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    if-eqz v2, :cond_24

    .line 1798
    :cond_11
    if-eq v1, v0, :cond_16

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 1800
    :cond_16
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 1802
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_23

    .line 1803
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1804
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1989
    :cond_23
    :goto_23
    return v0

    .line 1810
    :cond_24
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1815
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1818
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v2

    .line 1819
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 1820
    iget v4, v2, Landroid/graphics/PointF;->y:F

    .line 1821
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1823
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_52

    .line 1824
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1827
    :cond_52
    packed-switch v1, :pswitch_data_1e6

    .line 1988
    :cond_55
    :goto_55
    :pswitch_55
    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    move v0, v5

    .line 1989
    goto :goto_23

    .line 1830
    :pswitch_5a
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v1, :cond_63

    .line 1831
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    move v5, v0

    .line 1832
    goto :goto_55

    .line 1834
    :cond_63
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    if-eqz v1, :cond_c0

    .line 1835
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v1, :cond_76

    .line 1836
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1840
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1841
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    .line 1843
    :cond_76
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1844
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    .line 1846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v9, :cond_55

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v1

    if-gez v1, :cond_55

    .line 1850
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float v1, v4, v1

    float-to-int v1, v1

    .line 1851
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float v2, v3, v2

    float-to-int v2, v2

    .line 1852
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    sub-int v1, v3, v1

    .line 1854
    const/16 v2, 0x2710

    if-le v1, v2, :cond_55

    .line 1855
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 1856
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1857
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    move v5, v0

    .line 1858
    goto :goto_55

    .line 1863
    :cond_c0
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v3, v1

    .line 1864
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v4, v1

    .line 1866
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-le v3, v1, :cond_f8

    move v1, v0

    .line 1867
    :goto_d7
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-le v4, v2, :cond_fa

    move v2, v0

    .line 1869
    :goto_dc
    if-nez v1, :cond_e0

    if-eqz v2, :cond_55

    .line 1871
    :cond_e0
    iput v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1872
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v1, :cond_f1

    .line 1873
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1877
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1878
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    .line 1880
    :cond_f1
    if-lt v3, v4, :cond_fc

    .line 1882
    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move v5, v0

    .line 1883
    goto/16 :goto_55

    :cond_f8
    move v1, v5

    .line 1866
    goto :goto_d7

    :cond_fa
    move v2, v5

    .line 1867
    goto :goto_dc

    .line 1885
    :cond_fc
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v1

    if-nez v1, :cond_55

    float-to-int v1, v7

    float-to-int v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v1

    if-eq v1, v10, :cond_55

    .line 1888
    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move v5, v0

    .line 1889
    goto/16 :goto_55

    .line 1899
    :pswitch_115
    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 1900
    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    .line 1901
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1902
    iput v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    .line 1903
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 1904
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1910
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_145

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-nez v1, :cond_145

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v1

    if-nez v1, :cond_145

    float-to-int v1, v7

    float-to-int v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v1

    if-eq v1, v10, :cond_148

    .line 1913
    :cond_145
    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move v5, v0

    .line 1916
    :cond_148
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v1, :cond_1e2

    .line 1917
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    .line 1920
    :goto_14f
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1df

    .line 1921
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1922
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move v5, v0

    goto/16 :goto_55

    .line 1932
    :pswitch_161
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-nez v0, :cond_18f

    .line 1935
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getOpenedWidgetsCount()I

    move-result v0

    if-lez v0, :cond_176

    .line 1936
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 1940
    :cond_176
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 1941
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_18f

    .line 1942
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.wallpaper.tap"

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1946
    :cond_18f
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v0, :cond_196

    .line 1947
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    .line 1950
    :cond_196
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1951
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1952
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_55

    .line 1956
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1957
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_55

    .line 1962
    :pswitch_1a9
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 1963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v9, :cond_55

    .line 1964
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float v1, v4, v1

    float-to-int v1, v1

    .line 1965
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    sub-float v0, v3, v0

    float-to-int v0, v0

    .line 1967
    mul-int/2addr v1, v1

    mul-int/2addr v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    .line 1969
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_55

    .line 1970
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1974
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1975
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_55

    .line 1981
    :pswitch_1d5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v9, :cond_55

    .line 1982
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    goto/16 :goto_55

    :cond_1df
    move v5, v0

    goto/16 :goto_55

    :cond_1e2
    move v0, v5

    goto/16 :goto_14f

    .line 1827
    nop

    :pswitch_data_1e6
    .packed-switch 0x0
        :pswitch_115
        :pswitch_161
        :pswitch_5a
        :pswitch_161
        :pswitch_55
        :pswitch_1a9
        :pswitch_1d5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1704
    const/4 v1, 0x0

    .line 1705
    .local v1, childLeft:I
    const/4 v2, 0x0

    .line 1707
    .local v2, childTop:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    .line 1708
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_7
    if-ge v5, v4, :cond_26

    .line 1709
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1710
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_23

    .line 1711
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1712
    .local v3, childWidth:I
    add-int v6, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1713
    add-int/2addr v1, v3

    .line 1708
    .end local v3           #childWidth:I
    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1716
    .end local v0           #child:Landroid/view/View;
    :cond_26
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v6, :cond_31

    .line 1717
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    sub-int v7, p4, p2

    invoke-virtual {v6, v4, v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->setLayout(II)V

    .line 1718
    :cond_31
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v1, 0x0

    .line 1662
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->onMeasure(II)V

    .line 1664
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1665
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1667
    if-eq v0, v6, :cond_3b

    .line 1668
    :try_start_10
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_18} :catch_18

    .line 1670
    :catch_18
    move-exception v3

    .line 1671
    const-string v3, "LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widthMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", width = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_3b
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1676
    if-eq v0, v6, :cond_62

    .line 1677
    :try_start_41
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_49
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_49} :catch_49

    .line 1679
    :catch_49
    move-exception v3

    .line 1680
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "heightMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_62
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    move v0, v1

    .line 1685
    :goto_67
    if-ge v0, v3, :cond_73

    .line 1686
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 1685
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 1689
    :cond_73
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    if-eqz v0, :cond_a0

    .line 1690
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-nez v0, :cond_9c

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_9c

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_9c

    .line 1692
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 1693
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 1694
    add-int/lit8 v0, v3, -0x1

    mul-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 1697
    :cond_9c
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    .line 1698
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    .line 1700
    :cond_a0
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .registers 4
    .parameter "view"
    .parameter "dragAction"

    .prologue
    .line 598
    if-nez p2, :cond_6

    .line 599
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 601
    :cond_6
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1735
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-nez v3, :cond_27

    .line 1736
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    .line 1737
    .local v2, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v2, :cond_17

    .line 1738
    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    .line 1751
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :goto_16
    return v3

    .line 1741
    .restart local v2       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_17
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 1742
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 1746
    .local v1, focusableScreen:I
    :goto_1e
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1747
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_27

    .line 1748
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 1751
    .end local v0           #child:Landroid/view/View;
    .end local v1           #focusableScreen:I
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_27
    const/4 v3, 0x0

    goto :goto_16

    .line 1744
    .restart local v2       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_29
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .restart local v1       #focusableScreen:I
    goto :goto_1e
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 2618
    move-object v1, p1

    check-cast v1, Landroid/view/AbsSavedState;

    invoke-virtual {v1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/sec/android/app/twlauncher/Scene;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2619
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    if-nez v1, :cond_f

    .line 2628
    :cond_e
    :goto_e
    return-void

    :cond_f
    move-object v0, p1

    .line 2623
    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    .line 2624
    .local v0, savedState:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v1, v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    if-nez v1, :cond_e

    .line 2625
    iget v1, v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 2626
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    goto :goto_e
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 2611
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2612
    .local v0, state:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    .line 2613
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 9
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 456
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSizeChanged( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getWidth() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getHeight() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 460
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    .line 461
    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    .line 462
    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    .line 463
    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectWidth:I

    .line 464
    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectHeight:I

    .line 466
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_a9

    .line 467
    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectLeft:I

    .line 468
    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectTop:I

    .line 474
    :goto_a5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Scene;->onSizeChanged(IIII)V

    .line 475
    return-void

    .line 470
    :cond_a9
    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectLeft:I

    .line 471
    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIRectTop:I

    goto :goto_a5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 26
    .parameter "ev"

    .prologue
    .line 1994
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1998
    .local v5, action:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    move/from16 v20, v0

    if-eqz v20, :cond_44

    .line 1999
    :cond_14
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_20

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v5, v0, :cond_41

    .line 2001
    :cond_20
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_41

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 2005
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2008
    :cond_41
    const/16 v20, 0x1

    .line 2237
    :goto_43
    return v20

    .line 2010
    :cond_44
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    move/from16 v20, v0

    if-eqz v20, :cond_51

    .line 2011
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    move-result v20

    goto :goto_43

    .line 2013
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_63

    .line 2014
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2017
    :cond_63
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 2018
    .local v16, transX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    .line 2021
    .local v17, transY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v10

    .line 2022
    .local v10, lastAbsTouch:Landroid/graphics/PointF;
    iget v3, v10, Landroid/graphics/PointF;->x:F

    .line 2023
    .local v3, absX:F
    iget v4, v10, Landroid/graphics/PointF;->y:F

    .line 2024
    .local v4, absY:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_97

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2030
    :cond_97
    packed-switch v5, :pswitch_data_5ae

    .line 2237
    :cond_9a
    :goto_9a
    const/16 v20, 0x1

    goto :goto_43

    .line 2033
    :pswitch_9d
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 2034
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    .line 2049
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v20, v0

    if-nez v20, :cond_cd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-eqz v20, :cond_cd

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    goto :goto_9a

    .line 2052
    :cond_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v20

    if-eqz v20, :cond_e1

    .line 2053
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 2054
    :cond_e1
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9a

    .line 2055
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    goto/16 :goto_9a

    .line 2062
    :pswitch_122
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a4

    .line 2063
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v20, v0

    if-eqz v20, :cond_142

    .line 2064
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    goto/16 :goto_9a

    .line 2068
    :cond_142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    move/from16 v20, v0

    sub-float v20, v20, v3

    move/from16 v0, v20

    float-to-int v8, v0

    .line 2069
    .local v8, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    move/from16 v20, v0

    sub-float v20, v20, v4

    move/from16 v0, v20

    float-to-int v9, v0

    .line 2071
    .local v9, deltaY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_180

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_180

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_9a

    .line 2075
    :cond_180
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->suspendWidgetUpdates()V

    .line 2077
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 2078
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1f8

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v20

    if-nez v20, :cond_1c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v20

    if-eqz v20, :cond_1f8

    .line 2083
    :cond_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    float-to-int v0, v3

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/sec/android/app/twlauncher/PageIndicator;->getTouchScrollOffset(IIZ)I

    move-result v15

    .line 2084
    .local v15, newScrollX:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_1f8

    .line 2085
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->setFastScrollFactor()V

    .line 2086
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v20

    if-nez v20, :cond_9a

    .line 2088
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_9a

    .line 2096
    .end local v15           #newScrollX:I
    :cond_1f8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v20, v0

    if-eqz v20, :cond_243

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_243

    .line 2097
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v12

    .line 2102
    .local v12, minMaxScrollPadding:I
    :goto_210
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    .line 2103
    .local v6, childCount:I
    if-gez v8, :cond_264

    .line 2104
    neg-int v13, v12

    .line 2105
    .local v13, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v13, :cond_9a

    .line 2106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v20, v0

    if-lez v20, :cond_24a

    .line 2107
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 2111
    :goto_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v20

    if-nez v20, :cond_9a

    .line 2112
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_9a

    .line 2099
    .end local v6           #childCount:I
    .end local v12           #minMaxScrollPadding:I
    .end local v13           #minScrollX:I
    :cond_243
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v20

    div-int/lit8 v12, v20, 0x4

    .restart local v12       #minMaxScrollPadding:I
    goto :goto_210

    .line 2109
    .restart local v6       #childCount:I
    .restart local v13       #minScrollX:I
    :cond_24a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    goto :goto_232

    .line 2115
    .end local v13           #minScrollX:I
    :cond_264
    if-lez v8, :cond_9a

    .line 2116
    add-int/lit8 v20, v6, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v21

    mul-int v20, v20, v21

    add-int v11, v20, v12

    .line 2117
    .local v11, maxScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v11, :cond_9a

    .line 2118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v20

    if-nez v20, :cond_9a

    .line 2120
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_9a

    .line 2125
    .end local v6           #childCount:I
    .end local v8           #deltaX:I
    .end local v9           #deltaY:I
    .end local v11           #maxScrollX:I
    .end local v12           #minMaxScrollPadding:I
    :cond_2a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9a

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v20

    if-nez v20, :cond_2f1

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v20

    if-nez v20, :cond_9a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v20

    if-nez v20, :cond_9a

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    goto/16 :goto_9a

    .line 2132
    :cond_2f1
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    goto/16 :goto_9a

    .line 2148
    :pswitch_2fb
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_385

    .line 2149
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_475

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v20

    if-eqz v20, :cond_3ae

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3ae

    .line 2151
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    move/from16 v20, v0

    if-nez v20, :cond_37d

    .line 2152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2153
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 2154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-eqz v20, :cond_357

    .line 2155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 2156
    :cond_357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2158
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 2176
    :cond_37d
    :goto_37d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 2226
    :cond_385
    :goto_385
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->resumeWidgetUpdates()V

    .line 2227
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 2228
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9a

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 2233
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_9a

    .line 2160
    :cond_3ae
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3f2

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3f2

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto :goto_37d

    .line 2163
    :cond_3f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v20

    if-eqz v20, :cond_37d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-nez v20, :cond_37d

    .line 2164
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    move/from16 v20, v0

    if-eqz v20, :cond_423

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddWidget(I)V

    goto/16 :goto_37d

    .line 2167
    :cond_423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2168
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-eqz v20, :cond_44d

    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 2171
    :cond_44d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2173
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    goto/16 :goto_37d

    .line 2177
    :cond_475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v20

    if-eqz v20, :cond_4a2

    .line 2178
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v14

    .line 2179
    .local v14, newScreen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    .line 2181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_385

    .line 2184
    .end local v14           #newScreen:I
    :cond_4a2
    const/16 v20, 0x1

    const/16 v21, 0x3e8

    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/twlauncher/SamsungUtils;->acquireDVFSlock(II)V

    .line 2187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 2191
    .local v18, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mMaximumVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    .line 2192
    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 2195
    .local v19, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    .line 2196
    .restart local v6       #childCount:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 2198
    .local v7, currentScreen:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    move/from16 v20, v0

    if-nez v20, :cond_546

    .line 2199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_50b

    if-lez v7, :cond_50b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-nez v20, :cond_50b

    .line 2202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    add-int/lit8 v21, v7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_385

    .line 2203
    :cond_50b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_541

    add-int/lit8 v20, v6, -0x1

    move/from16 v0, v20

    if-ge v7, v0, :cond_541

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-nez v20, :cond_541

    .line 2206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    add-int/lit8 v21, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_385

    .line 2208
    :cond_541
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToDestination()V

    goto/16 :goto_385

    .line 2211
    :cond_546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_573

    if-ltz v7, :cond_573

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-nez v20, :cond_573

    .line 2214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    add-int/lit8 v21, v7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_385

    .line 2215
    :cond_573
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5a9

    add-int/lit8 v20, v6, -0x1

    move/from16 v0, v20

    if-gt v7, v0, :cond_5a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-nez v20, :cond_5a9

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    add-int/lit8 v21, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_385

    .line 2220
    :cond_5a9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToDestination()V

    goto/16 :goto_385

    .line 2030
    :pswitch_data_5ae
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_2fb
        :pswitch_122
        :pswitch_2fb
    .end packed-switch
.end method

.method public onTouchResizeMode(Landroid/view/MotionEvent;)Z
    .registers 26
    .parameter "event"

    .prologue
    .line 2241
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v22, v0

    .line 2242
    .local v22, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v23, v0

    .line 2244
    .local v23, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_2c6

    .line 2378
    :cond_15
    :goto_15
    const/4 v3, 0x0

    :goto_16
    return v3

    .line 2247
    :pswitch_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    .line 2249
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    .line 2250
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 2251
    .local v17, pxy:[I
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 2253
    .local v18, rectMeasure:[I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v5, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 2257
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v5, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 2259
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x1

    aget v5, v17, v5

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v7, 0x0

    aget v7, v18, v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v17, v7

    const/4 v8, 0x1

    aget v8, v18, v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentWidgetRect:Landroid/graphics/Rect;

    .line 2261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->startFitting()V

    .line 2265
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 2267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-static {v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto/16 :goto_15

    .line 2271
    .end local v17           #pxy:[I
    .end local v18           #rectMeasure:[I
    :pswitch_99
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->checkResizeHandleRectTouchedDown(II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    .line 2276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_b9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    if-eqz v3, :cond_b9

    .line 2278
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 2279
    const/4 v3, 0x1

    goto/16 :goto_16

    .line 2281
    :cond_b9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    .line 2282
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    .line 2283
    const/4 v3, 0x1

    goto/16 :goto_16

    .line 2287
    :pswitch_c4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    if-eqz v3, :cond_15

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2290
    .local v13, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move/from16 v0, v22

    if-ge v0, v3, :cond_fd

    .line 2293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2295
    :cond_fd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move/from16 v0, v22

    if-ge v3, v0, :cond_10f

    .line 2296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v22, 0x1e

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2298
    :cond_10f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_125

    .line 2300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2302
    :cond_125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v23

    if-ge v3, v0, :cond_137

    .line 2303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v23, 0x28

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2306
    :cond_137
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    .line 2308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v13, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCellRound(II)[I

    move-result-object v20

    .line 2310
    .local v20, tmpXy:[I
    new-instance v16, Lcom/sec/android/app/twlauncher/MultipleSize;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-wide v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 2311
    .local v16, multipleSize:Lcom/sec/android/app/twlauncher/MultipleSize;
    const/4 v3, 0x0

    aget v3, v20, v3

    const/4 v4, 0x1

    aget v4, v20, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->getBestFit(II)[I

    move-result-object v9

    .line 2313
    .local v9, bestFitXy:[I
    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    const/4 v6, 0x0

    aget v6, v9, v6

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v7, 0x1

    aget v7, v9, v7

    add-int/2addr v6, v7

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2318
    .local v19, resizedCell:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_1be

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_1be

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    const/4 v4, 0x0

    aget v4, v9, v4

    if-ne v3, v4, :cond_1be

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    const/4 v4, 0x1

    aget v4, v9, v4

    if-eq v3, v4, :cond_2ba

    .line 2326
    :cond_1be
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v13, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v10

    .line 2328
    .local v10, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-object v14, v10, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 2329
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;>;"
    const/4 v11, 0x0

    .line 2330
    .local v11, found:Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_1d0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1fb

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    .line 2331
    .local v15, listItem:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    iget v3, v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_1d0

    iget v3, v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_1d0

    iget v3, v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    const/4 v4, 0x0

    aget v4, v9, v4

    if-ne v3, v4, :cond_1d0

    iget v3, v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    const/4 v4, 0x1

    aget v4, v9, v4

    if-ne v3, v4, :cond_1d0

    .line 2335
    const/4 v11, 0x1

    .line 2339
    .end local v15           #listItem:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    :cond_1fb
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 2341
    if-eqz v11, :cond_2c0

    .line 2342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v21

    .line 2345
    .local v21, widgetManager:Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 2346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 2348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    const/4 v4, 0x0

    aget v4, v9, v4

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 2349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    const/4 v4, 0x1

    aget v4, v9, v4

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 2352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v4, 0x0

    aget v4, v9, v4

    const/4 v5, 0x1

    aget v5, v9, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v6, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v7, v7, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 2356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/Workspace;->removeInScreen(Landroid/view/View;I)V

    .line 2357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v4, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v6, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v7, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v8, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 2362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v8, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    aput v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v8, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    aput v8, v6, v7

    invoke-virtual {v13, v4, v5, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->cellsToPixelRect(II[I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2372
    .end local v10           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v11           #found:Z
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;>;"
    .end local v21           #widgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_2ba
    :goto_2ba
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 2373
    const/4 v3, 0x1

    goto/16 :goto_16

    .line 2368
    .restart local v10       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v11       #found:Z
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;>;"
    :cond_2c0
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    goto :goto_2ba

    .line 2244
    :pswitch_data_2c6
    .packed-switch 0x0
        :pswitch_99
        :pswitch_17
        :pswitch_c4
        :pswitch_17
    .end packed-switch
.end method

.method public onWidgetUpdated(Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;)V
    .registers 6
    .parameter

    .prologue
    .line 3858
    invoke-interface {p1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;->getCustomCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3859
    if-nez v0, :cond_1f

    .line 3860
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWidgetUpdated: no cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    :goto_1e
    return-void

    .line 3864
    :cond_1f
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-nez v1, :cond_30

    .line 3865
    new-instance v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    .line 3867
    :cond_30
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->flipTo(Landroid/graphics/Bitmap;)V

    goto :goto_1e
.end method

.method protected panStart(I)V
    .registers 3
    .parameter "nextScreen"

    .prologue
    .line 3334
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 3335
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 3336
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->panStart(I)V

    .line 3337
    return-void
.end method

.method pauseScreen(I)V
    .registers 9
    .parameter "which"

    .prologue
    .line 3590
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3591
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_7

    .line 3602
    :cond_6
    return-void

    .line 3593
    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 3594
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_6

    .line 3595
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3596
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 3597
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_27

    .line 3598
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 3594
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method removeInScreen(Landroid/view/View;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 765
    if-ltz p2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_25

    .line 766
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The screen must be >= 0 and < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 769
    if-eqz v0, :cond_30

    .line 770
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 773
    :cond_30
    return-void
.end method

.method removePackage(Ljava/lang/String;)V
    .registers 16
    .parameter

    .prologue
    .line 3446
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3447
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v6

    .line 3448
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 3450
    const/4 v0, 0x0

    move v4, v0

    :goto_f
    if-ge v4, v7, :cond_e1

    .line 3451
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v8

    .line 3452
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v9

    .line 3454
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3456
    const/4 v0, 0x0

    move v3, v0

    :goto_1e
    if-ge v3, v9, :cond_bf

    .line 3457
    invoke-virtual {v8, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3458
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 3459
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_6d

    .line 3460
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 3461
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v10

    .line 3463
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_39
    if-ltz v2, :cond_a0

    .line 3464
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3465
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 3466
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 3468
    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_69

    if-eqz v12, :cond_69

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_69

    .line 3470
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    .line 3471
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v11, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3463
    :cond_69
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_39

    .line 3475
    :cond_6d
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v2, :cond_a5

    .line 3476
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3482
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 3483
    if-eqz v2, :cond_a0

    .line 3484
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 3486
    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    if-eqz v10, :cond_a0

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 3488
    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3489
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3490
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3456
    :cond_a0
    :goto_a0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1e

    .line 3494
    :cond_a5
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v2, :cond_a0

    .line 3495
    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 3496
    iget-object v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 3497
    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    .line 3498
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3499
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 3504
    :cond_bf
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3505
    const/4 v0, 0x0

    move v1, v0

    :goto_c5
    if-ge v1, v2, :cond_d4

    .line 3506
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v8, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3505
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c5

    .line 3509
    :cond_d4
    if-lez v2, :cond_dc

    .line 3510
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->requestLayout()V

    .line 3511
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 3450
    :cond_dc
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_f

    .line 3514
    :cond_e1
    return-void
.end method

.method public reqExtEndDrag()Z
    .registers 3

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2605
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDragWoDragFactor()Z

    move-result v0

    return v0
.end method

.method public reqExtEndDragWoDragFactor()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2595
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->disableRollNavigation()V

    .line 2596
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2598
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2599
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2600
    const/4 v0, 0x1

    return v0
.end method

.method public reqExtStartDrag(Landroid/view/View;)Z
    .registers 5
    .parameter "aView"

    .prologue
    const/4 v2, 0x1

    .line 2566
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2567
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iput-object p1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2568
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iput v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 2569
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iput v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 2570
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2571
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2572
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2573
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2574
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    .line 2575
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->enableRollNavigation()V

    .line 2576
    return v2
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1722
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1723
    .local v0, screen:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1724
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1726
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1728
    :cond_1d
    const/4 v1, 0x1

    .line 1730
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method resume(I)V
    .registers 6
    .parameter "which"

    .prologue
    .line 3620
    move v0, p1

    .line 3621
    .local v0, screen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    .line 3622
    .local v1, width:I
    if-eqz v1, :cond_20

    if-ltz v0, :cond_20

    .line 3623
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3624
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 3625
    :cond_1a
    mul-int v2, v0, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 3627
    :cond_20
    return-void
.end method

.method resumeScreen(I)V
    .registers 9
    .parameter "which"

    .prologue
    .line 3605
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3606
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_7

    .line 3617
    :cond_6
    return-void

    .line 3608
    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 3609
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_6

    .line 3610
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3611
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 3612
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_27

    .line 3613
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 3609
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public resumeWidgetUpdates()V
    .registers 3

    .prologue
    .line 876
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 877
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->resumeUpdates()V

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 879
    :cond_13
    return-void
.end method

.method public scrollLeft()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 3299
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_1f

    .line 3300
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ltz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3301
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 3311
    :cond_1e
    :goto_1e
    return-void

    .line 3306
    :cond_1f
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3307
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto :goto_1e
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 3315
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v0, :cond_25

    .line 3316
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-ne v0, v1, :cond_24

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_24

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_24

    .line 3318
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 3329
    :cond_24
    :goto_24
    return-void

    .line 3323
    :cond_25
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-ne v0, v1, :cond_24

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_24

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_24

    .line 3325
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto :goto_24
.end method

.method public setAllowLongPress(Z)V
    .registers 2
    .parameter "allowLongPress"

    .prologue
    .line 3442
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 3443
    return-void
.end method

.method setAutoScrollScreen(I)V
    .registers 5
    .parameter "screen"

    .prologue
    .line 3663
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 3664
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 3665
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 3667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 3668
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3669
    return-void
.end method

.method setCurrentScreen(I)V
    .registers 5
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 640
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 641
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 642
    return-void
.end method

.method public setDropLocationFeedback(Landroid/graphics/Rect;)V
    .registers 12
    .parameter "location"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2932
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8c

    .line 2933
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2934
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2936
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 2937
    .local v4, temp:Lcom/sec/android/app/twlauncher/ScalarAnimator;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 2938
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 2939
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v8, v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FF)V

    .line 2940
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2942
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eqz v6, :cond_8c

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_48

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_8c

    .line 2945
    :cond_48
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2946
    .local v3, padding:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2947
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int v5, v6, v7

    .line 2948
    .local v5, widthPadding:I
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int v2, v6, v7

    .line 2949
    .local v2, heightPadding:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2951
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2952
    .local v1, c:Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2953
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2954
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 2957
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #heightPadding:I
    .end local v3           #padding:Landroid/graphics/Rect;
    .end local v4           #temp:Lcom/sec/android/app/twlauncher/ScalarAnimator;
    .end local v5           #widthPadding:I
    :cond_8c
    return-void
.end method

.method public setExternalBottomOffset(F)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 850
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 851
    return-void
.end method

.method public setExternalZoomFactor(F)V
    .registers 3
    .parameter "factor"

    .prologue
    .line 854
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 863
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 479
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 480
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 810
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 811
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 812
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 813
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 812
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 815
    :cond_13
    return-void
.end method

.method setShowIndicator()V
    .registers 2

    .prologue
    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 646
    return-void
.end method

.method protected snapToScreen(Landroid/view/animation/Interpolator;II)V
    .registers 13
    .parameter "interpolator"
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 2469
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2470
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v5, :cond_f

    .line 2471
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 2474
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 2475
    .local v1, childCount:I
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v5, :cond_78

    if-lt v1, v7, :cond_78

    .line 2476
    const/4 v5, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2481
    :goto_22
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-eq p2, v5, :cond_27

    move v0, v4

    .line 2482
    .local v0, changingScreens:Z
    :cond_27
    if-eqz v0, :cond_2e

    .line 2483
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 2486
    :cond_2e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2487
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_41

    if-eqz v0, :cond_41

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v2, v5, :cond_41

    .line 2488
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2491
    :cond_41
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v5

    mul-int v3, p2, v5

    .line 2493
    .local v3, newX:I
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->LAUNCHER_LOOP_WORKSPACE:Z

    if-eqz v5, :cond_5b

    if-lt v1, v7, :cond_5b

    .line 2494
    if-gez p2, :cond_83

    .line 2495
    add-int/lit8 p2, v1, -0x1

    .line 2496
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    .line 2497
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 2498
    iput v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    .line 2507
    :cond_5b
    :goto_5b
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 2509
    if-gez p3, :cond_61

    .line 2510
    iget p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    .line 2512
    :cond_61
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2513
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v5, v5

    int-to-float v6, v3

    int-to-long v7, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 2514
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    .line 2517
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 2519
    return-void

    .line 2478
    .end local v0           #changingScreens:Z
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #newX:I
    :cond_78
    add-int/lit8 v5, v1, -0x1

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_22

    .line 2499
    .restart local v0       #changingScreens:Z
    .restart local v2       #focusedChild:Landroid/view/View;
    .restart local v3       #newX:I
    :cond_83
    if-lt p2, v1, :cond_5b

    .line 2500
    const/4 p2, 0x0

    .line 2501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mSnaptoScreenStartTime:J

    .line 2502
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsWallpaperLooping:Z

    .line 2503
    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperLooingState:I

    goto :goto_5b
.end method

.method startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .registers 9
    .parameter "cellInfo"

    .prologue
    const/4 v6, 0x0

    .line 2522
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2524
    .local v0, child:Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2530
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_13

    instance-of v3, v0, Lcom/sec/android/app/twlauncher/Search;

    if-nez v3, :cond_13

    .line 2563
    :cond_12
    :goto_12
    return-void

    .line 2534
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;

    if-eqz v3, :cond_12

    .line 2538
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 2540
    .local v2, ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v3, :cond_39

    .line 2541
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v2

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2545
    :cond_39
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2547
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2548
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v4, v3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2550
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v1

    .line 2552
    .local v1, current:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 2553
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v3, :cond_6a

    .line 2554
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;Z)V

    invoke-interface {v3, v0, p0, v4, v6}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 2560
    :goto_5c
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2561
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    .line 2562
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->enableRollNavigation()V

    goto :goto_12

    .line 2557
    :cond_6a
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v4, v2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-interface {v3, v0, p0, v4, v6}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    goto :goto_5c
.end method

.method stopAutoScrollRunnable()V
    .registers 2

    .prologue
    .line 3701
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 3703
    return-void
.end method

.method public suspendWidgetUpdates()V
    .registers 3

    .prologue
    .line 871
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 872
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->suspendUpdates()V

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 874
    :cond_13
    return-void
.end method

.method public unlock()V
    .registers 2

    .prologue
    .line 3418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    .line 3419
    return-void
.end method

.method public updateDragInfo(II)V
    .registers 10
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 2586
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    int-to-float v0, p1

    float-to-double v2, v0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v0

    int-to-float v0, v0

    float-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 2589
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    int-to-float v0, p2

    float-to-double v2, v0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v0

    int-to-float v0, v0

    float-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 2591
    return-void
.end method

.method updateShortcutsForPackage(Ljava/lang/String;)V
    .registers 13
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3538
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    move v4, v3

    .line 3539
    :goto_6
    if-ge v4, v5, :cond_7f

    .line 3540
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v6

    .line 3541
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v7

    move v2, v3

    .line 3542
    :goto_11
    if-ge v2, v7, :cond_7b

    .line 3543
    invoke-virtual {v6, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3544
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 3545
    instance-of v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v8, :cond_29

    if-eqz v0, :cond_29

    .line 3546
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3552
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 3553
    if-nez v8, :cond_2d

    .line 3542
    :cond_29
    :goto_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 3556
    :cond_2d
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 3557
    iget v10, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-nez v10, :cond_29

    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    if-eqz v9, :cond_29

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 3561
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3563
    if-eqz v8, :cond_29

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v8, v9, :cond_29

    .line 3564
    iget-object v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3565
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 3566
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 3567
    check-cast v1, Lcom/sec/android/app/twlauncher/BubbleTextView;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_29

    .line 3539
    :cond_7b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    .line 3573
    :cond_7f
    return-void
.end method

.method updateWallpaperOffset()V
    .registers 3

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 819
    return-void
.end method
