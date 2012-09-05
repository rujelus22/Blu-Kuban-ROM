.class Lcom/sec/android/app/twlauncher/AddWidgetDialog;
.super Landroid/widget/LinearLayout;
.source "AddWidgetDialog.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;,
        Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;
    }
.end annotation


# static fields
.field static final mReflectionShader:Lcom/sec/android/app/twlauncher/ReflectionShader;

.field private static mWeights:[F


# instance fields
.field protected SNAP_VELOCITY:I

.field private mActive:Z

.field private mArrowTopOffset:I

.field private mBackgroundHeight:F

.field private mBmArrowLeft:Landroid/graphics/Bitmap;

.field private mBmArrowRight:Landroid/graphics/Bitmap;

.field private mClientPaddingLeft:I

.field private mClientWidth:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mDownX:F

.field protected mDownY:F

.field protected mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mFrameSurfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

.field private mItemPadding:I

.field private mItemWidth:I

.field private mItemsPerPage:I

.field private mLastScroller:F

.field protected mLastTouchX:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field protected mMaximumVelocity:I

.field private mMyOnClickListener:Landroid/view/View$OnClickListener;

.field private mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPageScrollWidth:I

.field private mRecoveryPosition:[[I

.field private mScrollHistory:[F

.field private mScrollHistoryIndex:I

.field private mScrollableWidth:I

.field protected mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mSuspended:Z

.field protected mTargetScroll:I

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewRecovery:Z

.field protected mViscousFluid:Landroid/view/animation/Interpolator;

.field private mWidgetFrameDrawable:Landroid/graphics/drawable/Drawable;

.field private mWidgetsOpened:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    .line 50
    new-instance v10, Lcom/sec/android/app/twlauncher/ReflectionShader;

    invoke-direct {v10}, Lcom/sec/android/app/twlauncher/ReflectionShader;-><init>()V

    sput-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mReflectionShader:Lcom/sec/android/app/twlauncher/ReflectionShader;

    .line 373
    const/16 v10, 0xf

    new-array v10, v10, [F

    sput-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    .line 375
    sget-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    array-length v1, v10

    .line 376
    .local v1, degree:I
    mul-int/lit8 v10, v1, 0x2

    add-int/lit8 v10, v10, -0x1

    int-to-float v9, v10

    .line 377
    .local v9, window:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_16
    if-ge v4, v1, :cond_35

    .line 378
    int-to-float v10, v4

    div-float v2, v10, v9

    .line 379
    .local v2, frac:F
    const/high16 v10, 0x3f80

    const/high16 v11, 0x4080

    mul-float/2addr v11, v2

    float-to-double v11, v11

    const-wide/high16 v13, 0x4000

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    double-to-float v11, v11

    div-float v3, v10, v11

    .line 380
    .local v3, guass:F
    sget-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    aput v3, v10, v4

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 383
    .end local v2           #frac:F
    .end local v3           #guass:F
    :cond_35
    const/4 v7, 0x0

    .line 384
    .local v7, sum:F
    sget-object v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    .local v0, arr$:[F
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3a
    if-ge v5, v6, :cond_42

    aget v8, v0, v5

    .line 385
    .local v8, w:F
    add-float/2addr v7, v8

    .line 384
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 386
    .end local v8           #w:F
    :cond_42
    const/4 v4, 0x0

    :goto_43
    if-ge v4, v1, :cond_4f

    .line 387
    sget-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    aget v11, v10, v4

    div-float/2addr v11, v7

    aput v11, v10, v4

    .line 386
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 388
    :cond_4f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x12c

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 60
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFrameSurfaceList:Ljava/util/ArrayList;

    .line 73
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    .line 75
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    .line 80
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    .line 91
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBmArrowLeft:Landroid/graphics/Bitmap;

    .line 92
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBmArrowRight:Landroid/graphics/Bitmap;

    .line 93
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mArrowTopOffset:I

    .line 99
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViewRecovery:Z

    .line 367
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastScroller:F

    .line 369
    const/16 v2, 0xf

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    .line 371
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    .line 603
    new-instance v2, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;-><init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    .line 644
    new-instance v2, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;-><init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 733
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    .line 735
    const/16 v2, 0xc8

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->SNAP_VELOCITY:I

    .line 105
    new-instance v2, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViscousFluid:Landroid/view/animation/Interpolator;

    .line 106
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViscousFluid:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 107
    new-instance v2, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 110
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    .line 111
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMaximumVelocity:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetFrameDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    sget-object v2, Lcom/sec/android/app/twlauncher/R$styleable;->AddWidgetDialog:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBackgroundHeight:F

    .line 121
    const/4 v2, 0x4

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    .line 122
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$108(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    return v0
.end method

.method private loadAllWidgets()V
    .registers 18

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v15}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    .line 167
    .local v10, manager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v10}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v7

    .line 168
    .local v7, infos:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 170
    .local v5, inflator:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v12

    .line 171
    .local v12, samsungManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 173
    .local v11, sInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int v15, v15, v16

    new-array v1, v15, [Ljava/lang/Object;

    .line 175
    .local v1, allWidgets:[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 176
    .local v3, i:I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    .line 177
    .local v6, info:Landroid/appwidget/AppWidgetProviderInfo;
    aput-object v6, v1, v3

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 180
    .end local v6           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_42
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 181
    .local v6, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    aput-object v6, v1, v3

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 185
    .end local v6           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_57
    new-instance v15, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;-><init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V

    invoke-static {v1, v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 186
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/Object;
    array-length v9, v2

    .local v9, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_64
    if-ge v4, v9, :cond_a4

    aget-object v14, v2, v4

    .line 187
    .local v14, widget:Ljava/lang/Object;
    const/high16 v15, 0x7f03

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 188
    .local v13, v:Landroid/view/View;
    instance-of v15, v14, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    if-eqz v15, :cond_95

    move-object v8, v14

    .line 189
    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .local v8, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    move-object v15, v13

    .line 190
    check-cast v15, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    invoke-virtual {v15, v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->setSamsungAppWidgetInfo(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    .line 191
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->addView(Landroid/view/View;)V

    .line 202
    .end local v8           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :goto_84
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v13, v15}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    :cond_95
    move-object v8, v14

    .line 193
    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    .line 194
    .local v8, item:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->addView(Landroid/view/View;)V

    move-object v15, v13

    .line 200
    check-cast v15, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    invoke-virtual {v15, v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->setInfo(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_84

    .line 205
    .end local v8           #item:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v13           #v:Landroid/view/View;
    .end local v14           #widget:Ljava/lang/Object;
    :cond_a4
    return-void
.end method

.method private snapToNearestItem(I)V
    .registers 5
    .parameter "x"

    .prologue
    .line 907
    iget v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int v0, v1, v2

    .line 908
    .local v0, w:I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToPixel(I)V

    .line 909
    return-void
.end method

.method private snapToPixel(I)V
    .registers 7
    .parameter "x"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, p1

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 918
    iput p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    .line 919
    return-void
.end method

.method private translateForChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FF)V
    .registers 11
    .parameter "canvas"
    .parameter "child"
    .parameter "rotate"
    .parameter "compress"

    .prologue
    const/4 v5, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 392
    .local v2, hw:F
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    .line 394
    .local v1, chw:F
    iget v4, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    int-to-float v4, v4

    add-float v3, v4, v2

    .line 397
    .local v3, screenCenter:F
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    sub-float v0, v4, v3

    .line 400
    .local v0, centerOffset:F
    mul-float/2addr v0, p4

    .line 402
    add-float v4, v3, v0

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 403
    invoke-virtual {p1, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotateY(F)V

    .line 404
    neg-float v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 405
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, accept:Z
    if-ne p1, p0, :cond_4

    .line 1046
    const/4 v0, 0x1

    .line 1048
    :cond_4
    return v0
.end method

.method public activate()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 286
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    if-eqz v1, :cond_2f

    .line 287
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    .line 300
    :goto_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->setVisibility(I)V

    .line 302
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 305
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 307
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    .line 308
    .local v0, w:Lcom/sec/android/app/twlauncher/Workspace;
    const/high16 v1, 0x4282

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalBottomOffset(F)V

    .line 309
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalZoomFactor(F)V

    .line 310
    return-void

    .line 289
    .end local v0           #w:Lcom/sec/android/app/twlauncher/Workspace;
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->removeAllViews()V

    .line 292
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->loadAllWidgets()V

    .line 297
    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    .line 298
    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    goto :goto_9
.end method

.method protected awakenScrollBars()Z
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 3

    .prologue
    .line 152
    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 6

    .prologue
    .line 923
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 924
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    .line 927
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 928
    .local v1, scrollX:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v0

    .line 930
    .local v0, count:I
    const/4 v2, 0x2

    if-lt v0, v2, :cond_38

    .line 931
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_3c

    .line 932
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 938
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->postInvalidate()V

    .line 940
    .end local v0           #count:I
    .end local v1           #scrollX:I
    :cond_3b
    return-void

    .line 933
    .restart local v0       #count:I
    .restart local v1       #scrollX:I
    :cond_3c
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le v1, v2, :cond_38

    .line 934
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    goto :goto_38
.end method

.method public deactivate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 327
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    .line 332
    .local v0, w:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalBottomOffset(F)V

    .line 333
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalZoomFactor(F)V

    .line 334
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    .line 335
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    .line 336
    iput v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    .line 337
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 596
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 37
    .parameter "canvas"

    .prologue
    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v13

    .line 410
    .local v13, factor:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v6

    .line 411
    .local v6, childCount:I
    const/16 v17, 0x0

    .line 413
    .local v17, more:Z
    const/16 v27, 0x0

    cmpl-float v27, v13, v27

    if-lez v27, :cond_3f3

    if-lez v6, :cond_3f3

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 415
    const/high16 v27, 0x3f80

    sub-float v27, v27, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 417
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 420
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v23, v0

    .line 421
    .local v23, scroller:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v14, v0

    .line 422
    .local v14, histLen:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    add-int v27, v27, v14

    rem-int v27, v27, v14

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastScroller:F

    move/from16 v29, v0

    sub-float v29, v23, v29

    aput v29, v27, v28

    .line 424
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastScroller:F

    .line 426
    const/4 v11, 0x0

    .line 427
    .local v11, d:F
    const/4 v15, 0x0

    .local v15, i:I
    :goto_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_b5

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    move/from16 v28, v0

    add-int v28, v28, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    rem-int v28, v28, v29

    aget v27, v27, v28

    sget-object v28, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    aget v28, v28, v15

    mul-float v27, v27, v28

    add-float v11, v11, v27

    .line 427
    add-int/lit8 v15, v15, 0x1

    goto :goto_7e

    .line 431
    :cond_b5
    const/16 v27, 0x0

    cmpl-float v27, v11, v27

    if-eqz v27, :cond_1ad

    const/16 v27, 0x1

    :goto_bd
    or-int v17, v17, v27

    .line 433
    const-wide/high16 v27, -0x4010

    const-wide/high16 v29, 0x3ff0

    float-to-double v0, v11

    move-wide/from16 v31, v0

    const-wide v33, 0x4051800000000000L

    div-double v31, v31, v33

    invoke-static/range {v29 .. v32}, Ljava/lang/Math;->min(DD)D

    move-result-wide v29

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->max(DD)D

    move-result-wide v27

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x4270

    mul-float v21, v27, v28

    .line 434
    .local v21, rotate:F
    const/high16 v27, 0x3f80

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v28

    const/high16 v29, 0x4348

    div-float v28, v28, v29

    sub-float v9, v27, v28

    .line 438
    .local v9, compress:F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move/from16 v0, v27

    float-to-int v10, v0

    .line 443
    .local v10, cp:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 444
    const v27, 0x3ecccccd

    const v28, 0x3ecccccd

    const v29, 0x3ecccccd

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    .line 445
    sget-object v27, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mReflectionShader:Lcom/sec/android/app/twlauncher/ReflectionShader;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 447
    const v27, 0x7f06000b

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getHeight()I

    move-result v19

    .line 448
    .local v19, reflectionHeight:I
    const-string v27, "reflectY"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getHeight()I

    move-result v29

    sub-int v28, v28, v29

    add-int v28, v28, v19

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    .line 449
    const-string v27, "fadeOutDistance"

    const/high16 v28, 0x42c8

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    .line 450
    const/4 v15, 0x0

    :goto_14a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v15, v0, :cond_1b1

    .line 451
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 452
    .local v4, c:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v27

    add-int v27, v27, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1aa

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v27

    sub-int v27, v27, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1aa

    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v4, v2, v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->translateForChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FF)V

    .line 455
    check-cast v4, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;

    .end local v4           #c:Landroid/view/View;
    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;->drawReflection(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 456
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 450
    :cond_1aa
    add-int/lit8 v15, v15, 0x1

    goto :goto_14a

    .line 431
    .end local v9           #compress:F
    .end local v10           #cp:I
    .end local v19           #reflectionHeight:I
    .end local v21           #rotate:F
    :cond_1ad
    const/16 v27, 0x0

    goto/16 :goto_bd

    .line 459
    .restart local v9       #compress:F
    .restart local v10       #cp:I
    .restart local v19       #reflectionHeight:I
    .restart local v21       #rotate:F
    :cond_1b1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    move/from16 v28, v0

    add-int v16, v27, v28

    .line 464
    .local v16, itemWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getPaddingTop()I

    move-result v7

    .line 466
    .local v7, childTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    if-ltz v27, :cond_231

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_231

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViewRecovery:Z

    move/from16 v27, v0

    if-eqz v27, :cond_231

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v24

    .line 470
    .local v24, viewCount:I
    const/4 v15, 0x0

    :goto_1f5
    move/from16 v0, v24

    if-ge v15, v0, :cond_229

    .line 471
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 472
    .restart local v4       #c:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mRecoveryPosition:[[I

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mRecoveryPosition:[[I

    move-object/from16 v28, v0

    aget-object v28, v28, v15

    const/16 v29, 0x1

    aget v28, v28, v29

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    add-int v29, v29, v7

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v4, v0, v7, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 470
    add-int/lit8 v15, v15, 0x1

    goto :goto_1f5

    .line 475
    .end local v4           #c:Landroid/view/View;
    :cond_229
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViewRecovery:Z

    .line 478
    .end local v24           #viewCount:I
    :cond_231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    if-gez v27, :cond_337

    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    move/from16 v28, v0

    add-int v27, v27, v28

    sub-int v12, v27, v16

    .line 481
    .local v12, default_x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    div-int v27, v27, v16

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v22, v0

    .line 482
    .local v22, scrollCounter:I
    const/16 v25, 0x0

    .line 483
    .local v25, view_Left:I
    rem-int v20, v22, v6

    .line 484
    .local v20, remainder:I
    div-int v18, v22, v6

    .line 485
    .local v18, quotient:I
    const/4 v8, 0x0

    .line 487
    .local v8, child_index:I
    const/4 v15, 0x0

    :goto_25e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v15, v0, :cond_2c8

    .line 489
    add-int/lit8 v27, v6, -0x1

    sub-int v27, v27, v20

    add-int v26, v27, v15

    .line 490
    .local v26, view_target:I
    div-int v8, v26, v6

    .line 492
    mul-int v27, v6, v8

    sub-int v27, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 493
    .local v5, child:Landroid/view/View;
    mul-int v27, v16, v20

    sub-int v27, v12, v27

    mul-int v28, v16, v6

    mul-int v28, v28, v18

    sub-int v27, v27, v28

    mul-int v28, v16, v15

    add-int v25, v27, v28

    .line 495
    add-int v27, v25, v16

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v7

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v5, v0, v7, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 497
    const-string v27, "dispatchDrawGL"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "i : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    mul-int v29, v6, v8

    sub-int v29, v26, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " quotient _ view_Left : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    add-int/lit8 v15, v15, 0x1

    goto :goto_25e

    .line 501
    .end local v5           #child:Landroid/view/View;
    .end local v26           #view_target:I
    :cond_2c8
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViewRecovery:Z

    .line 530
    .end local v8           #child_index:I
    .end local v12           #default_x:I
    .end local v18           #quotient:I
    .end local v20           #remainder:I
    .end local v22           #scrollCounter:I
    .end local v25           #view_Left:I
    :cond_2d0
    :goto_2d0
    const/4 v15, 0x0

    :goto_2d1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v15, v0, :cond_3e9

    .line 531
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 532
    .restart local v4       #c:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v27

    add-int v27, v27, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_334

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v27

    sub-int v27, v27, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_334

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v4, v2, v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->translateForChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FF)V

    .line 535
    check-cast v4, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;

    .end local v4           #c:Landroid/view/View;
    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v27

    or-int v17, v17, v27

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 530
    :cond_334
    add-int/lit8 v15, v15, 0x1

    goto :goto_2d1

    .line 502
    :cond_337
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_2d0

    .line 503
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    .line 504
    .restart local v12       #default_x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    move/from16 v28, v0

    add-int v27, v27, v28

    div-int v27, v27, v16

    sub-int v22, v27, v6

    .line 506
    .restart local v22       #scrollCounter:I
    const/16 v25, 0x0

    .line 507
    .restart local v25       #view_Left:I
    rem-int v20, v22, v6

    .line 508
    .restart local v20       #remainder:I
    div-int v18, v22, v6

    .line 509
    .restart local v18       #quotient:I
    const/4 v8, 0x0

    .line 511
    .restart local v8       #child_index:I
    const/4 v15, 0x0

    :goto_377
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v15, v0, :cond_3df

    .line 513
    add-int v27, v6, v20

    sub-int v26, v27, v15

    .line 514
    .restart local v26       #view_target:I
    div-int v8, v26, v6

    .line 516
    mul-int v27, v6, v8

    sub-int v27, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 517
    .restart local v5       #child:Landroid/view/View;
    mul-int v27, v16, v20

    add-int v27, v27, v12

    mul-int v28, v16, v6

    mul-int v28, v28, v18

    add-int v27, v27, v28

    mul-int v28, v16, v15

    sub-int v25, v27, v28

    .line 519
    add-int v27, v25, v16

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v7

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v5, v0, v7, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 521
    const-string v27, "dispatchDrawGL"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "i : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    mul-int v29, v6, v8

    sub-int v29, v26, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " quotient _ view_Left : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    add-int/lit8 v15, v15, 0x1

    goto :goto_377

    .line 525
    .end local v5           #child:Landroid/view/View;
    .end local v26           #view_target:I
    :cond_3df
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViewRecovery:Z

    goto/16 :goto_2d0

    .line 545
    .end local v8           #child_index:I
    .end local v12           #default_x:I
    .end local v18           #quotient:I
    .end local v20           #remainder:I
    .end local v22           #scrollCounter:I
    .end local v25           #view_Left:I
    :cond_3e9
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 546
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 549
    .end local v7           #childTop:I
    .end local v9           #compress:F
    .end local v10           #cp:I
    .end local v11           #d:F
    .end local v14           #histLen:I
    .end local v15           #i:I
    .end local v16           #itemWidth:I
    .end local v19           #reflectionHeight:I
    .end local v21           #rotate:F
    .end local v23           #scroller:F
    :cond_3f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v27

    if-nez v27, :cond_40b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v27

    if-eqz v27, :cond_40d

    .line 550
    :cond_40b
    const/16 v17, 0x1

    .line 560
    :cond_40d
    if-nez v17, :cond_433

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v27

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_433

    .line 561
    const/16 v27, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setVisibility(I)V

    .line 565
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    move/from16 v27, v0

    if-nez v27, :cond_433

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->removeAllViews()V

    .line 590
    :cond_433
    return v17
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 601
    return-void
.end method

.method public getBackgroundHeight()F
    .registers 3

    .prologue
    .line 354
    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBackgroundHeight:F

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "outRect"

    .prologue
    .line 1053
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 1055
    return-void
.end method

.method public getOpenedWidgetsCount()I
    .registers 2

    .prologue
    .line 1119
    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    return v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    return v0
.end method

.method public isSuspended()Z
    .registers 2

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    return v0
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
    .line 1062
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1069
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1076
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
    .line 209
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .registers 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1081
    const/4 v0, 0x0

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .registers 11
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 714
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    .line 718
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 719
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 720
    .local v0, c:Landroid/view/View;
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    if-eqz v2, :cond_1d

    .line 721
    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    .end local v0           #c:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->clearPhantom()V

    .line 718
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 724
    :cond_20
    iget v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    .line 725
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 761
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_c

    .line 762
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 763
    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 766
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 767
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 769
    .local v3, y:F
    packed-switch v0, :pswitch_data_64

    .line 796
    :cond_20
    :goto_20
    iget v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    if-ne v5, v6, :cond_61

    :goto_24
    return v6

    .line 771
    :pswitch_25
    iput v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastTouchX:F

    iput v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownX:F

    .line 772
    iput v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownY:F

    .line 773
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_37

    move v5, v6

    :goto_34
    iput v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto :goto_20

    :cond_37
    move v5, v7

    goto :goto_34

    .line 778
    :pswitch_39
    iput v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    .line 779
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 780
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_20

    .line 784
    :pswitch_44
    iget v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v2, v5

    .line 785
    .local v2, xDiff:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v4, v5

    .line 787
    .local v4, yDiff:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    if-gt v2, v5, :cond_5e

    iget v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    if-le v4, v5, :cond_20

    .line 788
    :cond_5e
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto :goto_20

    .end local v2           #xDiff:I
    .end local v4           #yDiff:I
    :cond_61
    move v6, v7

    .line 796
    goto :goto_24

    .line 769
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_25
        :pswitch_39
        :pswitch_44
        :pswitch_39
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
    .line 979
    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int v1, v7, v8

    .line 980
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getPaddingTop()I

    move-result v2

    .line 981
    .local v2, childTop:I
    move v5, v1

    .line 983
    .local v5, lastRight:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v3

    .line 985
    .local v3, count:I
    const/4 v7, 0x2

    filled-new-array {v3, v7}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mRecoveryPosition:[[I

    .line 987
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1f
    if-ge v4, v3, :cond_5d

    .line 988
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    move-object v7, v0

    .line 993
    check-cast v7, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;

    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    invoke-interface {v7, v8}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;->getLayoutWidth(I)F

    move-result v6

    .line 995
    .local v6, layoutWidth:F
    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    add-int/2addr v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 998
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mRecoveryPosition:[[I

    aget-object v7, v7, v4

    const/4 v8, 0x0

    aput v1, v7, v8

    .line 999
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mRecoveryPosition:[[I

    aget-object v7, v7, v4

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    add-int/2addr v9, v1

    aput v9, v7, v8

    .line 1004
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_57

    .line 1005
    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    add-int/2addr v7, v1

    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int v5, v7, v8

    .line 1007
    :cond_57
    int-to-float v7, v1

    add-float/2addr v7, v6

    float-to-int v1, v7

    .line 987
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 1009
    .end local v0           #child:Landroid/view/View;
    .end local v6           #layoutWidth:F
    :cond_5d
    iput v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    .line 1010
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 944
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 945
    .local v5, widthMode:I
    if-nez v5, :cond_e

    .line 946
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "AddWidgetDialog widthMeasureSpec must be specified."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 948
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 949
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getPaddingLeft()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    .line 950
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getPaddingRight()I

    move-result v7

    sub-int v1, v6, v7

    .line 954
    .local v1, availableWidth:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    sub-int v6, v1, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    div-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    .line 955
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    if-gez v6, :cond_39

    .line 956
    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    .line 965
    :cond_39
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    mul-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    .line 966
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    .line 967
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    sub-int v0, v1, v6

    .line 968
    .local v0, additionalPadding:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    .line 970
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v3

    .line 971
    .local v3, count:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 972
    .local v2, childWidthSpec:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_62
    if-ge v4, v3, :cond_6e

    .line 973
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2, p2}, Landroid/view/View;->measure(II)V

    .line 972
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 975
    :cond_6e
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .registers 4
    .parameter "view"
    .parameter "dragAction"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    .line 705
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    .line 802
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_a

    .line 803
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 804
    :cond_a
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 806
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 807
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 808
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 810
    .local v10, y:F
    packed-switch v0, :pswitch_data_11c

    .line 903
    :cond_1e
    :goto_1e
    const/4 v12, 0x1

    return v12

    .line 816
    :pswitch_20
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 819
    iput v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastTouchX:F

    iput v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownX:F

    .line 820
    iput v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownY:F

    goto :goto_1e

    .line 825
    :pswitch_2c
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5e

    .line 826
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 830
    .local v6, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v12, 0x3e8

    iget v13, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    .line 831
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v12

    float-to-int v7, v12

    .line 834
    .local v7, velocityX:I
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v13, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViscousFluid:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 835
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->SNAP_VELOCITY:I

    if-le v7, v12, :cond_6a

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v12

    if-nez v12, :cond_6a

    .line 837
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    iget v13, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    sub-int/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToPixel(I)V

    .line 846
    :goto_5b
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 848
    .end local v6           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v7           #velocityX:I
    :cond_5e
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->recycle()V

    .line 849
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 850
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto :goto_1e

    .line 839
    .restart local v6       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v7       #velocityX:I
    :cond_6a
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->SNAP_VELOCITY:I

    neg-int v12, v12

    if-ge v7, v12, :cond_80

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v12

    if-nez v12, :cond_80

    .line 841
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    iget v13, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    add-int/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToPixel(I)V

    goto :goto_5b

    .line 844
    :cond_80
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    invoke-direct {p0, v12}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToNearestItem(I)V

    goto :goto_5b

    .line 854
    .end local v6           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v7           #velocityX:I
    :pswitch_86
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    if-nez v12, :cond_bb

    .line 856
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownX:F

    sub-float v12, v8, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v9, v12

    .line 857
    .local v9, xDiff:I
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownY:F

    sub-float v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v11, v12

    .line 861
    .local v11, yDiff:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_b4

    .line 862
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v4

    .line 868
    .local v4, minMaxScrollPadding:I
    :goto_a7
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    if-gt v9, v12, :cond_af

    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    if-le v11, v12, :cond_1e

    .line 869
    :cond_af
    const/4 v12, 0x1

    iput v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto/16 :goto_1e

    .line 864
    .end local v4           #minMaxScrollPadding:I
    :cond_b4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v12

    div-int/lit8 v4, v12, 0x4

    .restart local v4       #minMaxScrollPadding:I
    goto :goto_a7

    .line 873
    .end local v4           #minMaxScrollPadding:I
    .end local v9           #xDiff:I
    .end local v11           #yDiff:I
    :cond_bb
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v1

    .line 874
    .local v1, childCount:I
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastTouchX:F

    sub-float/2addr v12, v8

    float-to-int v2, v12

    .line 875
    .local v2, deltaX:I
    iput v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastTouchX:F

    .line 876
    const/4 v12, 0x2

    if-lt v1, v12, :cond_ce

    .line 877
    const/4 v12, 0x0

    invoke-virtual {p0, v2, v12}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->scrollBy(II)V

    goto/16 :goto_1e

    .line 880
    :cond_ce
    if-gez v2, :cond_f3

    .line 881
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    neg-int v5, v12

    .line 882
    .local v5, minScrollX:I
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    if-le v12, v5, :cond_1e

    .line 883
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    if-lez v12, :cond_e5

    .line 884
    const/4 v12, 0x0

    invoke-virtual {p0, v2, v12}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->scrollBy(II)V

    goto/16 :goto_1e

    .line 886
    :cond_e5
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    sub-int v12, v5, v12

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->scrollBy(II)V

    goto/16 :goto_1e

    .line 889
    .end local v5           #minScrollX:I
    :cond_f3
    if-lez v2, :cond_1e

    .line 890
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int v3, v12, v13

    .line 891
    .local v3, maxScrollX:I
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    if-ge v12, v3, :cond_1e

    .line 892
    iget v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    sub-int v12, v3, v12

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->scrollBy(II)V

    goto/16 :goto_1e

    .line 899
    .end local v1           #childCount:I
    .end local v2           #deltaX:I
    .end local v3           #maxScrollX:I
    :pswitch_116
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto/16 :goto_1e

    .line 810
    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_20
        :pswitch_2c
        :pswitch_86
        :pswitch_116
    .end packed-switch
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .registers 2
    .parameter "dragger"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 162
    return-void
.end method

.method public setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 157
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->addHeightProvider(Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;)V

    .line 158
    return-void
.end method

.method public suspend()V
    .registers 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->deactivate()V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    .line 342
    return-void
.end method
