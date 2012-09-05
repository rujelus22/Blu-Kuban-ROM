.class public Lcom/android/launcher2/AppsCustomizePagedView;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Lcom/android/launcher2/AllAppsView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/android/launcher2/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field static final LOG_TAG:Ljava/lang/String; = "AppsCustomizePagedView"

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static TRANSITION_MAX_ROTATION:F = 0.0f

.field private static TRANSITION_PIVOT:F = 0.0f

.field private static TRANSITION_SCALE_FACTOR:F = 0.0f

.field static final sLookAheadPageCount:I = 0x2

.field static final sLookBehindPageCount:I = 0x2

.field private static final sPageSleepDelay:I = 0xc8


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAppIconSize:I

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClingFocusedX:I

.field private mClingFocusedY:I

.field private mContentWidth:I

.field private mDefaultWidgetBackground:Landroid/graphics/drawable/Drawable;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragViewMultiplyColor:I

.field private mHasShownAllAppsCling:Z

.field private mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mMaxAppCellCountX:I

.field private mMaxAppCellCountY:I

.field private mNumAppsPages:I

.field private mNumWidgetPages:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInstanceStateItemIndex:I

.field private mWidgetCountX:I

.field private mWidgetCountY:I

.field private mWidgetHeightGap:I

.field private final mWidgetPreviewIconPaddedDimension:I

.field private mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

.field private mWidgetWidthGap:I

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

.field private final sWidgetPreviewIconPaddingPercentage:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 219
    const v0, 0x45cb2000

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    .line 220
    const v0, 0x3f3d70a4

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    .line 221
    const v0, 0x3f266666

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    .line 222
    const/high16 v0, 0x41b0

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    iput v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 212
    const/high16 v2, 0x3e80

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->sWidgetPreviewIconPaddingPercentage:F

    .line 218
    new-instance v2, Lcom/android/launcher2/Workspace$ZInterpolator;

    const/high16 v3, 0x3f00

    invoke-direct {v2, v3}, Lcom/android/launcher2/Workspace$ZInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    .line 224
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f666666

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 225
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4080

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 234
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 239
    new-instance v2, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v2}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 240
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 245
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDefaultWidgetBackground:Landroid/graphics/drawable/Drawable;

    .line 246
    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    .line 247
    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewMultiplyColor:I

    .line 249
    sget-object v2, Lcom/android/launcher/R$styleable;->AppsCustomizePagedView:[I

    invoke-virtual {p1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 250
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    .line 251
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    .line 252
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    .line 254
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    .line 256
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    .line 257
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    .line 258
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedX:I

    .line 259
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedY:I

    .line 260
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    new-instance v2, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    .line 265
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetPreviewIconPaddedDimension:I

    .line 267
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mFadeInAdjacentScreens:Z

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AsyncTaskPageData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AsyncTaskPageData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->onHolographicPageItemsLoaded(Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/AppsCustomizePagedView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/AppsCustomizePagedView;ILjava/util/ArrayList;III)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 169
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V

    return-void
.end method

.method private addAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1436
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1437
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_22

    .line 1438
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 1439
    .local v3, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 1440
    .local v2, index:I
    if-gez v2, :cond_1f

    .line 1441
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1437
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1444
    .end local v2           #index:I
    .end local v3           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_22
    return-void
.end method

.method private beginDraggingApplication(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 537
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    .line 538
    return-void
.end method

.method private beginDraggingWidget(Landroid/view/View;)V
    .registers 20
    .parameter "v"

    .prologue
    .line 542
    const v1, 0x7f060010

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 543
    .local v14, image:Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/PendingAddItemInfo;

    .line 548
    .local v11, createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    instance-of v1, v11, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v1, :cond_c4

    move-object v12, v11

    .line 549
    check-cast v12, Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 550
    .local v12, createWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Lcom/android/launcher2/PendingAddWidgetInfo;[I)[I

    move-result-object v17

    .line 551
    .local v17, spanXY:[I
    const/4 v1, 0x0

    aget v1, v17, v1

    iput v1, v11, Lcom/android/launcher2/PendingAddItemInfo;->spanX:I

    .line 552
    const/4 v1, 0x1

    aget v1, v17, v1

    iput v1, v11, Lcom/android/launcher2/PendingAddItemInfo;->spanY:I

    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v17, v2

    const/4 v4, 0x1

    aget v4, v17, v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v12, v5}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/PendingAddItemInfo;Z)[I

    move-result-object v15

    .line 556
    .local v15, maxSize:[I
    iget-object v2, v12, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget v3, v12, Lcom/android/launcher2/PendingAddWidgetInfo;->previewImage:I

    iget v4, v12, Lcom/android/launcher2/PendingAddWidgetInfo;->icon:I

    const/4 v1, 0x0

    aget v5, v17, v1

    const/4 v1, 0x1

    aget v6, v17, v1

    const/4 v1, 0x0

    aget v7, v15, v1

    const/4 v1, 0x1

    aget v8, v15, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 572
    .end local v12           #createWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    .end local v15           #maxSize:[I
    .end local v17           #spanXY:[I
    .local v3, preview:Landroid/graphics/Bitmap;
    :goto_56
    const/4 v9, 0x0

    .line 573
    .local v9, alphaClipPaint:Landroid/graphics/Paint;
    instance-of v1, v11, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v1, :cond_71

    move-object v1, v11

    .line 574
    check-cast v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v1, v1, Lcom/android/launcher2/PendingAddWidgetInfo;->previewImage:I

    if-eqz v1, :cond_71

    .line 575
    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v10

    .line 576
    .local v10, alphaClipTable:Landroid/graphics/MaskFilter;
    new-instance v9, Landroid/graphics/Paint;

    .end local v9           #alphaClipPaint:Landroid/graphics/Paint;
    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 577
    .restart local v9       #alphaClipPaint:Landroid/graphics/Paint;
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 582
    .end local v10           #alphaClipTable:Landroid/graphics/MaskFilter;
    :cond_71
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 584
    .local v16, outline:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewMultiplyColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 589
    const/4 v9, 0x0

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->lockScreenOrientationOnLargeUI()V

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v11, v0, v9}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Lcom/android/launcher2/PendingAddItemInfo;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    sget v6, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    const/4 v7, 0x0

    move-object v2, v14

    move-object/from16 v4, p0

    move-object v5, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V

    .line 594
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 595
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 596
    return-void

    .line 562
    .end local v3           #preview:Landroid/graphics/Bitmap;
    .end local v9           #alphaClipPaint:Landroid/graphics/Paint;
    .end local v16           #outline:Landroid/graphics/Bitmap;
    :cond_c4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetPreviewIconPaddedDimension:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetPreviewIconPaddedDimension:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 564
    .restart local v3       #preview:Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 565
    .local v13, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 568
    const/4 v1, 0x1

    iput v1, v11, Lcom/android/launcher2/PendingAddItemInfo;->spanY:I

    iput v1, v11, Lcom/android/launcher2/PendingAddItemInfo;->spanX:I

    goto/16 :goto_56
.end method

.method private cancelAllTasks()V
    .registers 4

    .prologue
    .line 671
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 672
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 673
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 674
    .local v1, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 675
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 677
    .end local v1           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_1a
    return-void
.end method

.method private dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .parameter "tag"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1518
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1520
    .local v0, i:Ljava/lang/Object;
    instance-of v3, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_94

    move-object v2, v0

    .line 1521
    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1522
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   label=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" previewImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resizeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " configure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " initialLayout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 1526
    .end local v2           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_94
    instance-of v3, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_22

    move-object v2, v0

    .line 1527
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1528
    .local v2, info:Landroid/content/pm/ResolveInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   label=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 1532
    .end local v0           #i:Ljava/lang/Object;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    :cond_c5
    return-void
.end method

.method private endDragging(Landroid/view/View;Z)V
    .registers 4
    .parameter "target"
    .parameter "success"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher2/Workspace;->onDragStopped(Z)V

    .line 616
    if-eqz p2, :cond_17

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1c

    instance-of v0, p1, Lcom/android/launcher2/DeleteDropTarget;

    if-nez v0, :cond_1c

    .line 620
    :cond_17
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    .line 622
    :cond_1c
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->unlockScreenOrientationOnLargeUI()V

    .line 624
    return-void
.end method

.method private findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I
    .registers 8
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Lcom/android/launcher2/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1452
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v4, p2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1453
    .local v3, removeComponent:Landroid/content/ComponentName;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1454
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v2, :cond_23

    .line 1455
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 1456
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1460
    .end local v0           #i:I
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    :goto_1f
    return v0

    .line 1454
    .restart local v0       #i:I
    .restart local v1       #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1460
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_23
    const/4 v0, -0x1

    goto :goto_1f
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .registers 10

    .prologue
    .line 291
    const/4 v3, -0x1

    .line 292
    .local v3, i:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageCount()I

    move-result v7

    if-lez v7, :cond_2b

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v2

    .line 294
    .local v2, currentPage:I
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v2, v7, :cond_2c

    .line 295
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewCellLayout;

    .line 296
    .local v4, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewCellLayout;->getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-result-object v1

    .line 297
    .local v1, childrenLayout:Lcom/android/launcher2/PagedViewCellLayoutChildren;
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int v6, v7, v8

    .line 298
    .local v6, numItemsPerPage:I
    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 299
    .local v0, childCount:I
    if-lez v0, :cond_2b

    .line 300
    mul-int v7, v2, v6

    div-int/lit8 v8, v0, 0x2

    add-int v3, v7, v8

    .line 313
    .end local v0           #childCount:I
    .end local v1           #childrenLayout:Lcom/android/launcher2/PagedViewCellLayoutChildren;
    .end local v2           #currentPage:I
    .end local v4           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    .end local v6           #numItemsPerPage:I
    :cond_2b
    :goto_2b
    return v3

    .line 303
    .restart local v2       #currentPage:I
    :cond_2c
    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 304
    .local v5, numApps:I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    .line 305
    .local v4, layout:Lcom/android/launcher2/PagedViewGridLayout;
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v6, v7, v8

    .line 306
    .restart local v6       #numItemsPerPage:I
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 307
    .restart local v0       #childCount:I
    if-lez v0, :cond_2b

    .line 308
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v7, v2, v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v5

    div-int/lit8 v8, v0, 0x2

    add-int v3, v7, v8

    goto :goto_2b
.end method

.method private getShortcutPreview(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "info"

    .prologue
    .line 996
    const/4 v3, 0x0

    .line 997
    .local v3, offset:I
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    .line 998
    .local v7, bitmapSize:I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1001
    .local v2, preview:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1002
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1003
    return-object v2
.end method

.method private getSleepForPage(I)I
    .registers 5
    .parameter "page"

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result v0

    .line 826
    .local v0, pageDiff:I
    const/4 v1, 0x0

    mul-int/lit16 v2, v0, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;
    .registers 3

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f060023

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizeTabHost;

    return-object v0
.end method

.method private getThreadPriorityForPage(I)I
    .registers 5
    .parameter "page"

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x1

    .line 815
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result v0

    .line 816
    .local v0, pageDiff:I
    if-gtz v0, :cond_a

    .line 821
    :goto_9
    return v1

    .line 818
    :cond_a
    if-gt v0, v1, :cond_e

    move v1, v2

    .line 819
    goto :goto_9

    :cond_e
    move v1, v2

    .line 821
    goto :goto_9
.end method

.method private getWidgetPageLoadPriority(I)I
    .registers 9
    .parameter "page"

    .prologue
    .line 791
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    .line 792
    .local v4, toPage:I
    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_9

    .line 793
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    .line 799
    :cond_9
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 800
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    const v1, 0x7fffffff

    .line 801
    .local v1, minPageDiff:I
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 802
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 803
    .local v3, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v5, v3, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 804
    goto :goto_12

    .line 806
    .end local v3           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_29
    sub-int v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 807
    .local v2, rawPageDiff:I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v5, v2, v5

    return v5
.end method

.method private getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;
    .registers 31
    .parameter "provider"
    .parameter "previewImage"
    .parameter "iconId"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 1009
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 1010
    .local v18, packageName:Ljava/lang/String;
    if-gez p6, :cond_9

    const p6, 0x7fffffff

    .line 1011
    :cond_9
    if-gez p7, :cond_e

    const p7, 0x7fffffff

    .line 1013
    :cond_e
    const/4 v3, 0x0

    .line 1014
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_48

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1016
    if-nez v3, :cond_48

    .line 1017
    const-string v2, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_48
    if-eqz v3, :cond_b0

    const/16 v22, 0x1

    .line 1025
    .local v22, widgetPreviewExists:Z
    :goto_4c
    if-eqz v22, :cond_b3

    .line 1026
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 1027
    .local v7, bitmapWidth:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 1030
    .local v8, bitmapHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v2

    move/from16 v0, p6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellHeight(I)I

    move-result v2

    move/from16 v0, p7

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p7

    .line 1049
    :cond_76
    :goto_76
    const/high16 v20, 0x3f80

    .line 1050
    .local v20, scale:F
    move/from16 v0, p6

    if-le v7, v0, :cond_82

    .line 1051
    move/from16 v0, p6

    int-to-float v2, v0

    int-to-float v5, v7

    div-float v20, v2, v5

    .line 1053
    :cond_82
    int-to-float v2, v8

    mul-float v2, v2, v20

    move/from16 v0, p7

    int-to-float v5, v0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_92

    .line 1054
    move/from16 v0, p7

    int-to-float v2, v0

    int-to-float v5, v8

    div-float v20, v2, v5

    .line 1056
    :cond_92
    const/high16 v2, 0x3f80

    cmpl-float v2, v20, v2

    if-eqz v2, :cond_a0

    .line 1057
    int-to-float v2, v7

    mul-float v2, v2, v20

    float-to-int v7, v2

    .line 1058
    int-to-float v2, v8

    mul-float v2, v2, v20

    float-to-int v8, v2

    .line 1061
    :cond_a0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1063
    .local v4, preview:Landroid/graphics/Bitmap;
    if-eqz v22, :cond_f1

    .line 1064
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1089
    :goto_af
    return-object v4

    .line 1024
    .end local v4           #preview:Landroid/graphics/Bitmap;
    .end local v7           #bitmapWidth:I
    .end local v8           #bitmapHeight:I
    .end local v20           #scale:F
    .end local v22           #widgetPreviewExists:Z
    :cond_b0
    const/16 v22, 0x0

    goto :goto_4c

    .line 1036
    .restart local v22       #widgetPreviewExists:Z
    :cond_b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v7

    .line 1037
    .restart local v7       #bitmapWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellHeight(I)I

    move-result v8

    .line 1038
    .restart local v8       #bitmapHeight:I
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_76

    .line 1040
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    const/high16 v5, 0x3e80

    mul-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v17, v0

    .line 1041
    .local v17, minOffset:I
    const/4 v2, 0x1

    move/from16 v0, p4

    if-gt v0, v2, :cond_e7

    .line 1042
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    mul-int/lit8 v5, v17, 0x2

    add-int v8, v2, v5

    move v7, v8

    goto :goto_76

    .line 1044
    :cond_e7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    mul-int/lit8 v5, v17, 0x4

    add-int v8, v2, v5

    move v7, v8

    goto :goto_76

    .line 1067
    .end local v17           #minOffset:I
    .restart local v4       #preview:Landroid/graphics/Bitmap;
    .restart local v20       #scale:F
    :cond_f1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    const/high16 v5, 0x3e80

    mul-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v17, v0

    .line 1068
    .restart local v17       #minOffset:I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1069
    .local v21, smallestSide:I
    move/from16 v0, v21

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    mul-int/lit8 v6, v17, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f80

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 1070
    .local v16, iconScale:F
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_11c

    const/4 v2, 0x1

    move/from16 v0, p5

    if-eq v0, v2, :cond_12a

    .line 1071
    :cond_11c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDefaultWidgetBackground:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object v11, v4

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1077
    :cond_12a
    const/4 v10, 0x0

    .line 1078
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    :try_start_12b
    div-int/lit8 v2, v7, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v5, v5

    mul-float v5, v5, v16

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    float-to-int v12, v2

    .line 1079
    .local v12, hoffset:I
    div-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v5, v5

    mul-float v5, v5, v16

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    float-to-int v13, v2

    .line 1080
    .local v13, yoffset:I
    if-lez p3, :cond_157

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1081
    :cond_157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 1082
    .local v19, resources:Landroid/content/res/Resources;
    if-nez v10, :cond_16a

    const v2, 0x7f020023

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1084
    :cond_16a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v15, v2

    move-object/from16 v9, p0

    move-object v11, v4

    invoke-direct/range {v9 .. v15}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_180
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12b .. :try_end_180} :catch_182

    goto/16 :goto_af

    .line 1087
    .end local v12           #hoffset:I
    .end local v13           #yoffset:I
    .end local v19           #resources:Landroid/content/res/Resources;
    :catch_182
    move-exception v2

    goto/16 :goto_af
.end method

.method private loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .registers 20
    .parameter "task"
    .parameter "data"

    .prologue
    .line 1185
    if-eqz p1, :cond_5

    .line 1187
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1191
    :cond_5
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1192
    .local v15, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 1193
    .local v13, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1194
    .local v11, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_12
    if-ge v12, v11, :cond_1c

    .line 1195
    if-eqz p1, :cond_20

    .line 1197
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1216
    :cond_1c
    return-void

    .line 1200
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1203
    :cond_20
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1204
    .local v16, rawInfo:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v1, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_57

    move-object/from16 v14, v16

    .line 1205
    check-cast v14, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1206
    .local v14, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v10

    .line 1207
    .local v10, cellSpans:[I
    iget-object v2, v14, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v3, v14, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v1, 0x0

    aget v5, v10, v1

    const/4 v1, 0x1

    aget v6, v10, v1

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageWidth:I

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageHeight:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1209
    .local v9, b:Landroid/graphics/Bitmap;
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    .end local v9           #b:Landroid/graphics/Bitmap;
    .end local v10           #cellSpans:[I
    .end local v14           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_54
    :goto_54
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    .line 1210
    :cond_57
    move-object/from16 v0, v16

    instance-of v1, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_54

    move-object/from16 v14, v16

    .line 1212
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1213
    .local v14, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/AppsCustomizePagedView;->getShortcutPreview(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54
.end method

.method private onHolographicPageItemsLoaded(Lcom/android/launcher2/AsyncTaskPageData;)V
    .registers 10
    .parameter "data"

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidate()V

    .line 1252
    iget v5, p1, Lcom/android/launcher2/AsyncTaskPageData;->page:I

    .line 1253
    .local v5, page:I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1254
    .local v4, layout:Landroid/view/ViewGroup;
    instance-of v7, v4, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v7, :cond_36

    move-object v0, v4

    .line 1255
    check-cast v0, Lcom/android/launcher2/PagedViewCellLayout;

    .line 1256
    .local v0, cl:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v1

    .line 1257
    .local v1, count:I
    iget-object v7, p1, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v1, v7, :cond_1f

    .line 1270
    .end local v0           #cl:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_1e
    return-void

    .line 1258
    .restart local v0       #cl:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_1f
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    if-ge v2, v1, :cond_1e

    .line 1259
    invoke-virtual {v0, v2}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewIcon;

    .line 1260
    .local v3, icon:Lcom/android/launcher2/PagedViewIcon;
    iget-object v7, p1, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v7}, Lcom/android/launcher2/PagedViewIcon;->setHolographicOutline(Landroid/graphics/Bitmap;)V

    .line 1258
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1263
    .end local v0           #cl:Lcom/android/launcher2/PagedViewCellLayout;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #icon:Lcom/android/launcher2/PagedViewIcon;
    :cond_36
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1264
    .restart local v1       #count:I
    iget-object v7, p1, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v1, v7, :cond_1e

    .line 1265
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_43
    if-ge v2, v1, :cond_1e

    .line 1266
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1267
    .local v6, v:Landroid/view/View;
    check-cast v6, Lcom/android/launcher2/PagedViewWidget;

    .end local v6           #v:Landroid/view/View;
    iget-object v7, p1, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/PagedViewWidget;->setHolographicOutline(Landroid/graphics/Bitmap;)V

    .line 1265
    add-int/lit8 v2, v2, 0x1

    goto :goto_43
.end method

.method private onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V
    .registers 14
    .parameter "data"

    .prologue
    .line 1218
    iget v5, p1, Lcom/android/launcher2/AsyncTaskPageData;->page:I

    .line 1219
    .local v5, page:I
    iget v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v10, v5

    invoke-virtual {p0, v10}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1221
    .local v4, layout:Lcom/android/launcher2/PagedViewGridLayout;
    iget-object v2, p1, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1222
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1223
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_2f

    .line 1224
    invoke-virtual {v4, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PagedViewWidget;

    .line 1225
    .local v9, widget:Lcom/android/launcher2/PagedViewWidget;
    if-eqz v9, :cond_2c

    .line 1226
    iget-object v10, p1, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 1227
    .local v7, preview:Landroid/graphics/Bitmap;
    new-instance v10, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v10, v7}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10, v1}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;I)V

    .line 1223
    .end local v7           #preview:Landroid/graphics/Bitmap;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1231
    .end local v9           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_2f
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->createHardwareLayer()V

    .line 1232
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidate()V

    .line 1241
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1242
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_55

    .line 1243
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1244
    .local v8, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v10, v8, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    iget v11, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int v6, v10, v11

    .line 1245
    .local v6, pageIndex:I
    invoke-direct {p0, v6}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_3b

    .line 1247
    .end local v6           #pageIndex:I
    .end local v8           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_55
    return-void
.end method

.method private prepareGenerateHoloOutlinesTask(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 15
    .parameter "page"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local p3, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v10, 0x0

    .line 892
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 893
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :cond_7
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 894
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 895
    .local v8, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v9, v8, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 896
    .local v9, taskPage:I
    if-ne v9, p1, :cond_7

    iget-object v1, v8, Lcom/android/launcher2/AppsCustomizeAsyncTask;->dataType:Lcom/android/launcher2/AsyncTaskPageData$Type;

    sget-object v2, Lcom/android/launcher2/AsyncTaskPageData$Type;->LoadHolographicIconsData:Lcom/android/launcher2/AsyncTaskPageData$Type;

    if-ne v1, v2, :cond_7

    .line 898
    invoke-virtual {v8, v10}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 899
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 903
    .end local v8           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    .end local v9           #taskPage:I
    :cond_24
    new-instance v0, Lcom/android/launcher2/AsyncTaskPageData;

    new-instance v4, Lcom/android/launcher2/AppsCustomizePagedView$6;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AppsCustomizePagedView$6;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    new-instance v5, Lcom/android/launcher2/AppsCustomizePagedView$7;

    invoke-direct {v5, p0}, Lcom/android/launcher2/AppsCustomizePagedView$7;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V

    .line 953
    .local v0, pageData:Lcom/android/launcher2/AsyncTaskPageData;
    new-instance v7, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    sget-object v1, Lcom/android/launcher2/AsyncTaskPageData$Type;->LoadHolographicIconsData:Lcom/android/launcher2/AsyncTaskPageData$Type;

    invoke-direct {v7, p1, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;-><init>(ILcom/android/launcher2/AsyncTaskPageData$Type;)V

    .line 955
    .local v7, t:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    const/16 v1, 0xa

    invoke-virtual {v7, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    .line 956
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/AsyncTaskPageData;

    aput-object v0, v2, v10

    invoke-virtual {v7, v1, v2}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 957
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    return-void
.end method

.method private prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
    .registers 18
    .parameter "page"
    .parameter
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "cellCountX"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 835
    .local p2, widgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 836
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 837
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 838
    .local v10, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v1, v10, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int v11, v1, v2

    .line 839
    .local v11, taskPage:I
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getAssociatedLowerPageBound(I)I

    move-result v1

    if-lt v11, v1, :cond_28

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getAssociatedUpperPageBound(I)I

    move-result v1

    if-le v11, v1, :cond_30

    .line 841
    :cond_28
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 842
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 844
    :cond_30
    invoke-direct {p0, v11}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_6

    .line 849
    .end local v10           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    .end local v11           #taskPage:I
    :cond_38
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getSleepForPage(I)I

    move-result v8

    .line 850
    .local v8, sleepMs:I
    new-instance v0, Lcom/android/launcher2/AsyncTaskPageData;

    new-instance v5, Lcom/android/launcher2/AppsCustomizePagedView$4;

    invoke-direct {v5, p0, v8}, Lcom/android/launcher2/AppsCustomizePagedView$4;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;I)V

    new-instance v6, Lcom/android/launcher2/AppsCustomizePagedView$5;

    invoke-direct {v6, p0}, Lcom/android/launcher2/AppsCustomizePagedView$5;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;IILcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V

    .line 880
    .local v0, pageData:Lcom/android/launcher2/AsyncTaskPageData;
    new-instance v9, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    sget-object v1, Lcom/android/launcher2/AsyncTaskPageData$Type;->LoadWidgetPreviewData:Lcom/android/launcher2/AsyncTaskPageData$Type;

    invoke-direct {v9, p1, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;-><init>(ILcom/android/launcher2/AsyncTaskPageData$Type;)V

    .line 882
    .local v9, t:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    .line 883
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v9, v1, v2}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 884
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    return-void
.end method

.method private removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1464
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1465
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_1e

    .line 1466
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 1467
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v3

    .line 1468
    .local v3, removeIndex:I
    const/4 v4, -0x1

    if-le v3, v4, :cond_1b

    .line 1469
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1465
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1472
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v3           #removeIndex:I
    :cond_1e
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .registers 16
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 976
    const/high16 v7, 0x3f80

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    .line 977
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .registers 13
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scale"
    .parameter "multiplyColor"

    .prologue
    .line 981
    if-eqz p2, :cond_29

    .line 982
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 983
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, p7, p7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 984
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 985
    .local v1, oldBounds:Landroid/graphics/Rect;
    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 986
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 987
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 988
    const/4 v2, -0x1

    if-eq p8, v2, :cond_25

    .line 989
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewMultiplyColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 991
    :cond_25
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 993
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #oldBounds:Landroid/graphics/Rect;
    :cond_29
    return-void
.end method

.method private setVisibilityOnChildren(Landroid/view/ViewGroup;I)V
    .registers 6
    .parameter "layout"
    .parameter "visibility"

    .prologue
    .line 725
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 726
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 727
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 726
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 729
    :cond_11
    return-void
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V
    .registers 9
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 731
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->setCellCount(II)V

    .line 732
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutWidthGap:I

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->setGap(II)V

    .line 733
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 740
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 741
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 742
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 743
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/PagedViewCellLayout;->setMinimumWidth(I)V

    .line 744
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher2/PagedViewCellLayout;->measure(II)V

    .line 745
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 746
    return-void
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V
    .registers 9
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 964
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;->setPadding(IIII)V

    .line 969
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 970
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 971
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 972
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher2/PagedViewGridLayout;->measure(II)V

    .line 973
    return-void
.end method

.method private testDataReady()Z
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private updateCurrentTab(I)V
    .registers 5
    .parameter "currentPage"

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    .line 707
    .local v0, tabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    if-eqz v0, :cond_21

    .line 708
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, tag:Ljava/lang/String;
    if-eqz v1, :cond_21

    .line 710
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-lt p1, v2, :cond_22

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 712
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 719
    .end local v1           #tag:Ljava/lang/String;
    :cond_21
    :goto_21
    return-void

    .line 713
    .restart local v1       #tag:Ljava/lang/String;
    :cond_22
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v2, :cond_21

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 715
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    goto :goto_21
.end method

.method private updatePageCounts()V
    .registers 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 357
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 358
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1447
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1448
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1449
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData()V

    .line 1450
    return-void
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->dismissAllAppsCling(Landroid/view/View;)V

    .line 602
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 612
    :goto_d
    return v0

    .line 605
    :cond_e
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->enterSpringLoadedDragMode()V

    .line 607
    instance-of v0, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_1c

    .line 608
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->beginDraggingApplication(Landroid/view/View;)V

    .line 612
    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    goto :goto_d

    .line 609
    :cond_1c
    instance-of v0, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_1a

    .line 610
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->beginDraggingWidget(Landroid/view/View;)V

    goto :goto_1a
.end method

.method public clearAllWidgetPages()V
    .registers 6

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 659
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 660
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_24

    .line 661
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 662
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v3, :cond_21

    .line 663
    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViewsOnPage()V

    .line 664
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 660
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 667
    :cond_24
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "ev"

    .prologue
    .line 533
    return-void
.end method

.method public dumpState()V
    .registers 4

    .prologue
    .line 1512
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mApps"

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1513
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mWidgets"

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1514
    return-void
.end method

.method protected getAssociatedLowerPageBound(I)I
    .registers 7
    .parameter "page"

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 1552
    .local v0, count:I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1553
    .local v2, windowSize:I
    add-int/lit8 v3, p1, -0x2

    sub-int v4, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1554
    .local v1, windowMinIndex:I
    return v1
.end method

.method protected getAssociatedUpperPageBound(I)I
    .registers 7
    .parameter "page"

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 1558
    .local v0, count:I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1559
    .local v2, windowSize:I
    add-int/lit8 v3, p1, 0x2

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1561
    .local v1, windowMaxIndex:I
    return v1
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .registers 8

    .prologue
    .line 1566
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_32

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    .line 1567
    .local v1, page:I
    :goto_7
    const v2, 0x7f0c0044

    .line 1568
    .local v2, stringId:I
    const/4 v0, 0x0

    .line 1570
    .local v0, count:I
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v1, v3, :cond_35

    .line 1571
    const v2, 0x7f0c0046

    .line 1572
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 1579
    :goto_14
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1566
    .end local v0           #count:I
    .end local v1           #page:I
    .end local v2           #stringId:I
    :cond_32
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    goto :goto_7

    .line 1574
    .restart local v0       #count:I
    .restart local v1       #page:I
    .restart local v2       #stringId:I
    :cond_35
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int/2addr v1, v3

    .line 1575
    const v2, 0x7f0c0047

    .line 1576
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    goto :goto_14
.end method

.method getPageAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageContentWidth()I
    .registers 2

    .prologue
    .line 1392
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mContentWidth:I

    return v0
.end method

.method getPageForComponent(I)I
    .registers 5
    .parameter "index"

    .prologue
    .line 327
    if-gez p1, :cond_4

    const/4 v1, 0x0

    .line 334
    :goto_3
    return v1

    .line 329
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_15

    .line 330
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int v0, v1, v2

    .line 331
    .local v0, numItemsPerPage:I
    div-int v1, p1, v0

    goto :goto_3

    .line 333
    .end local v0           #numItemsPerPage:I
    :cond_15
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v0, v1, v2

    .line 334
    .restart local v0       #numItemsPerPage:I
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, p1, v2

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_3
.end method

.method getSaveInstanceStateIndex()I
    .registers 3

    .prologue
    .line 318
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 319
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 321
    :cond_b
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method protected indexToPage(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 1310
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected init()V
    .registers 5

    .prologue
    .line 272
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->init()V

    .line 273
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCenterPagesVertically:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 276
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 277
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setDragSlopeThreshold(F)V

    .line 278
    return-void
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 1422
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 1418
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 492
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->isAllAppsCustomizeOpen()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 521
    :cond_16
    :goto_16
    return-void

    .line 495
    :cond_17
    instance-of v6, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v6, :cond_2a

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 498
    .local v0, appInfo:Lcom/android/launcher2/ApplicationInfo;
    new-instance v6, Lcom/android/launcher2/AppsCustomizePagedView$3;

    invoke-direct {v6, p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView$3;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/ApplicationInfo;)V

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher2/AppsCustomizePagedView;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_16

    .line 504
    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    :cond_2a
    instance-of v6, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v6, :cond_16

    .line 506
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0008

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 510
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v2, v6

    .line 511
    .local v2, offsetY:F
    const v6, 0x7f060010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 512
    .local v3, p:Landroid/widget/ImageView;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 513
    .local v1, bounce:Landroid/animation/AnimatorSet;
    const-string v6, "translationY"

    new-array v7, v8, [F

    aput v2, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 514
    .local v5, tyuAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x7d

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 515
    const-string v6, "translationY"

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 516
    .local v4, tydAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 517
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 518
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 519
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_16
.end method

.method protected onDataReady(II)V
    .registers 16
    .parameter "width"
    .parameter "height"

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_ac

    const/4 v3, 0x1

    .line 364
    .local v3, isLandscape:Z
    :goto_e
    const v4, 0x7fffffff

    .line 365
    .local v4, maxCellCountX:I
    const v5, 0x7fffffff

    .line 366
    .local v5, maxCellCountY:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-eqz v8, :cond_26

    .line 367
    if-eqz v3, :cond_af

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    .line 369
    :goto_20
    if-eqz v3, :cond_b5

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    .line 372
    :cond_26
    :goto_26
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_31

    .line 373
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 375
    :cond_31
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_3c

    .line 376
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 381
    :cond_3c
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iget v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutWidthGap:I

    iget v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutHeightGap:I

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/PagedViewCellLayout;->setGap(II)V

    .line 382
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iget v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v11, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v12, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 384
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8, p1, p2, v4, v5}, Lcom/android/launcher2/PagedViewCellLayout;->calculateCellCount(IIII)V

    .line 385
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    .line 386
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    .line 387
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 390
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v8

    const/high16 v9, -0x8000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 391
    .local v7, widthSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v8

    const/high16 v9, -0x8000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 392
    .local v0, heightSpec:I
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8, v7, v0}, Lcom/android/launcher2/PagedViewCellLayout;->measure(II)V

    .line 393
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->getContentWidth()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mContentWidth:I

    .line 395
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    .line 396
    .local v1, host:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v2

    .line 399
    .local v2, hostIsTransitioning:Z
    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageForComponent(I)I

    move-result v6

    .line 400
    .local v6, page:I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    .line 405
    if-nez v2, :cond_ab

    .line 406
    new-instance v8, Lcom/android/launcher2/AppsCustomizePagedView$1;

    invoke-direct {v8, p0}, Lcom/android/launcher2/AppsCustomizePagedView$1;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher2/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    .line 413
    :cond_ab
    return-void

    .line 362
    .end local v0           #heightSpec:I
    .end local v1           #host:Lcom/android/launcher2/AppsCustomizeTabHost;
    .end local v2           #hostIsTransitioning:Z
    .end local v3           #isLandscape:Z
    .end local v4           #maxCellCountX:I
    .end local v5           #maxCellCountY:I
    .end local v6           #page:I
    .end local v7           #widthSpec:I
    :cond_ac
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 367
    .restart local v3       #isLandscape:Z
    .restart local v4       #maxCellCountX:I
    .restart local v5       #maxCellCountY:I
    :cond_af
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v4

    goto/16 :goto_20

    .line 369
    :cond_b5
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v5

    goto/16 :goto_26
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 653
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    .line 654
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 655
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;Z)V
    .registers 12
    .parameter "target"
    .parameter "d"
    .parameter "success"

    .prologue
    .line 628
    invoke-direct {p0, p1, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->endDragging(Landroid/view/View;Z)V

    .line 632
    if-nez p3, :cond_35

    .line 633
    const/4 v3, 0x0

    .line 634
    .local v3, showOutOfSpaceMessage:Z
    instance-of v5, p1, Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_2e

    .line 635
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getCurrentWorkspaceScreen()I

    move-result v0

    .local v0, currentScreen:I
    move-object v4, p1

    .line 636
    check-cast v4, Lcom/android/launcher2/Workspace;

    .line 637
    .local v4, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 638
    .local v2, layout:Lcom/android/launcher2/CellLayout;
    iget-object v1, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 639
    .local v1, itemInfo:Lcom/android/launcher2/ItemInfo;
    if-eqz v2, :cond_2e

    .line 640
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayout;->calculateSpans(Lcom/android/launcher2/ItemInfo;)V

    .line 641
    const/4 v5, 0x0

    iget v6, v1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v7, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v5

    if-nez v5, :cond_36

    const/4 v3, 0x1

    .line 645
    .end local v0           #currentScreen:I
    .end local v1           #itemInfo:Lcom/android/launcher2/ItemInfo;
    .end local v2           #layout:Lcom/android/launcher2/CellLayout;
    .end local v4           #workspace:Lcom/android/launcher2/Workspace;
    :cond_2e
    :goto_2e
    if-eqz v3, :cond_35

    .line 646
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    .line 649
    .end local v3           #showOutOfSpaceMessage:Z
    :cond_35
    return-void

    .line 641
    .restart local v0       #currentScreen:I
    .restart local v1       #itemInfo:Lcom/android/launcher2/ItemInfo;
    .restart local v2       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v3       #showOutOfSpaceMessage:Z
    .restart local v4       #workspace:Lcom/android/launcher2/Workspace;
    :cond_36
    const/4 v3, 0x0

    goto :goto_2e
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 524
    invoke-static {p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 432
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 433
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 434
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 435
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->testDataReady()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 436
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->setDataIsReady()V

    .line 437
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setMeasuredDimension(II)V

    .line 438
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->onDataReady(II)V

    .line 442
    :cond_1d
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onMeasure(II)V

    .line 443
    return-void
.end method

.method public onPackagesUpdated()V
    .registers 4

    .prologue
    .line 451
    new-instance v0, Lcom/android/launcher2/AppsCustomizePagedView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppsCustomizePagedView$2;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    return-void
.end method

.method protected onPageEndMoving()V
    .registers 2

    .prologue
    .line 1397
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageEndMoving()V

    .line 1401
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 1402
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "ev"

    .prologue
    .line 282
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 284
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 286
    :cond_c
    return-void
.end method

.method protected overScroll(F)V
    .registers 2
    .parameter "amount"

    .prologue
    .line 1384
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->acceleratedOverScroll(F)V

    .line 1385
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1475
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1476
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1477
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData()V

    .line 1478
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 1493
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    .line 1494
    .local v0, tabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1495
    .local v1, tag:Ljava/lang/String;
    if-eqz v1, :cond_1b

    .line 1496
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1497
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 1500
    :cond_1b
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-eqz v2, :cond_23

    .line 1501
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(I)V

    .line 1503
    :cond_23
    return-void
.end method

.method restorePageForIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 350
    if-gez p1, :cond_3

    .line 352
    :goto_2
    return-void

    .line 351
    :cond_3
    iput p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    goto :goto_2
.end method

.method protected screenScrolled(I)V
    .registers 16
    .parameter "screenCenter"

    .prologue
    const/high16 v13, 0x4000

    const/high16 v9, 0x3f80

    const/4 v12, 0x0

    .line 1316
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->screenScrolled(I)V

    .line 1318
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v10

    if-ge v1, v10, :cond_dd

    .line 1319
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 1320
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_93

    .line 1321
    invoke-virtual {p0, p1, v8, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v6

    .line 1323
    .local v6, scrollProgress:F
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result v2

    .line 1325
    .local v2, interpolatedProgress:F
    sub-float v10, v9, v2

    sget v11, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v11, v2

    add-float v5, v10, v11

    .line 1327
    .local v5, scale:F
    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float v7, v10, v11

    .line 1331
    .local v7, translationX:F
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v10

    if-eqz v10, :cond_43

    cmpg-float v10, v6, v12

    if-gez v10, :cond_99

    .line 1332
    :cond_43
    cmpg-float v10, v6, v12

    if-gez v10, :cond_97

    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float v11, v9, v11

    invoke-virtual {v10, v11}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1339
    .local v0, alpha:F
    :goto_53
    iget v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDensity:F

    sget v11, Lcom/android/launcher2/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setCameraDistance(F)V

    .line 1340
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1341
    .local v4, pageWidth:I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1344
    .local v3, pageHeight:I
    if-nez v1, :cond_a2

    cmpg-float v10, v6, v12

    if-gez v10, :cond_a2

    .line 1346
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 1347
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    neg-float v10, v10

    mul-float/2addr v10, v6

    invoke-virtual {v8, v10}, Landroid/view/View;->setRotationY(F)V

    .line 1348
    const/high16 v5, 0x3f80

    .line 1349
    const/high16 v0, 0x3f80

    .line 1351
    const/4 v7, 0x0

    .line 1367
    :goto_7c
    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 1368
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1369
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1370
    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1374
    const v10, 0x3caaaaab

    cmpg-float v10, v0, v10

    if-gez v10, :cond_d2

    .line 1375
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    .end local v0           #alpha:F
    .end local v2           #interpolatedProgress:F
    .end local v3           #pageHeight:I
    .end local v4           #pageWidth:I
    .end local v5           #scale:F
    .end local v6           #scrollProgress:F
    .end local v7           #translationX:F
    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .restart local v2       #interpolatedProgress:F
    .restart local v5       #scale:F
    .restart local v6       #scrollProgress:F
    .restart local v7       #translationX:F
    :cond_97
    move v0, v9

    .line 1332
    goto :goto_53

    .line 1336
    :cond_99
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v11, v9, v6

    invoke-virtual {v10, v11}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .restart local v0       #alpha:F
    goto :goto_53

    .line 1352
    .restart local v3       #pageHeight:I
    .restart local v4       #pageWidth:I
    :cond_a2
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_c4

    cmpl-float v10, v6, v12

    if-lez v10, :cond_c4

    .line 1354
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    sub-float v10, v9, v10

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 1355
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    neg-float v10, v10

    mul-float/2addr v10, v6

    invoke-virtual {v8, v10}, Landroid/view/View;->setRotationY(F)V

    .line 1356
    const/high16 v5, 0x3f80

    .line 1357
    const/high16 v0, 0x3f80

    .line 1359
    const/4 v7, 0x0

    goto :goto_7c

    .line 1361
    :cond_c4
    int-to-float v10, v3

    div-float/2addr v10, v13

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotY(F)V

    .line 1362
    int-to-float v10, v4

    div-float/2addr v10, v13

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 1363
    invoke-virtual {v8, v12}, Landroid/view/View;->setRotationY(F)V

    goto :goto_7c

    .line 1376
    :cond_d2
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_93

    .line 1377
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_93

    .line 1381
    .end local v0           #alpha:F
    .end local v2           #interpolatedProgress:F
    .end local v3           #pageHeight:I
    .end local v4           #pageWidth:I
    .end local v5           #scale:F
    .end local v6           #scrollProgress:F
    .end local v7           #translationX:F
    .end local v8           #v:Landroid/view/View;
    :cond_dd
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1426
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 1427
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1428
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1432
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->testDataReady()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestLayout()V

    .line 1433
    :cond_15
    return-void
.end method

.method public setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .registers 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 680
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_b

    .line 681
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    .line 685
    :cond_a
    :goto_a
    return-void

    .line 682
    :cond_b
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_a

    .line 683
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    goto :goto_a
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .registers 3
    .parameter "launcher"
    .parameter "dragController"

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 1410
    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    .line 1411
    return-void
.end method

.method showAllAppsCling()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 416
    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    if-nez v2, :cond_4b

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->testDataReady()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 417
    iput-boolean v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    .line 419
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 420
    .local v0, offset:[I
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedX:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellPosition(II)[I

    move-result-object v1

    .line 421
    .local v1, pos:[I
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)V

    .line 423
    aget v2, v1, v6

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewCellLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    aget v4, v0, v6

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v6

    .line 425
    aget v2, v1, v5

    aget v3, v0, v5

    add-int/2addr v2, v3

    aput v2, v1, v5

    .line 426
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Launcher;->showFirstRunAllAppsCling([I)V

    .line 428
    .end local v0           #offset:[I
    .end local v1           #pos:[I
    :cond_4b
    return-void
.end method

.method protected snapToPage(III)V
    .registers 9
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    .line 688
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/PagedViewWithDraggableItems;->snapToPage(III)V

    .line 689
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateCurrentTab(I)V

    .line 692
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 693
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 694
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 695
    .local v2, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v3, v2, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int v1, v3, v4

    .line 696
    .local v1, pageIndex:I
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-le v3, v4, :cond_28

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-ge v1, v3, :cond_32

    :cond_28
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-ge v3, v4, :cond_3a

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-gt v1, v3, :cond_3a

    .line 698
    :cond_32
    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_c

    .line 700
    :cond_3a
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_c

    .line 703
    .end local v1           #pageIndex:I
    .end local v2           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_40
    return-void
.end method

.method public surrender()V
    .registers 1

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1541
    return-void
.end method

.method public syncAppsPageItems(IZ)V
    .registers 20
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 750
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int v9, v13, v14

    .line 751
    .local v9, numCells:I
    mul-int v10, p1, v9

    .line 752
    .local v10, startIndex:I
    add-int v13, v10, v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 753
    .local v1, endIndex:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PagedViewCellLayout;

    .line 755
    .local v8, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 756
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v4, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    move v2, v10

    .local v2, i:I
    :goto_2e
    if-ge v2, v1, :cond_8b

    .line 759
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ApplicationInfo;

    .line 760
    .local v6, info:Lcom/android/launcher2/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f030003

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v8, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewIcon;

    .line 762
    .local v3, icon:Lcom/android/launcher2/PagedViewIcon;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v3, v6, v13, v14}, Lcom/android/launcher2/PagedViewIcon;->applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;ZLcom/android/launcher2/HolographicOutlineHelper;)V

    .line 763
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 765
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 766
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 768
    sub-int v5, v2, v10

    .line 769
    .local v5, index:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    rem-int v11, v5, v13

    .line 770
    .local v11, x:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    div-int v12, v5, v13

    .line 771
    .local v12, y:I
    const/4 v13, -0x1

    new-instance v14, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v11, v12, v15, v0}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v8, v3, v13, v2, v14}, Lcom/android/launcher2/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z

    .line 773
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    iget-object v13, v6, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 777
    .end local v3           #icon:Lcom/android/launcher2/PagedViewIcon;
    .end local v5           #index:I
    .end local v6           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_8b
    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->createHardwareLayers()V

    .line 784
    return-void
.end method

.method public syncPageItems(IZ)V
    .registers 4
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 1295
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v0, :cond_8

    .line 1296
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    .line 1300
    :goto_7
    return-void

    .line 1298
    :cond_8
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V

    goto :goto_7
.end method

.method public syncPages()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 1274
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAllViews()V

    .line 1275
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1277
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1278
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_c
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    if-ge v2, v4, :cond_27

    .line 1279
    new-instance v3, Lcom/android/launcher2/PagedViewGridLayout;

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    invoke-direct {v3, v0, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 1281
    .local v3, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V

    .line 1282
    new-instance v4, Lcom/android/launcher2/PagedViewGridLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Lcom/android/launcher2/PagedViewGridLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1278
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1286
    .end local v3           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    :cond_27
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v1, v4, :cond_3a

    .line 1287
    new-instance v3, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-direct {v3, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 1288
    .local v3, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 1289
    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->addView(Landroid/view/View;)V

    .line 1286
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1291
    .end local v3           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_3a
    return-void
.end method

.method public syncWidgetPageItems(IZ)V
    .registers 26
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 1093
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v19, v2, v3

    .line 1096
    .local v19, numItemsPerPage:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1097
    .local v9, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->getContentWidth()I

    move-result v12

    .line 1098
    .local v12, contentWidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    sub-int v2, v12, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    mul-int/2addr v3, v7

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    div-int v4, v2, v3

    .line 1100
    .local v4, cellWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->getContentHeight()I

    move-result v11

    .line 1101
    .local v11, contentHeight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    sub-int v2, v11, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    mul-int/2addr v3, v7

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    div-int v5, v2, v3

    .line 1105
    .local v5, cellHeight:I
    mul-int v20, p1, v19

    .line 1106
    .local v20, offset:I
    move/from16 v14, v20

    .local v14, i:I
    :goto_5d
    add-int v2, v20, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v14, v2, :cond_7b

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    add-int/lit8 v14, v14, 0x1

    goto :goto_5d

    .line 1111
    :cond_7b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int v2, v2, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1112
    .local v6, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setColumnCount(I)V

    .line 1113
    const/4 v14, 0x0

    :goto_91
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_165

    .line 1114
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 1115
    .local v21, rawInfo:Ljava/lang/Object;
    const/4 v13, 0x0

    .line 1116
    .local v13, createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030006

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/PagedViewWidget;

    .line 1118
    .local v22, widget:Lcom/android/launcher2/PagedViewWidget;
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_130

    move-object/from16 v15, v21

    .line 1120
    check-cast v15, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1121
    .local v15, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v13, Lcom/android/launcher2/PendingAddWidgetInfo;

    .end local v13           #createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v13, v15, v2, v3}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1122
    .restart local v13       #createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v10

    .line 1123
    .local v10, cellSpans:[I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v2, v10, v3}, Lcom/android/launcher2/PagedViewWidget;->applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[ILcom/android/launcher2/HolographicOutlineHelper;)V

    .line 1125
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1136
    .end local v10           #cellSpans:[I
    .end local v15           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_d3
    :goto_d3
    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1138
    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1139
    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1142
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    rem-int v16, v14, v2

    .line 1143
    .local v16, ix:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    div-int v17, v14, v2

    .line 1144
    .local v17, iy:I
    new-instance v18, Landroid/widget/GridLayout$LayoutParams;

    sget-object v2, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v17

    invoke-static {v0, v2}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    sget-object v3, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v16

    invoke-static {v0, v3}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 1147
    .local v18, lp:Landroid/widget/GridLayout$LayoutParams;
    move-object/from16 v0, v18

    iput v4, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 1148
    move-object/from16 v0, v18

    iput v5, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 1149
    const/16 v2, 0x33

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 1150
    if-lez v16, :cond_11b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 1151
    :cond_11b
    if-lez v17, :cond_125

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    move-object/from16 v0, v18

    iput v2, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 1152
    :cond_125
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1113
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_91

    .line 1126
    .end local v16           #ix:I
    .end local v17           #iy:I
    .end local v18           #lp:Landroid/widget/GridLayout$LayoutParams;
    :cond_130
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_d3

    move-object/from16 v15, v21

    .line 1128
    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 1129
    .local v15, info:Landroid/content/pm/ResolveInfo;
    new-instance v13, Lcom/android/launcher2/PendingAddItemInfo;

    .end local v13           #createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    invoke-direct {v13}, Lcom/android/launcher2/PendingAddItemInfo;-><init>()V

    .line 1130
    .restart local v13       #createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    const/4 v2, 0x1

    iput v2, v13, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    .line 1131
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v13, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v15, v3}, Lcom/android/launcher2/PagedViewWidget;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/HolographicOutlineHelper;)V

    .line 1134
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_d3

    .line 1158
    .end local v13           #createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    .end local v15           #info:Landroid/content/pm/ResolveInfo;
    .end local v21           #rawInfo:Ljava/lang/Object;
    .end local v22           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_165
    new-instance v2, Lcom/android/launcher2/AppsCustomizePagedView$8;

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/AppsCustomizePagedView$8;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;IILcom/android/launcher2/PagedViewGridLayout;ZILjava/util/ArrayList;)V

    invoke-virtual {v6, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setOnLayoutListener(Ljava/lang/Runnable;)V

    .line 1180
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1484
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1485
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1486
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1488
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData()V

    .line 1489
    return-void
.end method

.method public updatePackages()V
    .registers 10

    .prologue
    .line 460
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    .line 461
    .local v3, wasEmpty:Z
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 462
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v5

    .line 464
    .local v5, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v2, shortcutsIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 466
    .local v1, shortcuts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 467
    .local v4, widget:Landroid/appwidget/AppWidgetProviderInfo;
    iget v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v6, :cond_41

    iget v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-lez v6, :cond_41

    .line 468
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 470
    :cond_41
    const-string v6, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has invalid dimensions ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 474
    .end local v4           #widget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_7a
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 475
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;

    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v8}, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 477
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 479
    if-eqz v3, :cond_9a

    .line 482
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->testDataReady()Z

    move-result v6

    if-eqz v6, :cond_99

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestLayout()V

    .line 487
    :cond_99
    :goto_99
    return-void

    .line 484
    :cond_9a
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 485
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData()V

    goto :goto_99
.end method

.method public zoom(FZ)V
    .registers 3
    .parameter "zoom"
    .parameter "animate"

    .prologue
    .line 1415
    return-void
.end method
