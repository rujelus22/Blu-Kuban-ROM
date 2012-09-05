.class public Lcom/sec/android/app/twlauncher/MenuManager;
.super Lcom/sec/android/app/twlauncher/Scene;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/sec/android/app/twlauncher/DragController$DragListener;
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/MenuManager$9;,
        Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;,
        Lcom/sec/android/app/twlauncher/MenuManager$makeVisibleLstnr;,
        Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;,
        Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;,
        Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;,
        Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;,
        Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;,
        Lcom/sec/android/app/twlauncher/MenuManager$animInfo;,
        Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;,
        Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;,
        Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;,
        Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;,
        Lcom/sec/android/app/twlauncher/MenuManager$PitchState;
    }
.end annotation


# static fields
.field private static mPageFolderRotation:F

.field static mUninstallLockPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field private mAniFadeIn:Landroid/view/animation/Animation;

.field private mAniFadeOut:Landroid/view/animation/Animation;

.field private mAniRotateFadeIn:Landroid/view/animation/Animation;

.field private mAniRotateFadeOut:Landroid/view/animation/Animation;

.field private mAniTransition:Landroid/view/animation/Animation;

.field private mBackupMode:I

.field private mBackupSortMethod:I

.field private mCloseAnimations:[Landroid/view/animation/Animation;

.field private final mColumnNum:I

.field private mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

.field private mDragCellIndexOrig:I

.field private mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

.field private mDragScreen:I

.field private mDragView:Landroid/view/View;

.field private mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mExecDragOverDelayed:Z

.field private mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

.field private mFolderPreviewOffsetX:F

.field private mFolderPreviewOffsetY:F

.field private mHasOpenListViewFolder:Z

.field private mIndicatorTransYLM:I

.field private mIsClosing:Z

.field private mIsClosingGL:Z

.field private mIsOpeningGL:Z

.field private mItemsOnPage:I

.field private mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

.field mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field private mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

.field mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field mMode:I

.field mMyOnClickListener:Landroid/view/View$OnClickListener;

.field private mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mOpenAnimations:[Landroid/view/animation/Animation;

.field private mOrientation:I

.field private mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

.field private mPitchThreshold:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrevMode:I

.field private mPreviewIconSize:F

.field private mPreviewIconXGap:F

.field private mPreviewIconYGap:F

.field private mPreviewIconYOffset:F

.field private mRaisedIconStartTime:J

.field private final mRaisedIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mResolveInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorsRegistered:Z

.field private mSortMethod:I

.field private mTestCount:I

.field private mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mZoomScaleLM:F

.field private mZoomTransYLM:I

.field private maxCellNum:I

.field private maxPageNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 194
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 276
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuManager;->mUninstallLockPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 280
    invoke-direct {p0, p1, p2, v5}, Lcom/sec/android/app/twlauncher/Scene;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    .line 158
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrevMode:I

    .line 160
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 162
    iput v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    .line 163
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupMode:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupSortMethod:I

    .line 208
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    .line 210
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    .line 216
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 220
    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    .line 223
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x1f4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 226
    iput-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mActivityMgr:Landroid/app/ActivityManager;

    .line 228
    iput-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    .line 230
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    .line 238
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kSetThreshold:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 240
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    .line 242
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIconStartTime:J

    .line 246
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    invoke-direct {v2, p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    .line 252
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    .line 271
    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    .line 272
    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    .line 3382
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$4;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    .line 3504
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$5;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 4588
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$6;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 4683
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$7;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 4715
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 4717
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    .line 4719
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    .line 4725
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$8;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 283
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 284
    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    .line 286
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    new-array v2, v2, [Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    .line 287
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    new-array v2, v2, [Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    .line 289
    sget-object v2, Lcom/sec/android/app/twlauncher/R$styleable;->MenuManager:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 292
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomTransYLM:I

    .line 294
    const/high16 v2, 0x3f40

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomScaleLM:F

    .line 295
    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIndicatorTransYLM:I

    .line 297
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->init(Landroid/content/res/Resources;)V

    .line 298
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->initPageIndicator(Landroid/content/res/Resources;)V

    .line 299
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/MenuManager;->initiateDragOnView(Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/UserFolderModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mExecDragOverDelayed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mExecDragOverDelayed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/MenuManager;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->dragFromListView(Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolder(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    return-void
.end method

.method private addBlankPage()V
    .registers 6

    .prologue
    .line 4287
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 4299
    :cond_5
    :goto_5
    return-void

    .line 4290
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    .line 4291
    .local v2, pageCount:I
    if-eqz v2, :cond_5

    .line 4294
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4295
    .local v1, lastPage:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4296
    .local v0, itemCount:I
    if-lez v0, :cond_5

    .line 4297
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    goto :goto_5
.end method

.method private assignEditToNormal()Z
    .registers 5

    .prologue
    .line 2653
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v3, :cond_6

    .line 2654
    const/4 v2, 0x0

    .line 2665
    :goto_5
    return v2

    .line 2658
    :cond_6
    const/4 v2, 0x0

    .line 2659
    .local v2, mustUpdateDb:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_f
    if-ltz v1, :cond_24

    .line 2660
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2661
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignEditToNormal()V

    .line 2662
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    .line 2659
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 2664
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_24
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->assignEditToNormal()Z

    move-result v3

    or-int/2addr v2, v3

    .line 2665
    goto :goto_5
.end method

.method private assignNormalToEdit()Z
    .registers 5

    .prologue
    .line 2669
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v3, :cond_6

    .line 2670
    const/4 v2, 0x0

    .line 2681
    :goto_5
    return v2

    .line 2674
    :cond_6
    const/4 v2, 0x0

    .line 2675
    .local v2, mustUpdateDb:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_f
    if-ltz v1, :cond_24

    .line 2676
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2677
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 2678
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    .line 2675
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 2680
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_24
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->assignNormalToEdit()Z

    move-result v3

    or-int/2addr v2, v3

    .line 2681
    goto :goto_5
.end method

.method private cancelRunningTransitionAnimation()V
    .registers 2

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    .line 1412
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    .line 1415
    :cond_c
    return-void
.end method

.method private closeAllOpenFolders()V
    .registers 7

    .prologue
    .line 3044
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 3045
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_4d

    .line 3046
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3047
    .local v4, v:Landroid/view/View;
    instance-of v5, v4, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v5, :cond_1a

    .line 3048
    check-cast v4, Lcom/sec/android/app/twlauncher/UserFolder;

    .end local v4           #v:Landroid/view/View;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V

    .line 3045
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3052
    .end local v1           #i:I
    :cond_1d
    const/4 v3, 0x0

    .line 3056
    .local v3, page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .restart local v1       #i:I
    :goto_24
    if-ltz v1, :cond_4d

    .line 3057
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3058
    .restart local v3       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v5

    if-nez v5, :cond_35

    .line 3056
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 3061
    :cond_35
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, j:I
    :goto_3b
    if-ltz v2, :cond_32

    .line 3062
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3063
    .local v0, app:Landroid/view/View;
    instance-of v5, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v5, :cond_4a

    .line 3064
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #app:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 3061
    :cond_4a
    add-int/lit8 v2, v2, -0x1

    goto :goto_3b

    .line 3069
    .end local v2           #j:I
    .end local v3           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_4d
    return-void
.end method

.method private closeDragGap()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1795
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->ensureDraggedView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v2

    .line 1811
    :goto_8
    return v0

    .line 1798
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1799
    instance-of v0, v1, Lcom/sec/android/app/twlauncher/AppMenu;

    if-nez v0, :cond_15

    move v0, v2

    .line 1800
    goto :goto_8

    .line 1802
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 1803
    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1804
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1805
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_2b

    move v0, v2

    .line 1806
    goto :goto_8

    .line 1808
    :cond_2b
    const-string v2, "closeDragGap"

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {p0, v1, v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1810
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1811
    const/4 v0, 0x1

    goto :goto_8
.end method

.method private copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 9
    .parameter "adapter"
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    .line 3839
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    .line 3840
    :cond_5
    const/4 v1, 0x0

    .line 3851
    :cond_6
    :goto_6
    return-object v1

    .line 3841
    :cond_7
    const/4 v1, 0x0

    .line 3842
    .local v1, adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    .line 3843
    .local v0, adapterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v0, :cond_6

    .line 3844
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3845
    .restart local v1       #adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 3847
    invoke-virtual {v1, p2, v5, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;ZZ)V

    goto :goto_6

    .line 3843
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method private disablePitchDetection()V
    .registers 3

    .prologue
    .line 4993
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    if-eqz v0, :cond_15

    .line 4994
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 4995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    .line 4996
    const-string v0, "Launcher.MenuManager"

    const-string v1, "Pitch detection disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    :cond_15
    return-void
.end method

.method private dragFromListView(Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V
    .registers 10
    .parameter "view"
    .parameter "info"
    .parameter "fromFolder"

    .prologue
    .line 3335
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    .line 3337
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 3338
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3340
    if-eqz p3, :cond_2d

    .line 3341
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v3, p2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    invoke-interface {v1, p1}, Lcom/sec/android/app/twlauncher/DragController;->centerViewToLastTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v5

    move-object v1, p1

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    .line 3347
    :goto_23
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    .line 3348
    return-void

    .line 3344
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v1, p2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v2, 0x2

    invoke-interface {v0, p1, p0, v1, v2}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    goto :goto_23
.end method

.method private drawPageIndicator(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 6
    .parameter "canvas"

    .prologue
    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, redraw:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_1c

    .line 795
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 796
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageScrollOffset(I)V

    .line 801
    :goto_14
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    move-result v0

    .line 803
    :cond_1c
    return v0

    .line 798
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    .line 799
    .local v1, updatedScreen:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    goto :goto_14
.end method

.method private dumpAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .registers 6
    .parameter

    .prologue
    .line 2446
    if-eqz p1, :cond_5f

    .line 2447
    const-string v0, "DebugDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adater pointer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2e
    if-ltz v0, :cond_66

    .line 2449
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-nez v1, :cond_5c

    .line 2450
    const-string v1, "DebugDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump Adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_5c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 2455
    :cond_5f
    const-string v0, "DebugDb"

    const-string v1, "Adater pointer is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    :cond_66
    return-void
.end method

.method private enablePitchDetection()V
    .registers 4

    .prologue
    .line 4983
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_28

    .line 4985
    const-string v0, "Launcher.MenuManager"

    const-string v1, "Pitch detection enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4986
    sget-object v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kSetThreshold:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 4987
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 4988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    .line 4990
    :cond_28
    return-void
.end method

.method private getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2703
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 2704
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2710
    .restart local p1       #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_d
    if-ltz v0, :cond_1c

    .line 2711
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2712
    .local v1, page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 2710
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 2714
    .end local v1           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 2715
    return-object p1
.end method

.method private getEmptyAppMenu(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;
    .registers 6
    .parameter "info"

    .prologue
    .line 2484
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 2485
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2486
    .local v1, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-lt v2, v3, :cond_21

    .line 2487
    :cond_16
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v1

    .line 2488
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 2499
    :cond_21
    return-object v1
.end method

.method private getEmptyPageView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;
    .registers 11
    .parameter "aInfo"

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 2503
    const/4 v3, 0x0

    .local v3, page:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v4, 0x0

    .line 2504
    .local v4, temp:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 2506
    .local v0, count:I
    const/4 v2, 0x0

    .line 2508
    .local v2, num:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_18

    .line 2509
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v8, :cond_56

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v2

    .line 2513
    :cond_18
    :goto_18
    if-ne v2, v7, :cond_20

    .line 2514
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v8, :cond_5b

    add-int/lit8 v2, v0, -0x1

    .line 2516
    :cond_20
    :goto_20
    if-gez v2, :cond_23

    .line 2517
    const/4 v2, 0x0

    .line 2520
    :cond_23
    const/4 v3, 0x0

    .line 2521
    :goto_24
    if-gt v2, v0, :cond_35

    .line 2522
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2523
    .restart local v4       #temp:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v5, v6, :cond_5d

    .line 2524
    move-object v3, v4

    .line 2528
    :cond_35
    if-nez v3, :cond_41

    .line 2529
    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v3

    .line 2530
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 2532
    :cond_41
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v1

    .line 2533
    .local v1, itemCount:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v8, :cond_60

    .line 2534
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v5

    if-ne v5, v7, :cond_55

    .line 2535
    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditPageNum(I)V

    .line 2536
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditCellNum(I)V

    .line 2545
    :cond_55
    :goto_55
    return-object v3

    .line 2509
    .end local v1           #itemCount:I
    :cond_56
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v2

    goto :goto_18

    :cond_5b
    move v2, v0

    .line 2514
    goto :goto_20

    .line 2521
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 2539
    .restart local v1       #itemCount:I
    :cond_60
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v5

    if-ne v5, v7, :cond_6c

    .line 2540
    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    .line 2541
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCellNum(I)V

    .line 2543
    :cond_6c
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    goto :goto_55
.end method

.method private getListView()Lcom/sec/android/app/twlauncher/GLFastScrollListView;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 4135
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    move-object v1, v2

    .line 4146
    :goto_7
    return-object v1

    .line 4140
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_e
    if-ltz v0, :cond_1e

    .line 4141
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4142
    .local v1, view:Landroid/view/View;
    instance-of v3, v1, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    if-eqz v3, :cond_1b

    .line 4143
    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    goto :goto_7

    .line 4140
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .end local v1           #view:Landroid/view/View;
    :cond_1e
    move-object v1, v2

    .line 4146
    goto :goto_7
.end method

.method private getPointInScaledDimension(II)Landroid/graphics/PointF;
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5078
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getScaleRatio()Landroid/graphics/PointF;

    move-result-object v3

    .line 5079
    .local v3, scaleRatio:Landroid/graphics/PointF;
    int-to-float v4, p1

    iget v5, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    add-int v1, v4, v5

    .line 5080
    .local v1, newX:I
    int-to-float v4, p2

    iget v5, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    add-int v2, v4, v5

    .line 5084
    .local v2, newY:I
    const/16 v0, -0xa

    .line 5085
    .local v0, magic:I
    new-instance v4, Landroid/graphics/PointF;

    add-int v5, v1, v0

    int-to-float v5, v5

    add-int v6, v2, v0

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v4
.end method

.method private getSortedAdapter(Landroid/widget/ArrayAdapter;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, aDispApps:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2750
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v3, v2, :cond_31

    .line 2751
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;-><init>()V

    .line 2760
    .local v0, sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :goto_b
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v3, :cond_14

    .line 2761
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->copyFromAppInfoAdapter(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)Z

    .line 2763
    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v3, :cond_2a

    .line 2764
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getUserFolders()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->copyFromFolderInfoList(Landroid/widget/ArrayAdapter;Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    .line 2765
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getAddedFolders()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->copyFromFolderInfoList(Landroid/widget/ArrayAdapter;Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    .line 2767
    :cond_2a
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v3, v2, :cond_4d

    .line 2773
    :goto_30
    return v1

    .line 2753
    .end local v0           #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_31
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-ne v3, v2, :cond_3b

    .line 2754
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;-><init>()V

    .restart local v0       #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    goto :goto_b

    .line 2755
    .end local v0           #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_3b
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-nez v3, :cond_45

    .line 2756
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;-><init>()V

    .restart local v0       #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    goto :goto_b

    .line 2758
    .end local v0           #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_45
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-direct {v0, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;-><init>(I)V

    .restart local v0       #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    goto :goto_b

    .line 2770
    :cond_4d
    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 2771
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 2772
    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    move v1, v2

    .line 2773
    goto :goto_30
.end method

.method private getSortedAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z
    .registers 5
    .parameter
    .parameter
    .parameter "aMustUpdateDb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2841
    .local p1, aDispApps:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .local p2, aASZApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2842
    const/4 v0, 0x0

    .line 2844
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolderAndASZApps(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z

    move-result v0

    goto :goto_7
.end method

.method private getXDeltaValue(I)F
    .registers 10
    .parameter

    .prologue
    const/high16 v4, 0x42c8

    const/high16 v3, 0x4248

    const/4 v0, 0x0

    const/high16 v1, -0x3d38

    const/high16 v2, -0x3db8

    .line 4756
    .line 4757
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    rem-int v5, p1, v5

    .line 4759
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_22

    .line 4760
    packed-switch v5, :pswitch_data_40

    .line 4810
    :goto_15
    :pswitch_15
    return v0

    .line 4762
    :pswitch_16
    const/high16 v0, -0x3d10

    .line 4763
    goto :goto_15

    .line 4765
    :pswitch_19
    const/high16 v0, -0x3d90

    .line 4766
    goto :goto_15

    .line 4768
    :pswitch_1c
    const/high16 v0, 0x4270

    .line 4769
    goto :goto_15

    .line 4771
    :pswitch_1f
    const/high16 v0, 0x42f0

    goto :goto_15

    .line 4775
    :cond_22
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    const/16 v7, 0x14

    if-ne v6, v7, :cond_34

    .line 4776
    packed-switch v5, :pswitch_data_4c

    goto :goto_15

    :pswitch_2c
    move v0, v1

    .line 4779
    goto :goto_15

    :pswitch_2e
    move v0, v2

    .line 4782
    goto :goto_15

    :pswitch_30
    move v0, v3

    .line 4788
    goto :goto_15

    :pswitch_32
    move v0, v4

    .line 4790
    goto :goto_15

    .line 4794
    :cond_34
    packed-switch v5, :pswitch_data_5a

    goto :goto_15

    :pswitch_38
    move v0, v1

    .line 4797
    goto :goto_15

    :pswitch_3a
    move v0, v2

    .line 4800
    goto :goto_15

    :pswitch_3c
    move v0, v3

    .line 4803
    goto :goto_15

    :pswitch_3e
    move v0, v4

    .line 4805
    goto :goto_15

    .line 4760
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
    .end packed-switch

    .line 4776
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2e
        :pswitch_15
        :pswitch_30
        :pswitch_32
    .end packed-switch

    .line 4794
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_3a
        :pswitch_3c
        :pswitch_3e
    .end packed-switch
.end method

.method private getYDeltaValue(I)F
    .registers 10
    .parameter

    .prologue
    const/high16 v4, 0x430c

    const/high16 v3, 0x428c

    const/4 v2, 0x0

    const/high16 v0, -0x3cf4

    const/high16 v1, -0x3d74

    .line 4814
    .line 4815
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    div-int v5, p1, v5

    .line 4817
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2f

    .line 4818
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    const/16 v7, 0x14

    if-ne v6, v7, :cond_25

    .line 4819
    packed-switch v5, :pswitch_data_40

    :goto_1b
    move v0, v2

    .line 4868
    :goto_1c
    :pswitch_1c
    return v0

    :pswitch_1d
    move v0, v1

    .line 4825
    goto :goto_1c

    :pswitch_1f
    move v0, v2

    .line 4828
    goto :goto_1c

    :pswitch_21
    move v0, v3

    .line 4831
    goto :goto_1c

    :pswitch_23
    move v0, v4

    .line 4833
    goto :goto_1c

    .line 4837
    :cond_25
    packed-switch v5, :pswitch_data_4e

    goto :goto_1b

    :pswitch_29
    move v0, v1

    .line 4843
    goto :goto_1c

    :pswitch_2b
    move v0, v3

    .line 4846
    goto :goto_1c

    :pswitch_2d
    move v0, v4

    .line 4848
    goto :goto_1c

    .line 4853
    :cond_2f
    packed-switch v5, :pswitch_data_5a

    goto :goto_1b

    .line 4855
    :pswitch_33
    const/high16 v0, -0x3d60

    .line 4856
    goto :goto_1c

    .line 4858
    :pswitch_36
    const/high16 v0, -0x3de0

    .line 4859
    goto :goto_1c

    .line 4861
    :pswitch_39
    const/high16 v0, 0x4220

    .line 4862
    goto :goto_1c

    .line 4864
    :pswitch_3c
    const/high16 v0, 0x42a0

    goto :goto_1c

    .line 4819
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_23
    .end packed-switch

    .line 4837
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_29
        :pswitch_2b
        :pswitch_2d
    .end packed-switch

    .line 4853
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
    .end packed-switch
.end method

.method private init(Landroid/content/res/Resources;)V
    .registers 7
    .parameter "res"

    .prologue
    const/4 v4, 0x0

    .line 305
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 307
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 309
    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 312
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    .line 313
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mMaximumVelocity:I

    .line 314
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    .line 319
    const v1, 0x7f090005

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    .line 321
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    .line 322
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 327
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b5

    .line 328
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    .line 329
    const/16 v1, 0x320

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    .line 335
    :goto_68
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 337
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->initAnimation()V

    .line 339
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setAnimationCacheEnabled(Z)V

    .line 341
    const v1, 0x7f0b006d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetX:F

    .line 342
    const v1, 0x7f0b006e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetY:F

    .line 344
    const v1, 0x7f0b006f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconSize:F

    .line 345
    const v1, 0x7f0b0070

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconXGap:F

    .line 346
    const v1, 0x7f0b0071

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYGap:F

    .line 348
    const v1, 0x7f0b0072

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYOffset:F

    .line 353
    return-void

    .line 331
    :cond_b5
    const/16 v1, 0x258

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    .line 332
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    goto :goto_68
.end method

.method private initAnimation()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x1f4

    const/high16 v8, 0x3f80

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 4595
    move v0, v1

    :goto_7
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v0, v2, :cond_91

    .line 4596
    sget-boolean v2, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    if-eqz v2, :cond_66

    .line 4597
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getXDeltaValue(I)F

    move-result v2

    .line 4598
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getYDeltaValue(I)F

    move-result v3

    .line 4600
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v2, v7, v3, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4601
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4602
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4603
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4604
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 4605
    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4606
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4607
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aput-object v6, v4, v0

    .line 4609
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 4610
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v7, v2, v7, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4611
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4612
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aput-object v4, v2, v0

    .line 4613
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v2, v2, v0

    new-instance v3, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v3, v8}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4595
    :goto_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4615
    :cond_66
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v3, v2, v0

    .line 4616
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v7, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v3, v2, v0

    .line 4617
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aget-object v2, v2, v0

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4618
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v2, v2, v0

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_63

    .line 4622
    :cond_91
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->setDelay(F)V

    .line 4623
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;->setDelay(F)V

    .line 4632
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f040004

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    .line 4634
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f040005

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    .line 4637
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 4638
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 4639
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4640
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4641
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4643
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 4644
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4645
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4646
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4647
    return-void
.end method

.method private initPageIndicator(Landroid/content/res/Resources;)V
    .registers 11
    .parameter

    .prologue
    .line 782
    new-instance v0, Lcom/sec/android/app/twlauncher/PageIndicator;

    const v1, 0x7f0b0042

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/16 v3, 0x9

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

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 790
    return-void
.end method

.method private initiateDragOnView(Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z
    .registers 16
    .parameter "dragSource"
    .parameter "originalSource"
    .parameter "aView"
    .parameter "offset"

    .prologue
    const/4 v10, 0x1

    .line 3469
    move-object v1, p3

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 3470
    .local v1, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 3471
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 3472
    .local v9, tag:Ljava/lang/Object;
    if-eqz v9, :cond_51

    instance-of v0, v9, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_51

    move-object v6, v9

    .line 3473
    check-cast v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3474
    .local v6, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v3, v6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3475
    .local v3, dragInfo:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    invoke-virtual {v3, p2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->setDragSource(Lcom/sec/android/app/twlauncher/DragSource;)V

    .line 3476
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_55

    .line 3477
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 3478
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3479
    .local v8, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2f
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_3f

    .line 3480
    invoke-virtual {v8, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, v1, :cond_52

    .line 3481
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 3482
    iput v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 3487
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3489
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    .line 3492
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->enableRollNavigation()V

    .line 3500
    .end local v3           #dragInfo:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    .end local v6           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v7           #i:I
    .end local v8           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_51
    :goto_51
    return v10

    .line 3479
    .restart local v3       #dragInfo:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    .restart local v6       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v7       #i:I
    .restart local v8       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 3494
    .end local v7           #i:I
    .end local v8           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_55
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    .line 3495
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    invoke-interface {v0, v1, p1, v3, v10}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 3497
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    goto :goto_51
.end method

.method private isListChild()Z
    .registers 5

    .prologue
    .line 4872
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 4873
    .local v1, count:I
    const/4 v3, 0x2

    if-gt v1, v3, :cond_1b

    .line 4874
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_1b

    .line 4875
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4876
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_18

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4877
    const/4 v3, 0x1

    .line 4881
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :goto_17
    return v3

    .line 4874
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #i:I
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4881
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :cond_1b
    const/4 v3, 0x0

    goto :goto_17
.end method

.method private isListView(Landroid/view/View;)Z
    .registers 3
    .parameter "aView"

    .prologue
    .line 4131
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    return v0
.end method

.method private isSceneTransitioning()Z
    .registers 2

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;
    .registers 6
    .parameter "index"

    .prologue
    const/4 v3, -0x1

    .line 2460
    new-instance v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;I)V

    .line 2462
    .local v0, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-ne p1, v3, :cond_28

    .line 2463
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2469
    :goto_16
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 2471
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 2472
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    .line 2478
    :goto_24
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeSureAdjacentPagesArePreloaded()V

    .line 2480
    return-object v0

    .line 2466
    :cond_28
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_16

    .line 2475
    :cond_31
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    goto :goto_24
.end method

.method private makeSureAdjacentPagesArePreloaded()V
    .registers 7

    .prologue
    .line 1273
    const/4 v4, 0x6

    .line 1274
    .local v4, range:I
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v1

    .line 1275
    .local v1, glsvg:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v2, v5, -0x6

    .local v2, i:I
    :goto_9
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v5, v5, 0x6

    if-gt v2, v5, :cond_29

    .line 1276
    if-gez v2, :cond_14

    .line 1275
    :cond_11
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1278
    :cond_14
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1279
    .local v0, c:Landroid/view/View;
    instance-of v5, v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    if-eqz v5, :cond_11

    move-object v3, v0

    .line 1280
    check-cast v3, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    .line 1281
    .local v3, p:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->willBePreloaded(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1282
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    goto :goto_11

    .line 1286
    .end local v0           #c:Landroid/view/View;
    .end local v3           #p:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    :cond_29
    return-void
.end method

.method private openAppMenuFolders(Ljava/util/HashMap;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2973
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2974
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v6, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v6, :cond_8

    move-object v2, v0

    .line 2975
    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 2976
    .local v2, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2977
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2978
    .local v5, value:Ljava/lang/Object;
    instance-of v6, v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v6, :cond_8

    .line 2981
    check-cast v5, Landroid/view/View;

    .end local v5           #value:Ljava/lang/Object;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 2982
    .local v4, parent:Landroid/view/ViewParent;
    instance-of v6, v4, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v6, :cond_8

    move-object v1, v4

    .line 2985
    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2986
    .local v1, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2989
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    goto :goto_8

    .line 2993
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v2           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v4           #parent:Landroid/view/ViewParent;
    :cond_40
    return-void
.end method

.method private openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3362
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_1b

    .line 3363
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3364
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolder;

    if-nez v3, :cond_14

    .line 3362
    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3367
    :cond_14
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 3368
    if-ne v2, p2, :cond_11

    .line 3379
    :goto_1a
    return v0

    .line 3372
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->getFolderUi(Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    .line 3373
    if-nez v1, :cond_2b

    .line 3374
    const-string v1, "Launcher.MenuManager"

    const-string v2, "Failed to get the folder UI form the Launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 3377
    :cond_2b
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    .line 3378
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3379
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method private phantomizeIfNeeded(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .registers 7
    .parameter
    .parameter
    .parameter "aApp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2721
    .local p1, aCheckMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    .local p2, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2722
    .local v0, check:Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 2729
    :cond_6
    :goto_6
    return-void

    .line 2725
    :cond_7
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2726
    .local v1, myView:Ljava/lang/Object;
    if-eqz v1, :cond_6

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v2, :cond_6

    .line 2727
    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v1           #myView:Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    goto :goto_6
.end method

.method private reOrgAppMenu(Lcom/sec/android/app/twlauncher/AppMenu;)V
    .registers 5
    .parameter "aMenu"

    .prologue
    .line 2998
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_1d

    .line 2999
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3000
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v2, :cond_1a

    .line 3001
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 3002
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    .line 2998
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3005
    .end local v1           #v:Landroid/view/View;
    :cond_1d
    return-void
.end method

.method private removeAllEmptyPages()I
    .registers 6

    .prologue
    .line 3117
    const/4 v2, 0x0

    .line 3118
    .local v2, res:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_7
    if-ltz v1, :cond_1e

    .line 3119
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3120
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1b

    .line 3121
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeView(Landroid/view/View;)V

    .line 3122
    add-int/lit8 v2, v2, 0x1

    .line 3118
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 3125
    .end local v0           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_1e
    return v2
.end method

.method private removeDragView(Ljava/lang/String;)V
    .registers 3
    .parameter "aWho"

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 2326
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->unShiftItems(Ljava/lang/String;)V

    .line 2327
    return-void
.end method

.method private removeFolder(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .registers 4
    .parameter "aView"
    .parameter "aTag"

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->showMMRemoveFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 1836
    return-void
.end method

.method private removeFolderAndASZApps(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2778
    .line 2780
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge v0, v5, :cond_b

    .line 2836
    :goto_a
    return v3

    .line 2783
    :cond_b
    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 2786
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v4, v3

    :goto_16
    if-ltz v7, :cond_d5

    .line 2787
    invoke-virtual {p1, v7}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2788
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_2a

    .line 2790
    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    or-int/2addr v0, v4

    .line 2786
    :goto_25
    add-int/lit8 v1, v7, -0x1

    move v7, v1

    move v4, v0

    goto :goto_16

    .line 2794
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getContainingFolderFromModel(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 2796
    const-string v1, "DebugPlacement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping folder item "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 2799
    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    or-int/2addr v0, v4

    .line 2800
    goto :goto_25

    .line 2802
    :cond_71
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-nez v1, :cond_83

    .line 2803
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getDefaultSort()I

    move-result v1

    if-gez v1, :cond_e3

    .line 2804
    invoke-virtual {p2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2805
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    move v0, v4

    .line 2806
    goto :goto_25

    .line 2809
    :cond_83
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v1, v9, :cond_ba

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v1

    .line 2810
    :goto_8b
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v2, v9, :cond_bf

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v2

    move v6, v2

    .line 2813
    :goto_94
    if-ne v1, v10, :cond_e3

    if-eq v6, v10, :cond_e3

    move v2, v3

    .line 2815
    :goto_99
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_cc

    .line 2816
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2817
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v8, v9, :cond_c5

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v1

    .line 2818
    :goto_ad
    if-ne v1, v6, :cond_ca

    .line 2819
    const-string v1, "MenuManager"

    const-string v8, "Cell nums are same. Please check DB !!"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :cond_b6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_99

    .line 2809
    :cond_ba
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v1

    goto :goto_8b

    .line 2810
    :cond_bf
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v2

    move v6, v2

    goto :goto_94

    .line 2817
    :cond_c5
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v1

    goto :goto_ad

    .line 2822
    :cond_ca
    if-lt v1, v6, :cond_b6

    .line 2827
    :cond_cc
    invoke-virtual {p2, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2828
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    move v0, v4

    .line 2829
    goto/16 :goto_25

    .line 2833
    :cond_d5
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->updateAsz(Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v0, v4

    .line 2834
    invoke-virtual {p3, v0}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->set(Z)V

    .line 2835
    invoke-virtual {p1, v5}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    move v3, v5

    .line 2836
    goto/16 :goto_a

    :cond_e3
    move v0, v4

    goto/16 :goto_25
.end method

.method private removeMissingApps(Landroid/widget/ArrayAdapter;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2687
    .local p1, aAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v3, 0x0

    .line 2689
    .local v3, res:Z
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->toMap(Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v0

    .line 2691
    .local v0, appMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_b
    if-ltz v1, :cond_1b

    .line 2692
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2693
    .local v2, page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2691
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2696
    .end local v2           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_1b
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2698
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllEmptyPages()I

    .line 2699
    return v3
.end method

.method private resetRaisedIcons()V
    .registers 4

    .prologue
    .line 5001
    const-string v0, "Launcher.MenuManager"

    const-string v1, "resetRaisedIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 5003
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setShowAppIsRunning(Z)V

    .line 5004
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_d

    .line 5006
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5007
    return-void
.end method

.method private setRaisedIcons()V
    .registers 12

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 5010
    const-string v0, "Launcher.MenuManager"

    const-string v1, "setRaisedIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5011
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5012
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mActivityMgr:Landroid/app/ActivityManager;

    if-eqz v0, :cond_b9

    .line 5013
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mActivityMgr:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 5014
    if-eqz v0, :cond_b9

    .line 5015
    new-instance v8, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 5016
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 5017
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 5021
    :cond_39
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v9

    move v7, v5

    move v4, v5

    .line 5023
    :goto_3f
    if-ge v7, v9, :cond_74

    .line 5024
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 5025
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v10

    move v6, v5

    .line 5026
    :goto_4c
    if-ge v6, v10, :cond_70

    .line 5027
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 5028
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 5029
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->setShowAppIsRunning(Z)V

    .line 5030
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    .line 5026
    :goto_6b
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    goto :goto_4c

    .line 5023
    :cond_70
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3f

    .line 5035
    :cond_74
    if-eqz v4, :cond_79

    .line 5036
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 5040
    :cond_79
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v6

    .line 5041
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v7

    move v4, v5

    move v2, v5

    .line 5043
    :goto_85
    if-ge v4, v7, :cond_b4

    .line 5044
    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5045
    instance-of v0, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v0, :cond_ba

    .line 5046
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 5047
    instance-of v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_ba

    .line 5048
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    move-object v0, v1

    .line 5049
    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->setShowAppIsRunning(Z)V

    .line 5050
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 5043
    :goto_af
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_85

    .line 5056
    :cond_b4
    if-eqz v2, :cond_b9

    .line 5057
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 5060
    :cond_b9
    return-void

    :cond_ba
    move v0, v2

    goto :goto_af

    :cond_bc
    move v1, v4

    goto :goto_6b
.end method

.method private shiftItem(Lcom/sec/android/app/twlauncher/AppMenu;Landroid/view/View;I)V
    .registers 13
    .parameter "current"
    .parameter "v"
    .parameter "page"

    .prologue
    .line 3739
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->setWasShifted(Z)V

    .line 3740
    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 3742
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    .line 3743
    .local v6, pageCount:I
    const/4 v5, 0x0

    .line 3744
    .local v5, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-gt v6, p3, :cond_50

    .line 3745
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v5

    .line 3749
    :goto_13
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3750
    .local v4, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->updateAppInfoIfNeeded(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3752
    const/4 v8, 0x0

    invoke-virtual {v5, p2, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    .line 3753
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    .line 3754
    .local v2, count:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-le v2, v8, :cond_33

    .line 3755
    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3756
    .local v7, shiftView:Landroid/view/View;
    add-int/lit8 v8, p3, 0x1

    invoke-direct {p0, v5, v7, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Lcom/sec/android/app/twlauncher/AppMenu;Landroid/view/View;I)V

    .line 3760
    .end local v7           #shiftView:Landroid/view/View;
    :cond_33
    const/4 v3, 0x0

    .local v3, i:I
    :goto_34
    if-ge v3, v2, :cond_57

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v3, v8, :cond_57

    .line 3761
    invoke-virtual {v5, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3762
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3763
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v8, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v8, :cond_4d

    if-eqz v0, :cond_4d

    .line 3764
    invoke-virtual {v0, p3, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 3760
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 3747
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_50
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v5, Lcom/sec/android/app/twlauncher/AppMenu;

    .restart local v5       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    goto :goto_13

    .line 3767
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_57
    return-void
.end method

.method private snapToDestination()V
    .registers 3

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1325
    return-void
.end method

.method private switchToEditMode()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3170
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 3171
    .local v6, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v1

    .line 3173
    .local v1, appShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual {v1, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    .line 3177
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v8

    .line 3178
    .local v8, pageNum:I
    const/4 v7, 0x0

    .line 3182
    .local v7, page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    .line 3183
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView()Z

    .line 3185
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v8, :cond_4e

    .line 3186
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v7, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3187
    .restart local v7       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v7, v11}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    .line 3188
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    .line 3189
    .local v4, itemCount:I
    add-int/lit8 v5, v4, -0x1

    .local v5, j:I
    :goto_28
    if-ltz v5, :cond_4b

    .line 3190
    invoke-virtual {v7, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3191
    .local v0, app:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3192
    .local v3, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v9, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v9, :cond_48

    if-eqz v3, :cond_48

    move-object v9, v0

    .line 3193
    check-cast v9, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 3194
    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v0           #app:Landroid/view/View;
    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/MenuItemView;->setDrawBadgeCountOn(Z)V

    .line 3195
    invoke-virtual {v3, v2, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 3189
    :cond_48
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    .line 3185
    .end local v3           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3200
    .end local v4           #itemCount:I
    .end local v5           #j:I
    :cond_4e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->emptyLauncherManagerList()V

    .line 3201
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/LauncherManager;->show()V

    .line 3202
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v9, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v9, p0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 3203
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3204
    return-void
.end method

.method private switchToListMode()V
    .registers 14

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v0, :cond_5

    .line 3332
    :cond_4
    :goto_4
    return-void

    .line 3213
    :cond_5
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 3214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3215
    new-instance v1, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    .line 3217
    invoke-direct {p0, v6, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3220
    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_4

    .line 3226
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 3227
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    .line 3228
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    .line 3229
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 3230
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    .line 3232
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3233
    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    .line 3235
    new-instance v7, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030005

    invoke-direct {v7, v1, v2}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    .line 3238
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_a6

    .line 3239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    .line 3244
    :goto_62
    const/4 v3, 0x0

    .line 3245
    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v8

    .line 3246
    const/4 v2, 0x0

    .line 3247
    const/4 v1, 0x0

    move v4, v3

    move v3, v1

    :goto_6b
    if-ge v3, v8, :cond_ac

    .line 3248
    invoke-virtual {v6, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3249
    new-instance v9, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v9, v4, v10, v11, v12}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    .line 3252
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3253
    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    .line 3254
    instance-of v4, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v4, :cond_eb

    .line 3255
    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 3256
    invoke-virtual {v1, v9}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 3257
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 3247
    :goto_a0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v5

    move-object v2, v1

    goto :goto_6b

    .line 3241
    :cond_a6
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_62

    .line 3262
    :cond_ac
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 3263
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3267
    if-eqz v2, :cond_c4

    .line 3268
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->setFolderOpenFlag(Z)V

    .line 3269
    invoke-direct {p0, p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    .line 3272
    :cond_c4
    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLListView;

    .line 3276
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 3277
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$2;

    invoke-direct {v0, p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager$2;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/TextIconAdapter;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3297
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$3;

    invoke-direct {v0, p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager$3;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/TextIconAdapter;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 3330
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 3331
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto/16 :goto_4

    :cond_eb
    move-object v1, v2

    goto :goto_a0
.end method

.method private switchToNormalMode()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 3129
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v1

    .line 3131
    .local v1, appShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual {v1, v7}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    .line 3134
    const/4 v4, 0x0

    .line 3138
    .local v4, page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    .line 3139
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllEmptyPages()I

    .line 3140
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 3141
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    .line 3143
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->emptyLauncherManagerList()V

    .line 3145
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_23
    if-ltz v2, :cond_51

    .line 3146
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3147
    .restart local v4       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    .line 3148
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, j:I
    :goto_34
    if-ltz v3, :cond_4e

    .line 3149
    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3150
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v6, :cond_4b

    .line 3151
    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 3152
    .local v0, app:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 3153
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setDrawBadgeCountOn(Z)V

    .line 3148
    .end local v0           #app:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_4b
    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    .line 3145
    .end local v5           #view:Landroid/view/View;
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 3157
    .end local v3           #j:I
    :cond_51
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3158
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->enablePitchDetection()V

    .line 3159
    return-void
.end method

.method private syncGridView()Z
    .registers 2

    .prologue
    .line 2848
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView(Landroid/widget/ArrayAdapter;)Z

    move-result v0

    return v0
.end method

.method private syncGridView(Landroid/widget/ArrayAdapter;)Z
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 2861
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v0, :cond_f

    .line 2862
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const-string v2, "syncGridView"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->dumpSelf(Ljava/lang/String;)V

    .line 2865
    :cond_f
    if-eqz p1, :cond_1d

    .line 2873
    :cond_11
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lt v0, v12, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v0, :cond_2c

    :cond_1b
    move v0, v1

    .line 2967
    :goto_1c
    return v0

    .line 2868
    :cond_1d
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2869
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 2870
    goto :goto_1c

    .line 2876
    :cond_2c
    new-instance v4, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;

    invoke-direct {v4, p0, v10}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    .line 2877
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeMissingApps(Landroid/widget/ArrayAdapter;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->or(Z)V

    .line 2879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2880
    invoke-direct {p0, p1, v0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolderAndASZApps(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z

    move-result v0

    if-nez v0, :cond_45

    move v0, v1

    .line 2881
    goto :goto_1c

    .line 2883
    :cond_45
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    .line 2893
    invoke-direct {p0, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v6

    .line 2894
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/LauncherManager;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v7

    .line 2899
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9e

    move v2, v1

    .line 2900
    :goto_5d
    if-ge v2, v5, :cond_90

    .line 2901
    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2902
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v8

    if-ge v3, v8, :cond_79

    .line 2903
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    .line 2904
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    .line 2900
    :cond_75
    :goto_75
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5d

    .line 2905
    :cond_79
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v8

    if-ne v3, v8, :cond_75

    .line 2906
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v8

    if-ge v3, v8, :cond_75

    .line 2907
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    goto :goto_75

    .line 2911
    :cond_90
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_9e

    .line 2912
    iput v11, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    .line 2913
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    :cond_9e
    move v3, v1

    .line 2919
    :goto_9f
    if-ge v3, v5, :cond_14b

    .line 2920
    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2921
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2922
    if-nez v1, :cond_130

    .line 2925
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v1

    if-ne v1, v11, :cond_c5

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v1

    if-ne v1, v11, :cond_c5

    .line 2926
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    .line 2927
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCellNum(I)V

    .line 2931
    :cond_c5
    const-string v2, " New"

    .line 2933
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    const/4 v8, 0x2

    if-eq v1, v8, :cond_d0

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-ne v1, v12, :cond_12b

    :cond_d0
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v1

    .line 2935
    :goto_d4
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 2936
    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 2937
    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2938
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->reOrgAppMenu(Lcom/sec/android/app/twlauncher/AppMenu;)V

    .line 2939
    invoke-virtual {v4, v12}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->set(Z)V

    move-object v1, v2

    .line 2949
    :goto_e5
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-nez v2, :cond_123

    .line 2950
    const-string v2, "DebugPlacement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncGrid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_123
    invoke-direct {p0, v7, v6, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->phantomizeIfNeeded(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 2919
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_9f

    .line 2933
    :cond_12b
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyAppMenu(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v1

    goto :goto_d4

    .line 2941
    :cond_130
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_141

    move-object v1, v0

    .line 2942
    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 2947
    :cond_13e
    :goto_13e
    const-string v1, " Exists"

    goto :goto_e5

    .line 2944
    :cond_141
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v2, :cond_13e

    .line 2945
    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->updateVisualsIfRequired()V

    goto :goto_13e

    .line 2955
    :cond_14b
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 2956
    invoke-direct {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->openAppMenuFolders(Ljava/util/HashMap;)V

    .line 2961
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    .line 2962
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_163
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2963
    invoke-direct {p0, v7, v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->phantomizeIfNeeded(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    goto :goto_163

    .line 2965
    :cond_173
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateCurrScreen()V

    .line 2966
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    .line 2967
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->get()Z

    move-result v0

    goto/16 :goto_1c
.end method

.method private termUpdateDB()V
    .registers 2

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    if-eqz v0, :cond_9

    .line 3967
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->waitForTermination()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_d

    .line 3972
    :cond_9
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    .line 3973
    return-void

    .line 3968
    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method private transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;I)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const/high16 v12, 0x3f80

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCylinderAnimationFactor()F

    move-result v6

    .line 686
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAtLooped(I)Landroid/view/View;

    move-result-object v7

    .line 687
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 688
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    .line 689
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 690
    if-gez p2, :cond_7a

    .line 691
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    mul-int/2addr v1, v4

    sub-int/2addr v0, v1

    move v1, v0

    .line 694
    :goto_1f
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int v8, v1, v0

    .line 695
    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_88

    .line 696
    int-to-float v0, v1

    int-to-float v1, v8

    int-to-float v3, v4

    div-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageGap:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    int-to-float v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 712
    :goto_35
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    if-ne p2, v0, :cond_64

    .line 713
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 714
    sget v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotateY(F)V

    .line 715
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 718
    :cond_64
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    .line 719
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float/2addr v0, v6

    sub-float v0, v12, v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 734
    return-void

    .line 692
    :cond_7a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    if-lt p2, v1, :cond_be

    .line 693
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1f

    .line 698
    :cond_88
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 702
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v5

    .line 703
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleMain:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomScaleLM:F

    invoke-static {v3, v9, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    .line 706
    iget v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleSide:F

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v4

    div-float/2addr v10, v11

    invoke-static {v3, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    .line 707
    invoke-static {v12, v3, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    .line 708
    iget v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomPageGap:I

    mul-int/2addr v9, v8

    div-int v4, v9, v4

    add-int/2addr v1, v4

    .line 709
    int-to-float v4, v1

    int-to-float v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomTransYLM:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float v5, v1, v2

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    goto/16 :goto_35

    :cond_be
    move v1, v0

    goto/16 :goto_1f
.end method

.method private updateAppInfoIfNeeded(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .registers 5
    .parameter "aInfo"

    .prologue
    .line 3615
    move-object v1, p1

    .line 3616
    .local v1, res:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v2, :cond_13

    .line 3617
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 3618
    .local v0, pos:I
    if-gez v0, :cond_13

    .line 3619
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 3622
    .end local v0           #pos:I
    :cond_13
    return-object v1
.end method

.method private updateAsz(Ljava/util/ArrayList;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2589
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    .line 2592
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 2593
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 2594
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    move v2, v0

    .line 2596
    :goto_13
    if-ge v1, v4, :cond_4d

    .line 2602
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2603
    const-string v5, "DebugPlacement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ASZ order "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    const/4 v5, -0x1

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 2605
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 2606
    invoke-virtual {v3, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->appendApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    move-result v0

    or-int/2addr v2, v0

    .line 2596
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 2608
    :cond_4d
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2609
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 2610
    return v2
.end method

.method private updateCurrScreen()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2614
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2615
    .local v0, pageNum:I
    if-lez v0, :cond_1a

    .line 2616
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v1, v0, :cond_f

    .line 2617
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 2622
    :cond_f
    :goto_f
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 2623
    return-void

    .line 2620
    :cond_1a
    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_f
.end method

.method private updateMenu()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2626
    const/4 v0, 0x0

    .line 2627
    .local v0, mustUpdateDb:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->dumpAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 2628
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2630
    .local v1, sortHelper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2649
    :cond_15
    :goto_15
    return v4

    .line 2633
    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v2, :cond_25

    .line 2634
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->syncWithApps(Landroid/widget/ArrayAdapter;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2636
    :cond_25
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v2, :pswitch_data_46

    .line 2642
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView(Landroid/widget/ArrayAdapter;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-nez v2, :cond_44

    move v2, v3

    :goto_35
    or-int/2addr v0, v2

    .line 2645
    :goto_36
    if-eqz v0, :cond_15

    .line 2646
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    move v4, v3

    .line 2647
    goto :goto_15

    .line 2638
    :pswitch_3d
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 2639
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToListMode()V

    goto :goto_36

    :cond_44
    move v2, v4

    .line 2642
    goto :goto_35

    .line 2636
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3d
    .end packed-switch
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 11
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x1

    .line 1735
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v3

    if-ne p1, v3, :cond_22

    .line 1741
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    .line 1742
    .local v1, itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v3, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_23

    move-object v0, v1

    .line 1743
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 1744
    .local v0, fi:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropFolder()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1753
    .end local v0           #fi:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v1           #itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_22
    :goto_22
    return v2

    .line 1749
    .restart local v1       #itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 14
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
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/16 v9, 0x11

    const/4 v8, 0x1

    .line 4179
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 4182
    .local v0, childCount:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1e

    .line 4183
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 4187
    .local v2, focusableScreen:I
    :goto_e
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4188
    .local v5, v:Landroid/view/View;
    if-lt v0, v8, :cond_1a

    invoke-direct {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 4191
    :cond_1a
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->addFocusables(Ljava/util/ArrayList;II)V

    .line 4225
    :cond_1d
    :goto_1d
    return-void

    .line 4185
    .end local v2           #focusableScreen:I
    .end local v5           #v:Landroid/view/View;
    :cond_1e
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .restart local v2       #focusableScreen:I
    goto :goto_e

    .line 4197
    .restart local v5       #v:Landroid/view/View;
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    .line 4198
    .local v1, currentScreen:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4199
    .local v4, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-eqz v4, :cond_36

    .line 4200
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v3

    .line 4201
    .local v3, folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-eqz v3, :cond_58

    .line 4202
    invoke-virtual {v3, p1, p2, p3}, Lcom/sec/android/app/twlauncher/UserFolder;->addFocusables(Ljava/util/ArrayList;II)V

    .line 4208
    .end local v3           #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    :cond_36
    :goto_36
    if-le v0, v8, :cond_1d

    if-eq p2, v9, :cond_3e

    const/16 v6, 0x42

    if-ne p2, v6, :cond_1d

    .line 4209
    :cond_3e
    if-ne p2, v9, :cond_5c

    .line 4210
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_46

    .line 4211
    add-int/lit8 v1, v0, -0x1

    .line 4215
    :cond_46
    :goto_46
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4216
    .restart local v4       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-eqz v4, :cond_1d

    .line 4217
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v3

    .line 4218
    .restart local v3       #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-eqz v3, :cond_62

    .line 4219
    invoke-virtual {v3, p1, p2, p3}, Lcom/sec/android/app/twlauncher/UserFolder;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1d

    .line 4204
    :cond_58
    invoke-virtual {v4, p1, p2, p3}, Lcom/sec/android/app/twlauncher/AppMenu;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_36

    .line 4212
    .end local v3           #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_46

    .line 4213
    const/4 v1, 0x0

    goto :goto_46

    .line 4221
    .restart local v3       #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    :cond_62
    invoke-virtual {v4, p1, p2, p3}, Lcom/sec/android/app/twlauncher/AppMenu;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1d
.end method

.method addItem(Landroid/view/View;I)Landroid/view/View;
    .registers 13
    .parameter "v"
    .parameter "index"

    .prologue
    .line 3626
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v7

    .line 3627
    .local v7, screen:I
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3628
    .local v6, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 3629
    .local v3, count:I
    if-gez p2, :cond_11

    .line 3630
    const/4 p2, 0x0

    .line 3632
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3633
    .local v5, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 3634
    .local v0, addView:Lcom/sec/android/app/twlauncher/MenuItemView;
    if-ge v3, p2, :cond_56

    .line 3635
    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 3639
    :goto_22
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 3640
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-le v3, v9, :cond_35

    .line 3641
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v6, v9}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3642
    .local v8, shiftView:Landroid/view/View;
    add-int/lit8 v9, v7, 0x1

    invoke-direct {p0, v6, v8, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Lcom/sec/android/app/twlauncher/AppMenu;Landroid/view/View;I)V

    .line 3649
    .end local v8           #shiftView:Landroid/view/View;
    :cond_35
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIsDragging(Z)V

    .line 3652
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3a
    if-ge v4, v3, :cond_5a

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v4, v9, :cond_5a

    .line 3653
    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3654
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3655
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v9, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v9, :cond_53

    if-eqz v1, :cond_53

    .line 3656
    invoke-virtual {v1, v7, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 3652
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 3637
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_56
    invoke-virtual {v6, v0, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    goto :goto_22

    .line 3660
    .restart local v4       #i:I
    :cond_5a
    return-object v0
.end method

.method addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .registers 13
    .parameter "appMenu"
    .parameter "index"
    .parameter "appInfo"

    .prologue
    const/4 v8, 0x2

    .line 3681
    invoke-virtual {p0, p3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 3682
    .local v5, newView:Lcom/sec/android/app/twlauncher/MenuItemView;
    if-gez p2, :cond_a

    .line 3683
    const/4 p2, 0x0

    .line 3685
    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 3686
    .local v3, count:I
    if-ge v3, p2, :cond_5a

    .line 3687
    invoke-virtual {p1, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 3692
    :goto_13
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 3693
    .local v1, appPageNum:I
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v7, v8, :cond_5e

    .line 3696
    invoke-virtual {p3, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditPageNum(I)V

    .line 3702
    :goto_1e
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 3703
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-le v3, v7, :cond_31

    .line 3704
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3705
    .local v6, shiftView:Landroid/view/View;
    add-int/lit8 v7, v1, 0x1

    invoke-direct {p0, p1, v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Lcom/sec/android/app/twlauncher/AppMenu;Landroid/view/View;I)V

    .line 3707
    .end local v6           #shiftView:Landroid/view/View;
    :cond_31
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 3709
    const/4 v4, 0x0

    .local v4, i:I
    :goto_36
    if-ge v4, v3, :cond_6a

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v4, v7, :cond_6a

    .line 3710
    invoke-virtual {p1, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3711
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3712
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v7, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v7, :cond_57

    if-eqz v0, :cond_57

    .line 3713
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v7, v8, :cond_62

    .line 3714
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v7

    invoke-virtual {v0, v7, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 3709
    :cond_57
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 3689
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #appPageNum:I
    .end local v2           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_5a
    invoke-virtual {p1, v5, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    goto :goto_13

    .line 3700
    .restart local v1       #appPageNum:I
    :cond_5e
    invoke-virtual {p3, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    goto :goto_1e

    .line 3716
    .restart local v0       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v2       #child:Landroid/view/View;
    .restart local v4       #i:I
    :cond_62
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v7

    invoke-virtual {v0, v7, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    goto :goto_57

    .line 3721
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #child:Landroid/view/View;
    :cond_6a
    return-object v5
.end method

.method addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;
    .registers 6
    .parameter "appMenu"
    .parameter "itemView"
    .parameter "index"

    .prologue
    .line 3664
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3665
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p0, p1, p3, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method addItemAtEndOfPage(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .registers 5
    .parameter "appMenu"
    .parameter "appInfo"

    .prologue
    .line 3669
    if-nez p1, :cond_4

    .line 3670
    const/4 v1, 0x0

    .line 3676
    :goto_3
    return-object v1

    .line 3672
    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 3673
    .local v0, index:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-lt v0, v1, :cond_10

    .line 3674
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    add-int/lit8 v0, v1, -0x1

    .line 3676
    :cond_10
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_3
.end method

.method public animateClose()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1452
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelRunningTransitionAnimation()V

    .line 1454
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v5, :cond_11

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_11

    .line 1456
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 1459
    :cond_11
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disablePitchDetection()V

    .line 1461
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    .line 1462
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    .line 1464
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1465
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 1466
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1467
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1469
    :cond_32
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1471
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1472
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3c
    if-ge v1, v0, :cond_49

    .line 1473
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1472
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 1477
    :cond_49
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1478
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1480
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v2, :cond_82

    .line 1481
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    check-cast v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    .line 1484
    :cond_82
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    .line 1485
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->start()V

    .line 1486
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1494
    return-void
.end method

.method public animateOpen()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1418
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1419
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelRunningTransitionAnimation()V

    .line 1420
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    .line 1421
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    .line 1422
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 1424
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1425
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v0, :cond_22

    .line 1426
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1425
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1429
    :cond_22
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1430
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1432
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1434
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v2, :cond_64

    .line 1435
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    check-cast v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    .line 1438
    :cond_64
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    .line 1440
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->start()V

    .line 1441
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->enablePitchDetection()V

    .line 1442
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1449
    return-void
.end method

.method public animateToMM(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)Z
    .registers 14
    .parameter "aView"
    .parameter "aSrc"
    .parameter "aLstnr"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 4572
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v1, :cond_2c

    .line 4573
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getLocAndAnimDur(Landroid/view/View;)Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;

    move-result-object v8

    .line 4574
    .local v8, tgtInfo:Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;
    new-instance v5, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4576
    .local v5, srcPt:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v9}, Lcom/sec/android/app/twlauncher/DragLayer;->getGenericViewAnims(IZ)Lcom/sec/android/app/twlauncher/GenericViewAnim;

    move-result-object v0

    .line 4577
    .local v0, anim:Lcom/sec/android/app/twlauncher/GenericViewAnim;
    iget-object v6, v8, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mRelPt:Landroid/graphics/PointF;

    iget v7, v8, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    move-object v1, p1

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->addAnim(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    .line 4582
    .end local v0           #anim:Lcom/sec/android/app/twlauncher/GenericViewAnim;
    .end local v5           #srcPt:Landroid/graphics/PointF;
    .end local v8           #tgtInfo:Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;
    :goto_28
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 4583
    return v9

    .line 4580
    :cond_2c
    invoke-interface {p3, v3}, Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V

    goto :goto_28
.end method

.method public aszShiftOut(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2265
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2266
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    .line 2280
    :cond_b
    :goto_b
    return-void

    .line 2269
    :cond_c
    const-string v1, "aszShiftOut"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->unShiftItems(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 2273
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v1, :cond_28

    .line 2274
    check-cast p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 2276
    :cond_28
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setVisibility(I)V

    .line 2277
    new-instance v1, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    .line 2278
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$makeVisibleLstnr;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$makeVisibleLstnr;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    invoke-virtual {v1, v0, p2, v2}, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->add(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V

    .line 2279
    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/MenuManager$postLayoutAnimateToMM;->post(Landroid/view/View;)V

    goto :goto_b
.end method

.method public cancelDragOverDelayed(Ljava/lang/String;)V
    .registers 3
    .parameter "who"

    .prologue
    .line 1960
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mExecDragOverDelayed:Z

    .line 1961
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    if-eqz v0, :cond_c

    .line 1967
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1974
    :cond_c
    return-void
.end method

.method public close()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1521
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v5, :cond_f

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_f

    .line 1523
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 1525
    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    .line 1527
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v2, :cond_20

    .line 1529
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelRunningTransitionAnimation()V

    .line 1531
    :cond_20
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1533
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1534
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    if-ge v1, v0, :cond_36

    .line 1535
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1534
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1537
    :cond_36
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1538
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1539
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1540
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    .line 1541
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1542
    return-void
.end method

.method public closeFolderOnCurrentPage()Z
    .registers 9

    .prologue
    .line 3078
    const/4 v4, 0x0

    .line 3079
    .local v4, result:Z
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 3080
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_3b

    .line 3081
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3082
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v7, :cond_1c

    .line 3083
    check-cast v6, Lcom/sec/android/app/twlauncher/UserFolder;

    .end local v6           #v:Landroid/view/View;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V

    .line 3084
    const/4 v4, 0x1

    .line 3080
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3093
    .end local v2           #i:I
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3095
    .restart local v6       #v:Landroid/view/View;
    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v3, v0

    .line 3096
    .local v3, page:Lcom/sec/android/app/twlauncher/AppMenu;
    if-nez v3, :cond_2f

    move v5, v4

    .line 3111
    .end local v3           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v4           #result:Z
    .end local v6           #v:Landroid/view/View;
    .local v5, result:I
    :goto_2e
    return v5

    .line 3099
    .end local v5           #result:I
    .restart local v3       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    .restart local v4       #result:Z
    .restart local v6       #v:Landroid/view/View;
    :cond_2f
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v1

    .line 3100
    .local v1, folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-nez v1, :cond_37

    move v5, v4

    .line 3101
    .restart local v5       #result:I
    goto :goto_2e

    .line 3104
    .end local v5           #result:I
    :cond_37
    const/4 v4, 0x1

    .line 3105
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V
    :try_end_3b
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_3b} :catch_3d

    .end local v1           #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    .end local v3           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v6           #v:Landroid/view/View;
    :cond_3b
    :goto_3b
    move v5, v4

    .line 3111
    .restart local v5       #result:I
    goto :goto_2e

    .line 3106
    .end local v5           #result:I
    :catch_3d
    move-exception v7

    goto :goto_3b
.end method

.method public computeScroll()V
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1174
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v7, :cond_e

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1175
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1176
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 1177
    :cond_1b
    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 1238
    :cond_1d
    :goto_1d
    return-void

    .line 1180
    :cond_1e
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1181
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1183
    .local v1, scrollX:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1184
    .local v0, count:I
    if-lt v0, v4, :cond_45

    .line 1185
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_4c

    .line 1186
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 1191
    :cond_45
    :goto_45
    invoke-virtual {p0, v1, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1197
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFrame()V

    goto :goto_1d

    .line 1187
    :cond_4c
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le v1, v2, :cond_45

    .line 1188
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    goto :goto_45

    .line 1198
    .end local v0           #count:I
    .end local v1           #scrollX:I
    :cond_63
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-eq v2, v6, :cond_1d

    .line 1199
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1200
    .restart local v0       #count:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 1202
    if-lt v0, v4, :cond_ae

    .line 1203
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 1204
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-gez v2, :cond_bf

    .line 1205
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 1209
    :cond_89
    :goto_89
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-ltz v2, :cond_98

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_ae

    .line 1210
    :cond_98
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    rem-int/2addr v2, v3

    if-nez v2, :cond_ae

    .line 1211
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1212
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFrame()V

    .line 1217
    :cond_ae
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-eq v2, v7, :cond_bb

    .line 1218
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_bb

    .line 1219
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 1222
    :cond_bb
    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    goto/16 :goto_1d

    .line 1206
    :cond_bf
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v2, v0, :cond_89

    .line 1207
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_89
.end method

.method public createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 4346
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2, v11}, Lcom/sec/android/app/twlauncher/UserFolderModel;->createUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v2

    .line 4347
    invoke-virtual {v2, p2, v11}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->copyFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V

    .line 4351
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_81

    .line 4352
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4389
    :goto_1e
    const/4 v3, 0x0

    .line 4390
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_8d

    .line 4391
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 4392
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 4397
    :goto_29
    new-instance v0, Lcom/sec/android/app/twlauncher/FolderDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetX:F

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetY:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconSize:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconXGap:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYGap:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYOffset:F

    const v10, 0x7f070014

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    .line 4401
    iput-object v0, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 4402
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getBadgeCount()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setBadgeCount(I)V

    .line 4403
    invoke-virtual {v2, v11}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setIsNewDropFolder(Z)V

    .line 4404
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getNewFolderName(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    move v0, v11

    .line 4406
    :goto_5b
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_a6

    .line 4407
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 4408
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v3

    .line 4409
    if-nez v3, :cond_7e

    .line 4410
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    .line 4411
    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v1

    .line 4412
    if-nez v1, :cond_7e

    .line 4413
    const-string v1, "MenuManager"

    const-string v3, "One of the items in the new folder could not be found in app shortcut or main menu"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    :cond_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 4370
    :cond_81
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1e

    .line 4394
    :cond_8d
    const-string v1, "Launcher.MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder image is not a BitmapDrawable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 4418
    :cond_a6
    if-eqz p1, :cond_ac

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;

    if-eqz v0, :cond_c7

    .line 4419
    :cond_ac
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4420
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItemAtEndOfPage(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object p1

    .line 4431
    :goto_ba
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 4432
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    .line 4433
    return-object p1

    .line 4422
    :cond_c7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_e0

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v0, :cond_e0

    .line 4424
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4425
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItemAtEndOfPage(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object p1

    goto :goto_ba

    .line 4428
    :cond_e0
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4429
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    goto :goto_ba
.end method

.method public createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4304
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v2

    move v0, v1

    .line 4308
    :goto_6
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 4309
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v3

    .line 4311
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v4

    .line 4312
    if-eqz v4, :cond_20

    .line 4313
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    .line 4308
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4315
    :cond_20
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v4

    .line 4316
    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v3

    .line 4318
    if-eqz v3, :cond_34

    .line 4319
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    goto :goto_1d

    .line 4322
    :cond_34
    const-string v3, "MenuManager"

    const-string v4, "didnt find one of the icons moving inside the folder in the shortcut zone or the main menu"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 4328
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    .line 4331
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ne v0, p2, :cond_62

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getScreenCount()I

    move-result v2

    if-ge v0, v2, :cond_62

    .line 4332
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 4333
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 4336
    :cond_62
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 4339
    const-string v0, "SPH-D710"

    const-string v2, "SGH-T989"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 4340
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080061

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4343
    :cond_7d
    return-void
.end method

.method discard()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1607
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->revert()V

    .line 1608
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->forceClear(Z)V

    .line 1609
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 1610
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->assignNormalToEdit()Z

    .line 1612
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    .line 1614
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 1616
    :cond_22
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->numFolders()I

    move-result v0

    if-gtz v0, :cond_18

    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isSceneTransitioning()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 746
    :cond_18
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 748
    :cond_1b
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 14
    .parameter "canvas"

    .prologue
    .line 471
    const/4 v4, 0x0

    .line 472
    .local v4, more:Z
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isShown()Z

    move-result v7

    if-nez v7, :cond_10

    .line 474
    const-string v7, "IconDebug"

    const-string v8, "MenuManager dispatchDrawGL !isShown() return false"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v7, 0x0

    .line 573
    :goto_f
    return v7

    .line 478
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 479
    .local v1, childCount:I
    if-gtz v1, :cond_1f

    .line 481
    const-string v7, "IconDebug"

    const-string v8, "MenuManager dispatchDrawGL childCount return false"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v7, 0x0

    goto :goto_f

    .line 484
    :cond_1f
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v7

    if-nez v7, :cond_33

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v7

    if-ltz v7, :cond_75

    .line 487
    :cond_33
    const-string v7, "IconDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MenuManager dispatchDrawGL mLauncher.getQuickViewMainMenu().isOpened()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v7, "IconDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MenuManager dispatchDrawGL mLauncher.getStateQuickNavigation()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v7, 0x0

    goto :goto_f

    .line 492
    :cond_75
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 494
    const/4 v7, 0x1

    if-le v1, v7, :cond_8a

    .line 495
    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-gez v7, :cond_1a3

    .line 496
    add-int/lit8 v7, v1, -0x1

    iput v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 502
    :cond_8a
    :goto_8a
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    if-eqz v7, :cond_b0

    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    if-eqz v7, :cond_b0

    .line 503
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v7, :cond_9b

    .line 504
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 505
    :cond_9b
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v7, :cond_a6

    .line 506
    new-instance v7, Lcom/sec/android/app/twlauncher/MenuManager$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/twlauncher/MenuManager$1;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    .line 513
    :cond_a6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 514
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 517
    :cond_b0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 518
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 521
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 522
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 523
    .local v0, backgroundColor:I
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(I)V

    .line 525
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    add-int/2addr v7, v8

    int-to-float v8, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getTop()I

    move-result v7

    int-to-float v9, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v10

    iget v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    add-int/2addr v7, v10

    int-to-float v10, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getTop()I

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v11

    int-to-float v7, v7

    invoke-virtual {p1, v8, v9, v10, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 528
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 529
    const/4 v7, 0x0

    invoke-virtual {p1, p0, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClipToView(Landroid/view/View;Z)V

    .line 532
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_10e

    .line 533
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->setTouchTrackingEnabled(Z)V

    .line 535
    :cond_10e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCylinderAnimationFactor()F

    move-result v2

    .line 538
    .local v2, factor:F
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 539
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v7

    if-eqz v7, :cond_128

    .line 540
    const v7, 0x3ecccccd

    mul-float/2addr v7, v2

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 542
    :cond_128
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v6

    .line 543
    .local v6, width:I
    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v7, v7

    int-to-float v8, v6

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 545
    .local v5, page:I
    const/4 v7, 0x1

    if-le v1, v7, :cond_152

    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-gtz v7, :cond_142

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    rem-int/2addr v7, v6

    if-eqz v7, :cond_152

    .line 547
    :cond_142
    add-int/lit8 v7, v5, -0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v2, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v7

    or-int/2addr v4, v7

    .line 548
    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v2, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v7

    or-int/2addr v4, v7

    .line 550
    :cond_152
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v5, v2, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v7

    or-int/2addr v4, v7

    .line 551
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 553
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-boolean v7, v7, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    if-eqz v7, :cond_164

    .line 555
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->fadeEdges(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    .line 557
    :cond_164
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->setTouchTrackingEnabled(Z)V

    .line 559
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 561
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_190

    .line 562
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 563
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v3

    .line 564
    .local v3, modeF:F
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_188

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIndicatorTransYLM:I

    if-eqz v7, :cond_188

    .line 565
    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIndicatorTransYLM:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 566
    :cond_188
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageIndicator(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v7

    or-int/2addr v4, v7

    .line 567
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 570
    .end local v3           #modeF:F
    :cond_190
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isCylinderAnimating()Z

    move-result v7

    if-nez v7, :cond_19e

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_1ac

    :cond_19e
    const/4 v7, 0x1

    :goto_19f
    or-int/2addr v4, v7

    move v7, v4

    .line 573
    goto/16 :goto_f

    .line 497
    .end local v0           #backgroundColor:I
    .end local v2           #factor:F
    .end local v5           #page:I
    .end local v6           #width:I
    :cond_1a3
    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v7, v1, :cond_8a

    .line 498
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto/16 :goto_8a

    .line 570
    .restart local v0       #backgroundColor:I
    .restart local v2       #factor:F
    .restart local v5       #page:I
    .restart local v6       #width:I
    :cond_1ac
    const/4 v7, 0x0

    goto :goto_19f
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 7
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v1, 0x1

    .line 4229
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 4230
    .local v0, childCount:I
    if-le v0, v1, :cond_26

    .line 4231
    const/16 v2, 0x11

    if-ne p2, v2, :cond_16

    .line 4232
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-nez v2, :cond_26

    .line 4233
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 4246
    :goto_15
    return v1

    .line 4236
    :cond_16
    const/16 v2, 0x42

    if-ne p2, v2, :cond_26

    .line 4237
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_26

    .line 4238
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto :goto_15

    .line 4244
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    .line 4246
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v1

    goto :goto_15
.end method

.method public dragFromFolder(Lcom/sec/android/app/twlauncher/UserFolder;Landroid/graphics/Point;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;)Z
    .registers 13
    .parameter "aSrc"
    .parameter "aLoc"
    .parameter "aInfo"
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1862
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    .line 1863
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupMode:I

    .line 1864
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupSortMethod:I

    .line 1866
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v6, v5, :cond_15

    .line 1867
    invoke-direct {p0, p4, p3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->dragFromListView(Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V

    .line 1884
    :goto_14
    return v4

    .line 1870
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1871
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastMotion()Landroid/graphics/PointF;

    move-result-object v3

    .line 1872
    .local v3, lastPoint:Landroid/graphics/PointF;
    iget v6, v3, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v2

    .line 1873
    .local v2, index:I
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 1874
    .local v1, dragView:Landroid/view/View;
    if-nez v1, :cond_3d

    .line 1875
    invoke-virtual {p0, v0, v2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    .line 1880
    :cond_3d
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/LauncherManager;->setShowHelp(Z)V

    .line 1881
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 1882
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/LauncherManager;->setShowHelp(Z)V

    .line 1883
    new-instance v4, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/UserFolder;Landroid/view/View;Landroid/graphics/Point;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->post(Ljava/lang/Runnable;)Z

    move v4, v5

    .line 1884
    goto :goto_14
.end method

.method protected drawAppMenuAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z
    .registers 16
    .parameter "canvas"
    .parameter "childIndex"
    .parameter "backgroundFactor"
    .parameter "ignoreTransRef"

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_8f

    .line 619
    :cond_7
    const/4 v5, 0x0

    .line 620
    .local v5, res:Z
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAtLooped(I)Landroid/view/View;

    move-result-object v1

    .line 621
    .local v1, c:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 622
    .local v2, childWidth:I
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 623
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;I)V

    .line 624
    const v6, 0x3a83126f

    cmpl-float v6, p3, v6

    if-lez v6, :cond_20

    .line 626
    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageBackground(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    .line 628
    :cond_20
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ne p2, v6, :cond_48

    .line 629
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 630
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-static {p1, v6, v7}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 631
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Lcom/sec/android/app/twlauncher/DragLayer;->drawGenericViewAnims(ILcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v6

    or-int/2addr v5, v6

    :cond_48
    move-object v0, v1

    .line 633
    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 635
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCylinderAnimationFactor()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_b1

    .line 636
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->setScreenClipExtendedEdge(I)V

    .line 642
    :goto_58
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_6d

    if-ltz p2, :cond_67

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    if-lt p2, v6, :cond_6d

    .line 644
    :cond_67
    const v6, 0x186a0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->setScreenClipExtendedEdge(I)V

    .line 652
    :cond_6d
    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6, p4}, Lcom/sec/android/app/twlauncher/AppMenu;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    move-result v6

    or-int/2addr v5, v6

    .line 654
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    rem-int v6, p2, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollPage:I

    if-ne v6, v7, :cond_8b

    .line 658
    const/high16 v6, 0x3f80

    invoke-virtual {p1, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 659
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v4

    .line 660
    .local v4, pendingDragF:F
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    .line 663
    .end local v4           #pendingDragF:F
    :cond_8b
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 664
    .end local v0           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v1           #c:Landroid/view/View;
    .end local v2           #childWidth:I
    .end local v5           #res:Z
    :goto_8e
    return v5

    .line 614
    :cond_8f
    if-ltz p2, :cond_97

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    if-lt p2, v6, :cond_7

    .line 615
    :cond_97
    const-string v6, "IconDebug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drawAppMenuAt drawAppMenuAt childIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v5, 0x0

    goto :goto_8e

    .line 638
    .restart local v0       #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .restart local v1       #c:Landroid/view/View;
    .restart local v2       #childWidth:I
    .restart local v5       #res:Z
    :cond_b1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_c1

    div-int/lit8 v3, v2, 0x4

    .line 639
    .local v3, clip:I
    :goto_bd
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->setScreenClipExtendedEdge(I)V

    goto :goto_58

    .line 638
    .end local v3           #clip:I
    :cond_c1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x4

    goto :goto_bd
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 7
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 752
    instance-of v1, p2, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v1, :cond_10

    move-object v0, p2

    .line 753
    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 754
    .local v0, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 755
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Scene;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 758
    .end local v0           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_10
    const/4 v1, 0x1

    return v1
.end method

.method protected drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z
    .registers 8
    .parameter "canvas"
    .parameter "childIndex"
    .parameter "backgroundFactor"
    .parameter "ignoreTransRef"

    .prologue
    .line 582
    const/4 v0, 0x0

    .line 583
    .local v0, more:Z
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 584
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawListView(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v0

    .line 589
    :goto_a
    return v0

    .line 586
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawAppMenuAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v0

    goto :goto_a
.end method

.method protected drawListView(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 6
    .parameter "canvas"

    .prologue
    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, more:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 595
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 596
    .local v2, v:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 597
    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    .line 594
    :cond_18
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 598
    .restart local v2       #v:Landroid/view/View;
    :cond_1b
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v3, :cond_18

    .line 599
    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolder;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/UserFolder;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    goto :goto_18

    .line 606
    :cond_26
    return v1
.end method

.method public emptyLauncherManagerList()V
    .registers 2

    .prologue
    .line 3039
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->emptyLauncherManagerList(F)V

    .line 3040
    return-void
.end method

.method public emptyLauncherManagerList(F)V
    .registers 3
    .parameter "aFactor"

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3036
    return-void
.end method

.method public ensureDraggedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-nez v0, :cond_10

    .line 1768
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1770
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method public enterNewMode(I)Z
    .registers 5
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1648
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 1649
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v1, :pswitch_data_42

    .line 1670
    :goto_8
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 1671
    .local v0, savedMode:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1672
    const/4 v0, 0x0

    .line 1674
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 1675
    const/4 v1, 0x1

    return v1

    .line 1651
    .end local v0           #savedMode:I
    :pswitch_15
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1652
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToEditMode()V

    goto :goto_8

    .line 1655
    :pswitch_20
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1656
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalMode()V

    goto :goto_8

    .line 1659
    :pswitch_2b
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1660
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToListMode()V

    goto :goto_8

    .line 1664
    :pswitch_36
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1665
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalMode()V

    goto :goto_8

    .line 1649
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_20
        :pswitch_2b
        :pswitch_15
        :pswitch_36
    .end packed-switch
.end method

.method public findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;
    .registers 5
    .parameter "tag"

    .prologue
    .line 3008
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 3010
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v2, :cond_f

    move-object v0, v1

    .line 3011
    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 3012
    .local v0, itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 3016
    .end local v0           #itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public fixPageAndCellNum()Z
    .registers 10

    .prologue
    .line 1554
    const/4 v5, 0x0

    .line 1555
    .local v5, mustUpdateDb:Z
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, i:I
    :goto_7
    if-ltz v3, :cond_44

    .line 1556
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1557
    .local v1, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, j:I
    :goto_15
    if-ltz v4, :cond_41

    .line 1558
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1559
    .local v2, childView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1560
    .local v6, tag:Ljava/lang/Object;
    instance-of v7, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v7, :cond_29

    if-eqz v6, :cond_29

    instance-of v7, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v7, :cond_2c

    .line 1557
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, -0x1

    goto :goto_15

    :cond_2c
    move-object v0, v6

    .line 1564
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1565
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3d

    .line 1566
    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 1570
    :goto_37
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty()Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_29

    .line 1568
    :cond_3d
    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    goto :goto_37

    .line 1555
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #childView:Landroid/view/View;
    .end local v6           #tag:Ljava/lang/Object;
    :cond_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 1573
    .end local v1           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v4           #j:I
    :cond_44
    return v5
.end method

.method public getAnimateStatus()Z
    .registers 2

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public getAnimationGL()Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 4885
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected getChildAtLooped(I)Landroid/view/View;
    .registers 4
    .parameter "index"

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 578
    .local v0, count:I
    add-int v1, v0, p1

    rem-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected getCylinderAnimationFactor()F
    .registers 4

    .prologue
    .line 770
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->getCylinderAnimationFactor()F

    move-result v0

    .line 771
    .local v0, scrollF:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    return v1
.end method

.method public getDragAnimationXOffset(Landroid/view/View;)I
    .registers 3
    .parameter "v"

    .prologue
    .line 2424
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_c

    .line 2425
    const/4 v0, 0x0

    .line 2427
    :goto_b
    return v0

    :cond_c
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    goto :goto_b
.end method

.method public getDropScreen()I
    .registers 4

    .prologue
    .line 3538
    const/4 v0, -0x1

    .line 3540
    .local v0, page:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_9

    move v1, v0

    .line 3549
    .end local v0           #page:I
    .local v1, page:I
    :goto_8
    return v1

    .line 3544
    .end local v1           #page:I
    .restart local v0       #page:I
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3545
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    :goto_19
    move v1, v0

    .line 3549
    .end local v0           #page:I
    .restart local v1       #page:I
    goto :goto_8

    .line 3547
    .end local v1           #page:I
    .restart local v0       #page:I
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_26

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    :goto_25
    goto :goto_19

    :cond_26
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_25
.end method

.method public getFolderMeasuredHeight()I
    .registers 3

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredHeight()I

    move-result v0

    .line 763
    .local v0, height:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v1

    if-gt v1, v0, :cond_c

    .line 764
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorTop:I

    .line 765
    :cond_c
    return v0
.end method

.method getIndexOfCell(II)I
    .registers 14
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3553
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3554
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildWidth()I

    move-result v4

    .line 3555
    .local v4, childWidth:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildHeight()I

    move-result v3

    .line 3556
    .local v3, childHeight:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getLRPadding()I

    move-result v6

    .line 3559
    .local v6, padding:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 3560
    .local v7, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getHitRect(Landroid/graphics/Rect;)V

    .line 3562
    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 3564
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 3566
    .local v5, col:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_68

    .line 3567
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_63

    .line 3568
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    add-int/lit8 v8, v9, 0x1

    .line 3576
    .local v8, row:I
    :goto_38
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 3577
    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int v9, p1, v9

    sub-int p1, v9, v6

    .line 3578
    iget v9, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v9

    .line 3580
    const/4 v1, 0x0

    .line 3581
    .local v1, cellX:I
    const/4 v2, 0x0

    .line 3583
    .local v2, cellY:I
    if-lez v4, :cond_4f

    .line 3584
    if-gez p1, :cond_6b

    const/4 p1, 0x0

    move v1, p1

    .line 3586
    :cond_4f
    :goto_4f
    if-lez v3, :cond_53

    .line 3587
    div-int v2, p2, v3

    .line 3589
    :cond_53
    add-int/lit8 v9, v5, -0x1

    if-le v1, v9, :cond_59

    .line 3590
    add-int/lit8 v1, v5, -0x1

    .line 3591
    :cond_59
    add-int/lit8 v9, v8, -0x1

    if-le v2, v9, :cond_5f

    .line 3592
    add-int/lit8 v2, v8, -0x1

    .line 3594
    :cond_5f
    mul-int v9, v2, v5

    add-int/2addr v9, v1

    .line 3596
    .end local v1           #cellX:I
    .end local v2           #cellY:I
    :goto_62
    return v9

    .line 3570
    .end local v8           #row:I
    :cond_63
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    add-int/lit8 v8, v9, -0x1

    .restart local v8       #row:I
    goto :goto_38

    .line 3573
    .end local v8           #row:I
    :cond_68
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .restart local v8       #row:I
    goto :goto_38

    .line 3584
    .restart local v1       #cellX:I
    .restart local v2       #cellY:I
    :cond_6b
    div-int v1, p1, v4

    goto :goto_4f

    .line 3596
    .end local v1           #cellX:I
    .end local v2           #cellY:I
    :cond_6e
    const/4 v9, -0x1

    goto :goto_62
.end method

.method public getLocAndAnimDur(Landroid/view/View;)Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;
    .registers 11
    .parameter "aView"

    .prologue
    .line 4543
    new-instance v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;

    invoke-direct {v4, p0}, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    .line 4545
    .local v4, res:Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;
    const/4 v0, 0x0

    .line 4546
    .local v0, appMenuIndex:I
    const/4 v5, 0x0

    .line 4548
    .local v5, tempAppMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .end local v5           #tempAppMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v5, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4549
    .restart local v5       #tempAppMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4551
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v2

    .line 4552
    .local v2, currScrIndex:I
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4553
    .local v1, currScr:Lcom/sec/android/app/twlauncher/AppMenu;
    iget-object v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mRelPt:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 4554
    const/16 v6, 0x12c

    iput v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    .line 4555
    if-eq v0, v2, :cond_56

    .line 4556
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v6

    sub-int v7, v0, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int v3, v6, v7

    .line 4557
    .local v3, delta:I
    if-ge v0, v2, :cond_57

    .line 4558
    iget-object v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mRelPt:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    int-to-float v8, v3

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 4562
    :goto_4b
    iget v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    iget v7, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    iget v8, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mAnimDur:I

    .line 4564
    .end local v3           #delta:I
    :cond_56
    return-object v4

    .line 4560
    .restart local v3       #delta:I
    :cond_57
    iget-object v6, v4, Lcom/sec/android/app/twlauncher/MenuManager$viewLocInfo;->mRelPt:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    goto :goto_4b
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 1691
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    return v0
.end method

.method public getModeCylinderFactor()F
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method public getPhantomItemViews()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4437
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4438
    .local v7, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/MenuItemView;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 4442
    .local v1, appMenuCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v1, :cond_34

    .line 4443
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4444
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    .line 4445
    .local v4, itemViewCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_17
    if-ge v5, v4, :cond_31

    .line 4446
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4447
    .local v2, child:Landroid/view/View;
    instance-of v8, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v8, :cond_24

    .line 4445
    :cond_21
    :goto_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_24
    move-object v6, v2

    .line 4450
    check-cast v6, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 4451
    .local v6, menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 4452
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 4442
    .end local v2           #child:Landroid/view/View;
    .end local v6           #menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 4456
    .end local v0           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v4           #itemViewCount:I
    .end local v5           #j:I
    :cond_34
    return-object v7
.end method

.method public getScaleRatio()Landroid/graphics/PointF;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 5068
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->getScaleRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getScaledRect()Landroid/graphics/RectF;
    .registers 2

    .prologue
    .line 4568
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .registers 9
    .parameter "tag"

    .prologue
    .line 3020
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .line 3021
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_5
    if-ge v4, v5, :cond_25

    .line 3022
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3023
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    .line 3024
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    if-ge v3, v2, :cond_22

    .line 3025
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3026
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_1f

    .line 3031
    .end local v0           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :goto_1e
    return-object v1

    .line 3024
    .restart local v0       #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 3021
    .end local v1           #child:Landroid/view/View;
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3031
    .end local v0           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_25
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getWhichScreen()I
    .registers 9

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v2

    .line 1290
    .local v2, screenWidth:I
    const/4 v4, 0x0

    .line 1291
    .local v4, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1292
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 1295
    .local v3, scrollX:I
    if-lez v2, :cond_f

    if-gtz v1, :cond_11

    :cond_f
    move v5, v4

    .line 1320
    .end local v4           #whichScreen:I
    .local v5, whichScreen:I
    :goto_10
    return v5

    .line 1298
    .end local v5           #whichScreen:I
    .restart local v4       #whichScreen:I
    :cond_11
    const/4 v6, 0x2

    if-lt v1, v6, :cond_24

    .line 1299
    if-gez v3, :cond_1e

    .line 1300
    div-int/lit8 v6, v2, 0x2

    sub-int v6, v3, v6

    div-int v4, v6, v2

    :goto_1c
    move v5, v4

    .line 1320
    .end local v4           #whichScreen:I
    .restart local v5       #whichScreen:I
    goto :goto_10

    .line 1302
    .end local v5           #whichScreen:I
    .restart local v4       #whichScreen:I
    :cond_1e
    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    div-int v4, v6, v2

    goto :goto_1c

    .line 1305
    :cond_24
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    sub-int v0, v6, v7

    .line 1307
    .local v0, availableToScroll:I
    if-gez v3, :cond_39

    .line 1308
    const/4 v4, 0x0

    goto :goto_1c

    .line 1309
    :cond_39
    if-gtz v0, :cond_3e

    .line 1310
    add-int/lit8 v4, v1, -0x1

    goto :goto_1c

    .line 1312
    :cond_3e
    if-lez v2, :cond_46

    .line 1313
    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    div-int v4, v6, v2

    goto :goto_1c

    .line 1315
    :cond_46
    const/4 v4, 0x0

    goto :goto_1c
.end method

.method public invalidate()V
    .registers 1

    .prologue
    .line 1329
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 1330
    return-void
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public leaveCurrentMode(I)Z
    .registers 3
    .parameter "mode"

    .prologue
    .line 1619
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrevMode:I

    .line 1624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    .line 1626
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disablePitchDetection()V

    .line 1628
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1629
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 1630
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1632
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeAllViews()V

    .line 1633
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrevMode:I

    packed-switch v0, :pswitch_data_3c

    .line 1644
    :cond_24
    :goto_24
    const/4 v0, 0x1

    :goto_25
    return v0

    .line 1635
    :pswitch_26
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->close(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1636
    const/4 v0, 0x0

    goto :goto_25

    .line 1640
    :pswitch_34
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    .line 1641
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    goto :goto_24

    .line 1633
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_26
    .end packed-switch
.end method

.method public lock()V
    .registers 2

    .prologue
    .line 1724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    .line 1725
    return-void
.end method

.method public makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 2549
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2550
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 2553
    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    if-eq v0, v1, :cond_71

    .line 2554
    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 2555
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    iput v1, v5, Landroid/content/res/Configuration;->orientation:I

    .line 2557
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2558
    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    move v2, v0

    .line 2562
    :goto_1e
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_67

    .line 2563
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const v1, 0x7f030009

    invoke-virtual {v0, p1, v6, p2, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 2564
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    move-object v0, p1

    .line 2565
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 2569
    :goto_39
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2570
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2571
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2572
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2574
    const-wide/16 v6, -0x1

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    .line 2575
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_5b

    move-object v0, v1

    .line 2576
    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setDrawBadgeCountOn(Z)V

    .line 2579
    :cond_5b
    if-eq v2, v3, :cond_66

    .line 2580
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2581
    iput v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 2582
    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2585
    :cond_66
    return-object v1

    .line 2567
    :cond_67
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const v1, 0x7f030002

    invoke-virtual {v0, p1, v6, p2, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    goto :goto_39

    :cond_71
    move v2, v3

    goto :goto_1e
.end method

.method public menuedit_save()V
    .registers 1

    .prologue
    .line 1601
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllEmptyPages()I

    .line 1602
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->assignEditToNormal()Z

    .line 1603
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    .line 1604
    return-void
.end method

.method public onAddDefaultFolder(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 2395
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2396
    .local v3, tag:Ljava/lang/Object;
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2398
    .local v1, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v4, :cond_2a

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v4, v5, :cond_2a

    move-object v0, v3

    .line 2399
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 2400
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    move-result-object v2

    .line 2401
    .local v2, newView:Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 2403
    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v2           #newView:Landroid/view/View;
    :cond_2a
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 4892
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 4893
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    .line 4894
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4895
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    .line 4897
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 4898
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    if-ge v1, v0, :cond_3b

    .line 4899
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4898
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 4901
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_27
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 4902
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    .line 4903
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 4906
    :cond_3b
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 4912
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 4889
    return-void
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    .line 3943
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->termUpdateDB()V

    .line 3944
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v0

    .line 3945
    const-string v1, "makeFolderInfo"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3946
    const-string v1, "makePageInfo"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3948
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6a

    .line 3950
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->getMakePageInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    .line 3951
    if-eqz v1, :cond_41

    .line 3952
    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving makePageInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    const-string v2, "makePageInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3955
    :cond_41
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->getMakeFolderInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    .line 3956
    if-eqz v1, :cond_6a

    .line 3957
    const-string v2, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving makeFolderInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    const-string v2, "makeFolderInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3961
    :cond_6a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    .line 3962
    return-void
.end method

.method public onDragEnd()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2382
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disableRollNavigation()V

    .line 2383
    const-string v0, "onDragEndMM"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 2384
    const-string v0, "onDragEndMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    .line 2385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2386
    sput v2, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 2387
    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2388
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2389
    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    .line 2390
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2391
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnterMM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->ensureDraggedView()Landroid/view/View;

    .line 1761
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    .line 1762
    iput p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    .line 1764
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1776
    const-string v0, "onDragExitMM"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1777
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1778
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    .line 1779
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    .line 1780
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1782
    :cond_1c
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeDragGap()Z

    .line 1783
    if-eq p1, p0, :cond_26

    .line 1784
    const-string v0, "onDragExitMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    .line 1787
    :cond_26
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 1789
    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 1790
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 1792
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1982
    const-string v0, "onDragOverMM"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->ensureDraggedView()Landroid/view/View;

    .line 1984
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v0, :cond_42

    .line 1985
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1986
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_42

    .line 1987
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1988
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1990
    sub-int v1, p2, p4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 1994
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x4282

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 2020
    :goto_41
    return-void

    .line 2000
    :cond_42
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_58

    const/16 v0, 0x32

    if-lt p2, v0, :cond_58

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    if-le p2, v0, :cond_62

    .line 2002
    :cond_58
    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2003
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2004
    const-string v0, "onDragOverMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    goto :goto_41

    .line 2010
    :cond_62
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7a

    .line 2011
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->setInfo(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 2016
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_41

    .line 2018
    :cond_7a
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragOverDelayed(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    goto :goto_41
.end method

.method public onDragOverDelayed(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v4, 0x4000

    .line 2030
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

    .line 2031
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    .line 2032
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    .line 2033
    iput p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    .line 2037
    :cond_25
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 2038
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->detectTransRefCollision(Landroid/graphics/Point;)Z

    .line 2040
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 2041
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 2045
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorTop:I

    if-lt v3, v0, :cond_48

    .line 2046
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeDragGap()Z

    .line 2048
    :cond_48
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v6

    .line 2049
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v7

    .line 2051
    const/4 v0, -0x1

    if-eq v6, v0, :cond_87

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    if-ne v6, v0, :cond_5b

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    if-eq v7, v0, :cond_87

    .line 2060
    :cond_5b
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_8f

    .line 2061
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    move-object v1, p0

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragSource(Lcom/sec/android/app/twlauncher/DragSource;IIII)V

    .line 2065
    :goto_6b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2066
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2068
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2069
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2070
    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    .line 2071
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2073
    :cond_87
    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2074
    iput v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2076
    invoke-super {p0, v2, v3}, Lcom/sec/android/app/twlauncher/Scene;->setPageOnDragOver(II)V

    .line 2077
    return-void

    .line 2063
    :cond_8f
    const-string v0, "onDragOverDelayedMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    goto :goto_6b
.end method

.method public onDragSourceChanged(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2148
    const-string v0, "onDragSourceChangedMM"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 2149
    if-eq p2, p0, :cond_21

    .line 2150
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disableRollNavigation()V

    .line 2151
    const-string v0, "onDragSourceChanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    .line 2152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2153
    sput v2, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 2154
    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2155
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2156
    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    .line 2157
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2159
    :cond_21
    return-void
.end method

.method public onDragStart(Landroid/view/View;FFLcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .registers 11
    .parameter "v"
    .parameter "x"
    .parameter "y"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v3, 0x0

    .line 2407
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2408
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2410
    instance-of v2, p4, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v2, :cond_1d

    move-object v1, p4

    .line 2411
    check-cast v1, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 2412
    .local v1, shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2413
    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    .line 2421
    .end local v1           #shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :goto_1c
    return-void

    .line 2414
    :cond_1d
    instance-of v2, p4, Lcom/sec/android/app/twlauncher/LauncherManager;

    if-eqz v2, :cond_2b

    .line 2415
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2416
    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    goto :goto_1c

    .line 2418
    :cond_2b
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2419
    .local v0, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    goto :goto_1c
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2162
    const-string v2, "onDropMM"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 2163
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2164
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v2

    .line 2165
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    .line 2166
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 2168
    :cond_1b
    const/4 v2, 0x0

    sput v2, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 2170
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-nez v2, :cond_24

    .line 2171
    const/4 v2, 0x1

    .line 2261
    :goto_23
    return v2

    .line 2173
    :cond_24
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2178
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2179
    const/4 v3, 0x2

    new-array v6, v3, [I

    .line 2182
    new-instance v4, Landroid/graphics/Point;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 2183
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->detectTransRefCollision(Landroid/graphics/Point;)Z

    .line 2185
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 2186
    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 2190
    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v12

    .line 2191
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v13

    .line 2192
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2193
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2194
    instance-of v3, v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_89

    move-object v3, v4

    .line 2195
    check-cast v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 2196
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v8

    if-eqz v8, :cond_89

    .line 2197
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v5, v2, :cond_81

    .line 2199
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    .line 2209
    :goto_7f
    const/4 v2, 0x1

    goto :goto_23

    .line 2202
    :cond_81
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    goto :goto_7f

    .line 2212
    :cond_89
    const/4 v3, -0x1

    if-ne v12, v3, :cond_8e

    .line 2213
    const/4 v2, 0x0

    goto :goto_23

    .line 2215
    :cond_8e
    const/4 v5, 0x0

    .line 2216
    const/4 v3, 0x0

    .line 2217
    instance-of v8, v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v8, :cond_136

    .line 2218
    check-cast v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 2219
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropFolder()Z

    move-result v8

    if-eqz v8, :cond_136

    .line 2222
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    move-result-object v3

    .line 2223
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    .line 2228
    const/4 v4, 0x1

    .line 2231
    :goto_ab
    if-nez v3, :cond_c4

    .line 2232
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2233
    if-eqz v3, :cond_be

    instance-of v3, v3, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v3, :cond_be

    .line 2234
    const-string v3, "onDropMM"

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    .line 2236
    :cond_be
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v3, v12}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2238
    :cond_c4
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2239
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 2240
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    .line 2241
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2242
    if-eqz v4, :cond_dd

    .line 2243
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 2245
    :cond_dd
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(Landroid/view/View;[I)V

    .line 2247
    const/4 v3, 0x0

    aget v3, v6, v3

    const/4 v4, 0x1

    aget v4, v6, v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getPointInScaledDimension(II)Landroid/graphics/PointF;

    move-result-object v7

    .line 2250
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v3

    .line 2251
    iget v4, v3, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 2252
    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v6, v3, v2

    .line 2254
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    int-to-float v4, v4

    iget v5, v7, Landroid/graphics/PointF;->x:F

    int-to-float v6, v6

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    int-to-float v9, v9

    const/16 v10, 0x12c

    new-instance v11, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;

    iget-object v14, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-direct {v11, p0, v14, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;)V

    invoke-interface/range {v2 .. v11}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFILcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V

    .line 2257
    iput v12, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2258
    iput v13, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2259
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 2261
    const/4 v2, 0x1

    goto/16 :goto_23

    :cond_136
    move v4, v5

    goto/16 :goto_ab
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDropCompletedMM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 2332
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->ensureDraggedView()Landroid/view/View;

    .line 2333
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_55

    .line 2335
    if-eqz p6, :cond_a7

    .line 2336
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 2337
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_55

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    if-ne p1, v0, :cond_75

    .line 2371
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    .line 2372
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disableRollNavigation()V

    .line 2373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2374
    sput v3, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 2375
    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2376
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2377
    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    .line 2378
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2379
    return-void

    .line 2331
    :cond_72
    const-string v0, "No parent"

    goto :goto_2e

    .line 2340
    :cond_75
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->hasDropTarget(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 2346
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2347
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v1, :cond_55

    .line 2348
    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->phantomizeDragView(Lcom/sec/android/app/twlauncher/AppMenu;)Z

    goto :goto_55

    .line 2353
    :cond_93
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v0, :cond_9d

    .line 2354
    const-string v0, "onDropCompletedMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    goto :goto_55

    .line 2357
    :cond_9d
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_55

    .line 2358
    const-string v0, "onDropCompletedMM"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    goto :goto_55

    .line 2362
    :cond_a7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->hasDropTarget(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 2363
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2364
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v0, :cond_55

    .line 2365
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    goto :goto_55
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 22
    .parameter "ev"

    .prologue
    .line 808
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 812
    .local v5, action:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    move/from16 v17, v0

    if-nez v17, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    move/from16 v17, v0

    if-eqz v17, :cond_43

    .line 813
    :cond_14
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_20

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v5, v0, :cond_41

    .line 815
    :cond_20
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_41

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 819
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 822
    :cond_41
    const/4 v8, 0x1

    .line 956
    :goto_42
    return v8

    .line 825
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_53

    .line 826
    const/4 v8, 0x0

    goto :goto_42

    .line 828
    :cond_53
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 829
    .local v11, transX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 832
    .local v12, transY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v9

    .line 833
    .local v9, lastAbsTouch:Landroid/graphics/PointF;
    iget v3, v9, Landroid/graphics/PointF;->x:F

    .line 834
    .local v3, absX:F
    iget v4, v9, Landroid/graphics/PointF;->y:F

    .line 835
    .local v4, absY:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_87

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 843
    :cond_87
    const/4 v8, 0x0

    .line 844
    .local v8, intercept:Z
    packed-switch v5, :pswitch_data_2d2

    .line 955
    :cond_8b
    :goto_8b
    :pswitch_8b
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_42

    .line 847
    :pswitch_91
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12c

    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a9

    .line 849
    const/4 v8, 0x0

    goto :goto_42

    .line 850
    :cond_a9
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 851
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v17

    if-nez v17, :cond_8b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v17

    if-gez v17, :cond_8b

    .line 855
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    sub-float v17, v4, v17

    move/from16 v0, v17

    float-to-int v7, v0

    .line 856
    .local v7, dy:I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    sub-float v17, v3, v17

    move/from16 v0, v17

    float-to-int v6, v0

    .line 857
    .local v6, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    move/from16 v17, v0

    mul-int v18, v7, v7

    mul-int v19, v6, v6

    add-int v18, v18, v19

    sub-int v10, v17, v18

    .line 862
    .local v10, pinchDelta:I
    const/16 v17, 0x2710

    move/from16 v0, v17

    if-le v10, v0, :cond_8b

    .line 863
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 866
    const/4 v8, 0x1

    goto/16 :goto_8b

    .line 871
    .end local v6           #dx:I
    .end local v7           #dy:I
    .end local v10           #pinchDelta:I
    :cond_12c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    move/from16 v17, v0

    sub-float v17, v3, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v13, v0

    .line 872
    .local v13, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    move/from16 v17, v0

    sub-float v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 874
    .local v15, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v13, v0, :cond_172

    const/4 v14, 0x1

    .line 875
    .local v14, xMoved:Z
    :goto_155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v15, v0, :cond_174

    const/16 v16, 0x1

    .line 877
    .local v16, yMoved:Z
    :goto_161
    if-nez v14, :cond_165

    if-eqz v16, :cond_8b

    .line 879
    :cond_165
    if-eqz v14, :cond_177

    .line 880
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 881
    const/4 v8, 0x1

    goto/16 :goto_8b

    .line 874
    .end local v14           #xMoved:Z
    .end local v16           #yMoved:Z
    :cond_172
    const/4 v14, 0x0

    goto :goto_155

    .line 875
    .restart local v14       #xMoved:Z
    :cond_174
    const/16 v16, 0x0

    goto :goto_161

    .line 883
    .restart local v16       #yMoved:Z
    :cond_177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v17

    if-nez v17, :cond_8b

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8b

    .line 886
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 887
    const/4 v8, 0x1

    goto/16 :goto_8b

    .line 897
    .end local v13           #xDiff:I
    .end local v14           #xMoved:Z
    .end local v15           #yDiff:I
    .end local v16           #yMoved:Z
    :pswitch_1aa
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 898
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    .line 899
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    .line 900
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 901
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v17

    if-eqz v17, :cond_204

    .line 910
    const/4 v8, 0x1

    .line 911
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 918
    :cond_1e3
    :goto_1e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_8b

    .line 919
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_8b

    .line 913
    :cond_204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v17

    if-nez v17, :cond_238

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v17

    if-nez v17, :cond_238

    float-to-int v0, v11

    move/from16 v17, v0

    float-to-int v0, v12

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e3

    .line 915
    :cond_238
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 916
    const/4 v8, 0x1

    goto :goto_1e3

    .line 927
    :pswitch_242
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 928
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8b

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 933
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_8b

    .line 938
    :pswitch_26d
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8b

    .line 940
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    sub-float v17, v4, v17

    move/from16 v0, v17

    float-to-int v7, v0

    .line 941
    .restart local v7       #dy:I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    sub-float v17, v3, v17

    move/from16 v0, v17

    float-to-int v6, v0

    .line 943
    .restart local v6       #dx:I
    mul-int v17, v7, v7

    mul-int v18, v6, v6

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    goto/16 :goto_8b

    .line 948
    .end local v6           #dx:I
    .end local v7           #dy:I
    :pswitch_2bb
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_8b

    .line 949
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    goto/16 :goto_8b

    .line 844
    nop

    :pswitch_data_2d2
    .packed-switch 0x0
        :pswitch_1aa
        :pswitch_242
        :pswitch_91
        :pswitch_242
        :pswitch_8b
        :pswitch_26d
        :pswitch_2bb
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 386
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    .line 388
    const/4 v1, 0x0

    .line 390
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    .line 391
    .local v3, count:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v8, :cond_32

    .line 392
    const/4 v4, 0x0

    .local v4, i:I
    :goto_10
    if-ge v4, v3, :cond_50

    .line 393
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_29

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 396
    .local v2, childWidth:I
    add-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 399
    .end local v2           #childWidth:I
    :cond_29
    instance-of v5, v0, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v5, :cond_2f

    .line 400
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    .line 392
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 405
    .end local v0           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_32
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_33
    if-ge v4, v3, :cond_50

    .line 406
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 407
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_4d

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 409
    .restart local v2       #childWidth:I
    add-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 410
    add-int/2addr v1, v2

    .line 405
    .end local v2           #childWidth:I
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 414
    .end local v0           #child:Landroid/view/View;
    :cond_50
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v5, :cond_5b

    .line 415
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    sub-int v6, p4, p2

    invoke-virtual {v5, v3, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setLayout(II)V

    .line 416
    :cond_5b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/4 v6, 0x0

    .line 357
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->onMeasure(II)V

    .line 359
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 360
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 361
    .local v4, widthMode:I
    if-eq v4, v5, :cond_18

    .line 362
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 365
    :cond_18
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 366
    .local v1, heightMode:I
    if-eq v1, v5, :cond_26

    .line 367
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 372
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 373
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2b
    if-ge v2, v0, :cond_37

    .line 374
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 377
    :cond_37
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    if-eqz v5, :cond_43

    .line 378
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 379
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    .line 381
    :cond_43
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .registers 5
    .parameter "view"
    .parameter "dragAction"

    .prologue
    .line 3351
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 3352
    if-nez p2, :cond_b

    .line 3353
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3357
    :cond_b
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 10
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x0

    .line 4151
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_9

    .line 4174
    :cond_8
    :goto_8
    return v4

    .line 4155
    :cond_9
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2a

    .line 4156
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 4161
    .local v1, focusableScreen:I
    :goto_10
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4162
    .local v3, v:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object v0, v3

    .line 4165
    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4166
    .local v0, child:Lcom/sec/android/app/twlauncher/AppMenu;
    if-eqz v0, :cond_8

    .line 4169
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v2

    .line 4170
    .local v2, folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-eqz v2, :cond_2d

    .line 4171
    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/twlauncher/UserFolder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    goto :goto_8

    .line 4158
    .end local v0           #child:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v1           #focusableScreen:I
    .end local v2           #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    .end local v3           #v:Landroid/view/View;
    :cond_2a
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .restart local v1       #focusableScreen:I
    goto :goto_10

    .line 4173
    .restart local v0       #child:Lcom/sec/android/app/twlauncher/AppMenu;
    .restart local v2       #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    .restart local v3       #v:Landroid/view/View;
    :cond_2d
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->requestFocus(ILandroid/graphics/Rect;)Z

    goto :goto_8
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0x14

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4929
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    if-eq v0, v1, :cond_10

    .line 4930
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 4980
    :cond_f
    :goto_f
    return-void

    .line 4935
    :cond_10
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 4937
    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_42

    .line 4938
    const-string v0, "Launcher.MenuManager"

    const-string v1, "Unable to compute pitch/roll; near free fall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4940
    :cond_42
    const/high16 v1, 0x3f80

    div-float v0, v1, v0

    .line 4942
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    mul-float/2addr v1, v0

    .line 4943
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    mul-float/2addr v0, v2

    .line 4944
    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x42652ee1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4947
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$9;->$SwitchMap$com$sec$android$app$twlauncher$MenuManager$PitchState:[I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_146

    goto :goto_f

    .line 4949
    :pswitch_6c
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_f

    if-lt v1, v8, :cond_f

    .line 4950
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    .line 4951
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitLowBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 4952
    const-string v2, "Launcher.MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAIT_LOW_BOUND. pitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Az: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 4956
    :pswitch_9c
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_f

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    sub-int/2addr v2, v1

    if-lt v2, v8, :cond_f

    .line 4957
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kIconsRaised:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 4958
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setRaisedIcons()V

    .line 4959
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIconStartTime:J

    .line 4960
    const-string v2, "Launcher.MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ICONS_RAISED. pitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Az: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 4964
    :pswitch_d6
    cmpg-float v2, v0, v5

    if-ltz v2, :cond_eb

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    if-ge v1, v2, :cond_eb

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIconStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_f

    .line 4966
    :cond_eb
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->resetRaisedIcons()V

    .line 4967
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitHighBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 4968
    const-string v2, "Launcher.MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAIT_HIGH_BOUND. pitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Az: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 4972
    :pswitch_116
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_f

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    if-lt v1, v2, :cond_f

    .line 4973
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitLowBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 4974
    const-string v2, "Launcher.MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAIT_LOW_BOUND. pitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Az: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 4947
    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_9c
        :pswitch_d6
        :pswitch_116
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 31
    .parameter "ev"

    .prologue
    .line 961
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 965
    .local v6, action:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    move/from16 v25, v0

    if-nez v25, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    move/from16 v25, v0

    if-eqz v25, :cond_44

    .line 966
    :cond_14
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_20

    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v6, v0, :cond_41

    .line 968
    :cond_20
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_41

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/VelocityTracker;->recycle()V

    .line 972
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 975
    :cond_41
    const/16 v25, 0x1

    .line 1169
    :goto_43
    return v25

    .line 977
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-nez v25, :cond_56

    .line 978
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 980
    :cond_56
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 981
    .local v17, transX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 984
    .local v18, transY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v11

    .line 985
    .local v11, lastAbsTouch:Landroid/graphics/PointF;
    iget v4, v11, Landroid/graphics/PointF;->x:F

    .line 986
    .local v4, absX:F
    iget v5, v11, Landroid/graphics/PointF;->y:F

    .line 987
    .local v5, absY:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8a

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 993
    :cond_8a
    packed-switch v6, :pswitch_data_49a

    .line 1169
    :cond_8d
    :goto_8d
    const/16 v25, 0x1

    goto :goto_43

    .line 996
    :pswitch_90
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 997
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v25

    if-eqz v25, :cond_b7

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    .line 1008
    :cond_b7
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8d

    .line 1009
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8d

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v25 .. v28}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    goto :goto_8d

    .line 1016
    :pswitch_ff
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_274

    .line 1017
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    move/from16 v25, v0

    sub-float v25, v25, v4

    move/from16 v0, v25

    float-to-int v9, v0

    .line 1018
    .local v9, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    move/from16 v25, v0

    sub-float v25, v25, v5

    move/from16 v0, v25

    float-to-int v10, v0

    .line 1020
    .local v10, deltaY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    move/from16 v25, v0

    if-eqz v25, :cond_14b

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_14b

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_8d

    .line 1026
    :cond_14b
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 1027
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1b5

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v25

    if-nez v25, :cond_18c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v25 .. v28}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v25

    if-eqz v25, :cond_1b5

    .line 1032
    :cond_18c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    float-to-int v0, v4

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v25 .. v28}, Lcom/sec/android/app/twlauncher/PageIndicator;->getTouchScrollOffset(IIZ)I

    move-result v16

    .line 1033
    .local v16, newScrollX:I
    const/16 v25, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_1b5

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setFastScrollFactor()V

    .line 1035
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto/16 :goto_8d

    .line 1042
    .end local v16           #newScrollX:I
    :cond_1b5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_205

    .line 1046
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v13

    .line 1050
    .local v13, minMaxScrollPadding:I
    :goto_1d3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    .line 1051
    .local v7, childCount:I
    if-gez v9, :cond_235

    .line 1052
    neg-int v14, v13

    .line 1053
    .local v14, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v0, v14, :cond_8d

    .line 1054
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v25, v0

    if-lez v25, :cond_20c

    .line 1055
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8d

    .line 1057
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_8d

    .line 1048
    .end local v7           #childCount:I
    .end local v13           #minMaxScrollPadding:I
    .end local v14           #minScrollX:I
    :cond_205
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v25

    div-int/lit8 v13, v25, 0x4

    .restart local v13       #minMaxScrollPadding:I
    goto :goto_1d3

    .line 1060
    .restart local v7       #childCount:I
    .restart local v14       #minScrollX:I
    :cond_20c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8d

    .line 1062
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v25, v0

    sub-int v25, v14, v25

    move/from16 v0, v25

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_8d

    .line 1066
    .end local v14           #minScrollX:I
    :cond_235
    if-lez v9, :cond_8d

    .line 1067
    add-int/lit8 v25, v7, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v26

    mul-int v25, v25, v26

    add-int v12, v25, v13

    .line 1068
    .local v12, maxScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v0, v12, :cond_8d

    .line 1069
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8d

    .line 1071
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v25, v0

    sub-int v25, v12, v25

    move/from16 v0, v25

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_8d

    .line 1076
    .end local v7           #childCount:I
    .end local v9           #deltaX:I
    .end local v10           #deltaY:I
    .end local v12           #maxScrollX:I
    .end local v13           #minMaxScrollPadding:I
    :cond_274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    move/from16 v25, v0

    sub-float v25, v4, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1077
    .local v21, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    move/from16 v25, v0

    sub-float v25, v5, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1082
    .local v23, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-le v0, v1, :cond_321

    const/16 v22, 0x1

    .line 1083
    .local v22, xMoved:Z
    :goto_2a4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-le v0, v1, :cond_324

    const/16 v24, 0x1

    .line 1085
    .local v24, yMoved:Z
    :goto_2b2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v25

    if-lez v25, :cond_2d4

    if-nez v22, :cond_2bc

    if-eqz v24, :cond_2d4

    .line 1087
    :cond_2bc
    if-eqz v22, :cond_2d4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2d4

    .line 1089
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1093
    :cond_2d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8d

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v25 .. v28}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v25

    if-nez v25, :cond_8d

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v25

    if-nez v25, :cond_8d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v25

    if-nez v25, :cond_8d

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    goto/16 :goto_8d

    .line 1082
    .end local v22           #xMoved:Z
    .end local v24           #yMoved:Z
    :cond_321
    const/16 v22, 0x0

    goto :goto_2a4

    .line 1083
    .restart local v22       #xMoved:Z
    :cond_324
    const/16 v24, 0x0

    goto :goto_2b2

    .line 1105
    .end local v21           #xDiff:I
    .end local v22           #xMoved:Z
    .end local v23           #yDiff:I
    :pswitch_327
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTestCount:I

    .line 1107
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_390

    .line 1108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3f5

    .line 1109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_388

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_388

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1112
    :cond_388
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 1151
    :cond_390
    :goto_390
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v25

    if-eqz v25, :cond_3d7

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/PageIndicator;->getCurrentPage()I

    move-result v15

    .line 1155
    .local v15, newScreen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/PageIndicator;->exitSeekBarMode()V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1160
    .end local v15           #newScreen:I
    :cond_3d7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearFastScrollFactor()V

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8d

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/VelocityTracker;->recycle()V

    .line 1165
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_8d

    .line 1121
    :cond_3f5
    const/16 v25, 0x1

    const/16 v26, 0x3e8

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/twlauncher/SamsungUtils;->acquireDVFSlock(II)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 1128
    .local v19, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v25, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mMaximumVelocity:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    .line 1129
    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1135
    .local v20, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    .line 1136
    .restart local v7       #childCount:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 1138
    .local v8, currentScreen:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    move/from16 v25, v0

    move/from16 v0, v20

    move/from16 v1, v25

    if-le v0, v1, :cond_45a

    if-ltz v8, :cond_45a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v25

    if-nez v25, :cond_45a

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v25, v0

    add-int/lit8 v26, v8, -0x1

    const/16 v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    goto/16 :goto_390

    .line 1142
    :cond_45a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    move/from16 v25, v0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_494

    add-int/lit8 v25, v7, -0x1

    move/from16 v0, v25

    if-gt v8, v0, :cond_494

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v25

    if-nez v25, :cond_494

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v25, v0

    add-int/lit8 v26, v8, 0x1

    const/16 v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    goto/16 :goto_390

    .line 1147
    :cond_494
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToDestination()V

    goto/16 :goto_390

    .line 993
    nop

    :pswitch_data_49a
    .packed-switch 0x0
        :pswitch_90
        :pswitch_327
        :pswitch_ff
        :pswitch_327
    .end packed-switch
.end method

.method public open()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1501
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1503
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1504
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 1505
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1504
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1507
    :cond_17
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1508
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1509
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1510
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1511
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 1512
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1513
    return-void
.end method

.method public phantomizeDragView(Lcom/sec/android/app/twlauncher/AppMenu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3725
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 3726
    const-string v0, "phantomizeDragView"

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeDragView(Ljava/lang/String;)V

    .line 3727
    if-nez p1, :cond_17

    .line 3728
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object p1, v0

    .line 3730
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 3732
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    move v0, v1

    .line 3735
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public removeFolderCB(ZLcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .registers 13
    .parameter "aRemove"
    .parameter "aFolderToRemove"

    .prologue
    .line 1888
    if-eqz p1, :cond_54

    if-eqz p2, :cond_54

    .line 1892
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v7

    .line 1893
    .local v7, page:I
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1894
    .local v3, curScr:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    .line 1895
    .local v2, count:I
    add-int/lit8 v4, v2, -0x1

    .local v4, i:I
    :goto_14
    if-ltz v4, :cond_54

    .line 1896
    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1897
    .local v1, childView:Landroid/view/View;
    instance-of v9, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v9, :cond_21

    .line 1895
    :cond_1e
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 1900
    :cond_21
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 1901
    .local v8, tag:Ljava/lang/Object;
    if-eqz v8, :cond_1e

    instance-of v9, v8, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v9, :cond_1e

    move-object v5, v8

    .line 1904
    check-cast v5, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 1905
    .local v5, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    if-ne v5, p2, :cond_1e

    .line 1908
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v9, v5}, Lcom/sec/android/app/twlauncher/UserFolderModel;->deleteFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    .line 1909
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1912
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .local v6, j:I
    :goto_3e
    if-ltz v6, :cond_4e

    .line 1913
    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 1914
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v9

    invoke-virtual {p0, v3, v9, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    .line 1912
    add-int/lit8 v6, v6, -0x1

    goto :goto_3e

    .line 1916
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_4e
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 1917
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1921
    .end local v1           #childView:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #curScr:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v4           #i:I
    .end local v5           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v6           #j:I
    .end local v7           #page:I
    .end local v8           #tag:Ljava/lang/Object;
    :cond_54
    return-void
.end method

.method removeItem(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 3600
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/app/twlauncher/AppMenu;

    if-nez v4, :cond_b

    .line 3612
    :cond_a
    :goto_a
    return-void

    .line 3603
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 3604
    .local v1, count:I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3605
    .local v3, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v1, :cond_a

    .line 3606
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3607
    .local v0, child:Landroid/view/View;
    if-ne v0, v3, :cond_22

    .line 3608
    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    goto :goto_a

    .line 3605
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method public renameFolder(Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/String;)Z
    .registers 6
    .parameter "aInfo"
    .parameter "aName"

    .prologue
    .line 1815
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 1816
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 1817
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v2, :pswitch_data_1e

    .line 1830
    :goto_b
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1831
    const/4 v2, 0x1

    return v2

    .line 1821
    :pswitch_10
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getListView()Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    move-result-object v1

    .line 1822
    .local v1, listView:Lcom/sec/android/app/twlauncher/GLFastScrollListView;
    if-eqz v1, :cond_19

    .line 1823
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->notifyDataChanged()V

    .line 1827
    .end local v1           #listView:Lcom/sec/android/app/twlauncher/GLFastScrollListView;
    :cond_19
    :pswitch_19
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    goto :goto_b

    .line 1817
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 4121
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 4122
    .local v1, screen:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 4123
    .local v0, currentScreen:I
    if-eq v1, v0, :cond_17

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_17

    .line 4124
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 4125
    const/4 v2, 0x1

    .line 4127
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public resetMaxPageIndexAndMaxCellIndex()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 2854
    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    .line 2855
    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    .line 2857
    return-void
.end method

.method public restoreEditModeFactor()V
    .registers 3

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    .line 3167
    return-void
.end method

.method public restoreLM()V
    .registers 7

    .prologue
    .line 425
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    .line 426
    .local v1, lm:Lcom/sec/android/app/twlauncher/LauncherManager;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v2

    .line 427
    .local v2, special:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    const/4 v0, 0x0

    .line 428
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const-string v3, "makePageInfo"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 429
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const-string v3, "DebugFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got makePageInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-eqz v0, :cond_32

    .line 431
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakePageInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 433
    :cond_32
    const-string v3, "makeFolderInfo"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 434
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const-string v3, "DebugFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got makeFolderInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-eqz v0, :cond_57

    .line 436
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakeFolderInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 438
    :cond_57
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->restoreSelf()V

    .line 439
    const-string v3, "makePageInfo"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v3, "makeFolderInfo"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    return-void
.end method

.method resume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 4261
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 4262
    .local v0, count:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 4263
    .local v1, screen:I
    if-le v0, v4, :cond_f

    .line 4264
    if-gez v1, :cond_51

    .line 4265
    add-int/lit8 v1, v0, -0x1

    .line 4266
    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 4272
    :cond_f
    :goto_f
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 4273
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4274
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 4275
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 4278
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    .line 4279
    .local v2, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_48

    .line 4280
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 4282
    :cond_48
    if-eqz v2, :cond_50

    .line 4283
    mul-int v3, v1, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 4284
    :cond_50
    return-void

    .line 4267
    .end local v2           #width:I
    :cond_51
    if-lt v1, v0, :cond_f

    .line 4268
    const/4 v1, 0x0

    .line 4269
    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_f
.end method

.method public save()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1578
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->saveToDB()Z

    .line 1579
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->commit()V

    .line 1581
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v1, :cond_2f

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2f

    .line 1583
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->leaveCurrentMode(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1593
    :goto_1f
    return v0

    .line 1587
    :cond_20
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllEmptyPages()I

    .line 1588
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->fixPageAndCellNum()Z

    .line 1589
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->assignEditToNormal()Z

    .line 1590
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    .line 1591
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->enterNewMode(I)Z

    :cond_2f
    move v0, v1

    .line 1593
    goto :goto_1f
.end method

.method public scrollLeft()V
    .registers 3

    .prologue
    .line 3855
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3857
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ltz v0, :cond_1a

    .line 3858
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 3866
    :cond_1a
    return-void
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    .line 3869
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3871
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_20

    .line 3872
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 3880
    :cond_20
    return-void
.end method

.method public scrollTo(II)V
    .registers 11
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    .line 1243
    .local v4, pageWidth:I
    if-nez v4, :cond_a

    .line 1244
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->scrollTo(II)V

    .line 1270
    :cond_9
    :goto_9
    return-void

    .line 1248
    :cond_a
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 1249
    .local v2, oldPage:I
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->scrollTo(II)V

    .line 1250
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 1253
    .local v3, page:I
    const/16 v5, 0x8

    .line 1254
    .local v5, range:I
    if-eq v3, v2, :cond_9

    .line 1255
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1256
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    if-ge v1, v0, :cond_62

    .line 1258
    add-int/lit8 v6, v2, -0x8

    if-lt v1, v6, :cond_3a

    add-int/lit8 v6, v2, 0x8

    if-le v1, v6, :cond_44

    :cond_3a
    add-int/lit8 v6, v2, -0x8

    add-int/2addr v6, v0

    if-ge v1, v6, :cond_44

    add-int/lit8 v6, v2, 0x8

    sub-int/2addr v6, v0

    if-gt v1, v6, :cond_5f

    .line 1261
    :cond_44
    add-int/lit8 v6, v3, -0x8

    if-lt v1, v6, :cond_4c

    add-int/lit8 v6, v3, 0x8

    if-le v1, v6, :cond_5f

    :cond_4c
    add-int/lit8 v6, v3, -0x8

    add-int/2addr v6, v0

    if-ge v1, v6, :cond_5f

    add-int/lit8 v6, v3, 0x8

    sub-int/2addr v6, v0

    if-le v1, v6, :cond_5f

    .line 1264
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->freeResources()V

    .line 1256
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1268
    :cond_62
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeSureAdjacentPagesArePreloaded()V

    goto :goto_9
.end method

.method public setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_b

    .line 2432
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2435
    :cond_b
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 2436
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_22

    .line 2437
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    .line 2438
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2440
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()Z

    .line 2442
    :cond_22
    return-void
.end method

.method public setCurrentScreen(I)V
    .registers 4
    .parameter "page"

    .prologue
    .line 4251
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 4252
    iput p1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 4253
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 4254
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 4256
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 7
    .parameter "launcher"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 445
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 448
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v2, "launcher"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 451
    .local v0, menuModePrefs:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v2, "menumanager"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_37

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "sortmethod"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    .line 458
    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v1, "menu"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_37

    .line 460
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    .line 466
    :cond_37
    return-void
.end method

.method public setMode(I)Z
    .registers 4
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 1680
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v1, p1, :cond_6

    .line 1687
    :cond_5
    :goto_5
    return v0

    .line 1684
    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->leaveCurrentMode(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1687
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->enterNewMode(I)Z

    move-result v0

    goto :goto_5
.end method

.method public setSortMethod(I)V
    .registers 4
    .parameter "method"

    .prologue
    .line 1703
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-ne p1, v1, :cond_8

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    .line 1713
    :goto_7
    return-void

    .line 1705
    :cond_8
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    .line 1706
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1c

    .line 1707
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1708
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "sortmethod"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1709
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1711
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 1712
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView()Z

    goto :goto_7
.end method

.method public setUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V
    .registers 5
    .parameter "aModel"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    .line 420
    const-string v0, "DebugFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting folder model to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const-string v1, "Set Folder Model"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->dumpSelf(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method protected snapToScreen(Landroid/view/animation/Interpolator;II)V
    .registers 15
    .parameter "interpolator"
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v7, 0x2

    .line 1335
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1391
    :goto_7
    return-void

    .line 1343
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v6, :cond_11

    .line 1344
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1345
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1349
    .local v1, childCount:I
    if-lt v1, v7, :cond_6b

    .line 1350
    const/4 v6, -0x1

    if-ge p2, v6, :cond_67

    .line 1351
    const/4 p2, -0x1

    .line 1359
    :cond_1b
    :goto_1b
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-eq p2, v6, :cond_74

    const/4 v0, 0x1

    .line 1360
    .local v0, changingScreens:Z
    :goto_20
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 1361
    .local v3, focusedChild:Landroid/view/View;
    if-eqz v3, :cond_33

    if-eqz v0, :cond_33

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v3, v6, :cond_33

    .line 1362
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 1367
    :cond_33
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v5

    .line 1368
    .local v5, width:I
    mul-int v4, p2, v5

    .line 1369
    .local v4, newX:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1373
    .local v2, delta:I
    if-lt v1, v7, :cond_47

    .line 1374
    if-gez p2, :cond_76

    .line 1375
    add-int/lit8 p2, v1, -0x1

    .line 1379
    :cond_47
    :goto_47
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 1383
    if-gez p3, :cond_50

    .line 1384
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    mul-int/2addr v6, v2

    div-int p3, v6, v5

    .line 1386
    :cond_50
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1387
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v7, v7

    int-to-float v8, v4

    int-to-long v9, p3

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 1388
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1390
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_7

    .line 1352
    .end local v0           #changingScreens:Z
    .end local v2           #delta:I
    .end local v3           #focusedChild:Landroid/view/View;
    .end local v4           #newX:I
    .end local v5           #width:I
    :cond_67
    if-le p2, v1, :cond_1b

    .line 1353
    move p2, v1

    goto :goto_1b

    .line 1354
    :cond_6b
    if-gez p2, :cond_6f

    .line 1355
    const/4 p2, 0x0

    goto :goto_1b

    .line 1356
    :cond_6f
    if-lt p2, v1, :cond_1b

    .line 1357
    add-int/lit8 p2, v1, -0x1

    goto :goto_1b

    .line 1359
    :cond_74
    const/4 v0, 0x0

    goto :goto_20

    .line 1376
    .restart local v0       #changingScreens:Z
    .restart local v2       #delta:I
    .restart local v3       #focusedChild:Landroid/view/View;
    .restart local v4       #newX:I
    .restart local v5       #width:I
    :cond_76
    if-lt p2, v1, :cond_47

    .line 1377
    const/4 p2, 0x0

    goto :goto_47
.end method

.method public startUpdateDB()V
    .registers 2

    .prologue
    .line 3976
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    if-nez v0, :cond_b

    .line 3977
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    .line 3979
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->updateDB()V

    .line 3980
    return-void
.end method

.method public switchToNormalModeDelayedIfNeeded(Ljava/lang/Object;)Z
    .registers 6
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    .line 2108
    if-nez p1, :cond_4

    .line 2122
    .end local p1
    :cond_3
    :goto_3
    return v1

    .line 2111
    .restart local p1
    :cond_4
    instance-of v2, p1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-eqz v2, :cond_3

    .line 2114
    check-cast p1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDragSource()Lcom/sec/android/app/twlauncher/DragSource;

    move-result-object v0

    .line 2115
    .local v0, source:Lcom/sec/android/app/twlauncher/DragSource;
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v2, :cond_3

    .line 2118
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2121
    new-instance v1, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->post(Ljava/lang/Runnable;)Z

    .line 2122
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public switchToOnDropBackupModeIfNeeded()V
    .registers 3

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 2142
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mBackupSortMethod:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 2144
    return-void
.end method

.method public unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            "Landroid/graphics/PointF;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4518
    const/4 v2, 0x0

    .line 4520
    if-nez p3, :cond_8

    .line 4521
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getPhantomItemViews()Ljava/util/ArrayList;

    move-result-object p3

    :cond_8
    move v3, v1

    .line 4523
    :goto_9
    if-nez v2, :cond_3a

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3a

    .line 4524
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 4525
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_2c

    .line 4530
    :goto_21
    if-nez v0, :cond_30

    .line 4531
    const-string v0, "Add2DropScr"

    const-string v2, "Failed to find matching item !!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 4534
    :goto_2b
    return v0

    .line 4523
    :cond_2c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9

    .line 4534
    :cond_30
    new-instance v1, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->animateToMM(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)Z

    move-result v0

    goto :goto_2b

    :cond_3a
    move-object v0, v2

    goto :goto_21
.end method

.method unShiftItems(Ljava/lang/String;)V
    .registers 15
    .parameter "aWho"

    .prologue
    const/4 v12, 0x0

    .line 3770
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    .local v2, appMenuCount:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v4

    .line 3771
    .local v4, curScreen:I
    const/4 v1, 0x0

    .line 3772
    .local v1, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v6, 0x0

    .line 3779
    .local v6, fixEditModeInfo:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_c
    if-ge v7, v2, :cond_4e

    .line 3780
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3781
    .restart local v1       #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getWasShifted()Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 3782
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v9

    .line 3784
    .local v9, menuItemCount:I
    :goto_1e
    iget v11, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v9, v11, :cond_2c

    .line 3785
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3786
    .local v10, nextAppMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-nez v10, :cond_2f

    .line 3779
    .end local v9           #menuItemCount:I
    .end local v10           #nextAppMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_2c
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 3789
    .restart local v9       #menuItemCount:I
    .restart local v10       #nextAppMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_2f
    invoke-virtual {v10, v12}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3790
    .local v5, firstView:Landroid/view/View;
    if-eqz v5, :cond_2c

    instance-of v11, v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v11, :cond_2c

    .line 3795
    invoke-virtual {v10, v12}, Lcom/sec/android/app/twlauncher/AppMenu;->removeViewAt(I)V

    .line 3796
    invoke-virtual {v1, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 3802
    invoke-virtual {v5, v12, v12, v12, v12}, Landroid/view/View;->layout(IIII)V

    .line 3803
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 3813
    const/4 v6, 0x1

    .line 3814
    invoke-virtual {v1, v12}, Lcom/sec/android/app/twlauncher/AppMenu;->setWasShifted(Z)V

    .line 3815
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v9

    .line 3816
    goto :goto_1e

    .line 3821
    .end local v5           #firstView:Landroid/view/View;
    .end local v9           #menuItemCount:I
    .end local v10           #nextAppMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_4e
    if-eqz v6, :cond_7d

    .line 3822
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    .line 3823
    const/4 v7, 0x0

    :goto_55
    if-ge v7, v2, :cond_7d

    .line 3824
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3825
    .restart local v1       #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v9

    .line 3826
    .restart local v9       #menuItemCount:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_62
    if-ge v8, v9, :cond_7a

    .line 3827
    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3828
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3829
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v11, v3, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v11, :cond_77

    if-eqz v0, :cond_77

    .line 3830
    invoke-virtual {v0, v7, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 3826
    :cond_77
    add-int/lit8 v8, v8, 0x1

    goto :goto_62

    .line 3823
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #child:Landroid/view/View;
    :cond_7a
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 3836
    .end local v8           #j:I
    .end local v9           #menuItemCount:I
    :cond_7d
    return-void
.end method

.method public unlock()V
    .registers 2

    .prologue
    .line 1720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    .line 1721
    return-void
.end method

.method public updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1394
    .local p1, updatedApps:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    .line 1395
    .local v3, count:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1396
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v6

    if-ltz v6, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v6

    if-ge v6, v3, :cond_8

    .line 1397
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1398
    .local v1, child:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 1399
    .local v4, count2:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v6

    if-ltz v6, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v6

    if-ge v6, v4, :cond_8

    .line 1400
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1401
    .local v2, childchild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 1402
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 1403
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1404
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_8

    .line 1408
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #child:Landroid/view/ViewGroup;
    .end local v2           #childchild:Landroid/view/View;
    .end local v4           #count2:I
    :cond_4f
    return-void
.end method
