.class public Lcom/google/android/common/SwipeySwitcher;
.super Landroid/view/ViewGroup;
.source "SwipeySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;,
        Lcom/google/android/common/SwipeySwitcher$ViewHolder;,
        Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;,
        Lcom/google/android/common/SwipeySwitcher$Adapter;,
        Lcom/google/android/common/SwipeySwitcher$IViewHolder;,
        Lcom/google/android/common/SwipeySwitcher$ViewRunnable;,
        Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;,
        Lcom/google/android/common/SwipeySwitcher$IMakeView;
    }
.end annotation


# static fields
.field private static final MOVE_THRESHOLD:F = 0.5f

.field private static final VIEW_CACHE_SIZE:I = 0x3

.field static final sOrderLeft:[I

.field static final sOrderRight:[I


# instance fields
.field private mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

.field mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

.field private mAnimatingScroll:Z

.field private mCenterOnLayout:Z

.field private mClearAnimatingScroll:Z

.field private mContext:Landroid/content/Context;

.field private mDownX:I

.field private mDragging:Z

.field private mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field mLastTouchX:F

.field private mNextSelection:I

.field private mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

.field private mPlaceholders:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

.field mRefreshRunnable:Ljava/lang/Runnable;

.field final mReuseCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/common/SwipeySwitcher$IViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Landroid/widget/Scroller;

.field private mSelection:I

.field private mTouchSlop:I

.field private mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 599
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->sOrderLeft:[I

    .line 600
    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->sOrderRight:[I

    return-void

    .line 599
    :array_10
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 600
    :array_1a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 487
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    new-instance v1, Lcom/google/android/common/SwipeySwitcher$1;

    invoke-direct {v1, p0}, Lcom/google/android/common/SwipeySwitcher$1;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IMakeView;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    .line 138
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    new-instance v1, Lcom/google/android/common/SwipeySwitcher$2;

    invoke-direct {v1, p0}, Lcom/google/android/common/SwipeySwitcher$2;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IMakeView;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mPlaceholders:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    .line 553
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$4;

    invoke-direct {v0, p0}, Lcom/google/android/common/SwipeySwitcher$4;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mReuseCache:Ljava/util/HashMap;

    .line 774
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    .line 488
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->initSwipeySwitcher(Landroid/content/Context;)V

    .line 489
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 482
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    new-instance v1, Lcom/google/android/common/SwipeySwitcher$1;

    invoke-direct {v1, p0}, Lcom/google/android/common/SwipeySwitcher$1;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IMakeView;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    .line 138
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    new-instance v1, Lcom/google/android/common/SwipeySwitcher$2;

    invoke-direct {v1, p0}, Lcom/google/android/common/SwipeySwitcher$2;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IMakeView;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mPlaceholders:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    .line 553
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$4;

    invoke-direct {v0, p0}, Lcom/google/android/common/SwipeySwitcher$4;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mReuseCache:Ljava/util/HashMap;

    .line 774
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->initSwipeySwitcher(Landroid/content/Context;)V

    .line 484
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/common/SwipeySwitcher;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->swapLeftRight()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mPlaceholders:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/common/SwipeySwitcher;)I
    .registers 2
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/common/SwipeySwitcher;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->wrap(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IViewHolder;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/common/SwipeySwitcher;->installView(Lcom/google/android/common/SwipeySwitcher$IViewHolder;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimatingScroll:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/common/SwipeySwitcher;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/common/SwipeySwitcher;)I
    .registers 2
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    return v0
.end method

.method static synthetic access$1902(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/common/SwipeySwitcher;->mClearAnimatingScroll:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/common/SwipeySwitcher;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/google/android/common/SwipeySwitcher;->mDownX:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/common/SwipeySwitcher;)Z
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->recenter()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->ensureRight()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->ensureLeft()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/common/SwipeySwitcher;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    return-object v0
.end method

.method private clearScrollingCaches()V
    .registers 4

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    array-length v0, v0

    .line 829
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_12

    .line 830
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v2, v2, v1

    .line 831
    if-eqz v2, :cond_f

    .line 832
    invoke-interface {v2}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->clearScrollingCache()V

    .line 829
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 835
    :cond_12
    return-void
.end method

.method private createScrollingCaches()V
    .registers 4

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    array-length v0, v0

    .line 819
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_12

    .line 820
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v2, v2, v1

    .line 821
    if-eqz v2, :cond_f

    .line 822
    invoke-interface {v2}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->createScrollingCache()V

    .line 819
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 825
    :cond_12
    return-void
.end method

.method private ensureLeft()V
    .registers 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 343
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 344
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->swapLeftRight()V

    .line 347
    :cond_1d
    return-void
.end method

.method private ensureRight()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 351
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_1c

    .line 352
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 353
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->swapLeftRight()V

    .line 356
    :cond_1c
    return-void
.end method

.method private initSwipeySwitcher(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->makeGestureDetector()Landroid/view/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 493
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;

    .line 494
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->mContext:Landroid/content/Context;

    .line 496
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->mTouchSlop:I

    .line 498
    return-void
.end method

.method private installView(Lcom/google/android/common/SwipeySwitcher$IViewHolder;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 537
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    .line 538
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getHeight()I

    move-result v1

    .line 540
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 543
    invoke-interface {p1}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->get()Landroid/view/View;

    move-result-object v3

    .line 544
    const/4 v4, 0x1

    invoke-virtual {p0, v3, p2, v2, v4}, Lcom/google/android/common/SwipeySwitcher;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 545
    mul-int v2, v0, p2

    const/4 v4, 0x0

    mul-int v5, v0, p2

    add-int/2addr v0, v5

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 546
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aput-object p1, v0, p2

    .line 547
    return-void
.end method

.method private makeGestureDetector()Landroid/view/GestureDetector;
    .registers 4

    .prologue
    .line 363
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$3;

    invoke-direct {v0, p0}, Lcom/google/android/common/SwipeySwitcher$3;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    .line 478
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v1
.end method

.method private moveFactor()F
    .registers 3

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    .line 841
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    sub-int/2addr v1, v0

    .line 846
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 847
    return v0
.end method

.method private nextSelection(Z)I
    .registers 4
    .parameter

    .prologue
    .line 298
    if-eqz p1, :cond_7

    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    add-int/lit8 v0, v0, 0x1

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_6
.end method

.method private recenter()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 273
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method private recenterAndSelect(Z)V
    .registers 4
    .parameter

    .prologue
    .line 318
    const/4 v0, 0x0

    const/16 v1, 0x190

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(ZLjava/lang/Runnable;I)V

    .line 319
    return-void
.end method

.method private recenterAndSelect(ZLjava/lang/Runnable;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->nextSelection(Z)I

    move-result v0

    .line 303
    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    .line 304
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    iput-object p2, v0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->mOnDoneRunnable:Ljava/lang/Runnable;

    .line 306
    if-nez p1, :cond_25

    .line 308
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    neg-int v3, v3

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 309
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    :goto_24
    return-void

    .line 312
    :cond_25
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 313
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24
.end method

.method private swapLeftRight()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v0, v0, v3

    .line 330
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    .line 331
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aput-object v0, v1, v4

    .line 333
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 334
    return-void
.end method

.method private wrap(I)I
    .registers 4
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    if-nez v0, :cond_6

    move v0, p1

    .line 294
    :goto_5
    return v0

    .line 285
    :cond_6
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    .line 286
    if-nez v0, :cond_10

    move v0, p1

    .line 287
    goto :goto_5

    .line 289
    :cond_10
    if-gez p1, :cond_19

    .line 290
    neg-int v1, p1

    rem-int/2addr v1, v0

    sub-int v1, v0, v1

    .line 292
    :goto_16
    rem-int v0, v1, v0

    goto :goto_5

    :cond_19
    move v1, p1

    goto :goto_16
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .line 146
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 147
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v1, v0

    .line 148
    if-eqz v1, :cond_14

    .line 149
    invoke-interface {v1}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->stop()V

    .line 150
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 146
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_17
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_b

    .line 811
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 813
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public foreachView(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V
    .registers 4
    .parameter

    .prologue
    .line 777
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_14

    .line 778
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    .line 779
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->run(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 784
    :cond_14
    return-void

    .line 777
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAdapter()Lcom/google/android/common/SwipeySwitcher$Adapter;
    .registers 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getAdapter()Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    .prologue
    .line 971
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    invoke-direct {p0, v0}, Lcom/google/android/common/SwipeySwitcher;->wrap(I)I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 800
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v0, v0, v1

    if-eqz v0, :cond_10

    .line 801
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->get()Landroid/view/View;

    move-result-object v0

    .line 803
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getSelectedViewAdjacent(Z)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    if-eqz p1, :cond_e

    const/4 v1, 0x2

    :goto_5
    aget-object v0, v0, v1

    .line 792
    if-eqz v0, :cond_10

    .line 793
    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->get()Landroid/view/View;

    move-result-object v0

    .line 795
    :goto_d
    return-object v0

    .line 791
    :cond_e
    const/4 v1, 0x0

    goto :goto_5

    .line 795
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 853
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimatingScroll:Z

    if-eqz v0, :cond_7

    move v0, v3

    .line 875
    :goto_6
    return v0

    .line 857
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 858
    packed-switch v0, :pswitch_data_38

    .line 875
    :cond_e
    :goto_e
    :pswitch_e
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    goto :goto_6

    .line 860
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_e

    .line 863
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 864
    iget v1, p0, Lcom/google/android/common/SwipeySwitcher;->mDownX:I

    sub-int v1, v0, v1

    .line 865
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 866
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/common/SwipeySwitcher;->mTouchSlop:I

    if-le v1, v2, :cond_e

    .line 867
    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->mDownX:I

    .line 868
    iput-boolean v3, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 870
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->createScrollingCaches()V

    goto :goto_e

    .line 858
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_17
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    .line 605
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-interface {v1}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v1

    .line 607
    :goto_e
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->removeAllViews()V

    .line 609
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    if-nez v2, :cond_18

    .line 745
    :cond_15
    :goto_15
    return-void

    .line 605
    :cond_16
    const/4 v1, 0x0

    goto :goto_e

    .line 614
    :cond_18
    iget v2, p0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    iput v2, p0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    .line 617
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mReuseCache:Ljava/util/HashMap;

    .line 618
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 619
    const/4 v3, 0x0

    :goto_22
    const/4 v4, 0x3

    if-ge v3, v4, :cond_41

    .line 620
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v4, v4, v3

    .line 621
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 623
    if-nez v4, :cond_33

    .line 619
    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 626
    :cond_33
    invoke-interface {v4}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 627
    if-eqz v5, :cond_30

    .line 630
    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 643
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_67

    sget-object v3, Lcom/google/android/common/SwipeySwitcher;->sOrderLeft:[I

    .line 644
    :goto_4d
    const/4 v4, 0x0

    :goto_4e
    array-length v5, v3

    if-ge v4, v5, :cond_88

    .line 645
    aget v5, v3, v4

    .line 646
    iget v6, p0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    add-int/2addr v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 647
    iget-object v7, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-direct {p0, v6}, Lcom/google/android/common/SwipeySwitcher;->wrap(I)I

    move-result v6

    invoke-interface {v7, v6}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v6

    .line 648
    if-nez v6, :cond_6a

    .line 644
    :cond_64
    :goto_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 643
    :cond_67
    sget-object v3, Lcom/google/android/common/SwipeySwitcher;->sOrderRight:[I

    goto :goto_4d

    .line 651
    :cond_6a
    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    .line 652
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    .line 653
    if-eqz p1, :cond_64

    .line 656
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aput-object p1, v6, v5

    .line 658
    const/4 v6, 0x1

    if-eq v5, v6, :cond_64

    .line 659
    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v5, v6, v5

    invoke-interface {v5}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->unfocus()V

    goto :goto_64

    .line 665
    :cond_88
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_ac

    .line 666
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 667
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    .line 668
    invoke-interface {p1}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->stop()V

    goto :goto_96

    .line 677
    :cond_ac
    const/4 v2, -0x1

    :goto_ad
    const/4 v3, 0x1

    if-gt v2, v3, :cond_12e

    .line 678
    add-int/lit8 v3, v2, 0x1

    .line 679
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v4, v4, v3

    .line 680
    if-nez v4, :cond_cc

    .line 681
    const/4 v5, 0x0

    .line 683
    packed-switch v1, :pswitch_data_158

    .line 701
    const/4 v5, 0x0

    .line 704
    :cond_bd
    :goto_bd
    if-eqz v5, :cond_10e

    .line 705
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->get(Landroid/content/Intent;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v4

    .line 717
    :cond_c6
    :goto_c6
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    add-int/lit8 v6, v2, 0x1

    aput-object v4, v5, v6

    .line 723
    :cond_cc
    invoke-direct {p0, v4, v3}, Lcom/google/android/common/SwipeySwitcher;->installView(Lcom/google/android/common/SwipeySwitcher$IViewHolder;I)V

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    .line 687
    :pswitch_d2
    if-eqz v2, :cond_d6

    const/4 v5, 0x1

    goto :goto_bd

    :cond_d6
    const/4 v5, 0x0

    goto :goto_bd

    .line 694
    :pswitch_d8
    const/4 v6, -0x1

    if-ne v2, v6, :cond_f3

    .line 695
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    if-eqz v5, :cond_f1

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z

    move-result v5

    if-nez v5, :cond_f1

    const/4 v5, 0x1

    goto :goto_bd

    :cond_f1
    const/4 v5, 0x0

    goto :goto_bd

    .line 696
    :cond_f3
    const/4 v6, 0x1

    if-ne v2, v6, :cond_bd

    .line 697
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_10c

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z

    move-result v5

    if-nez v5, :cond_10c

    const/4 v5, 0x1

    goto :goto_bd

    :cond_10c
    const/4 v5, 0x0

    goto :goto_bd

    .line 709
    :cond_10e
    iget v5, p0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    add-int/2addr v5, v2

    invoke-direct {p0, v5}, Lcom/google/android/common/SwipeySwitcher;->wrap(I)I

    move-result v5

    .line 710
    if-nez v2, :cond_11f

    if-lez v1, :cond_11f

    .line 711
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-interface {v4, v5, p0}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getView(ILandroid/view/ViewGroup;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v4

    .line 713
    :cond_11f
    if-nez v4, :cond_c6

    .line 714
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mPlaceholders:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-interface {v6, v5}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->get(Landroid/content/Intent;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v4

    goto :goto_c6

    .line 728
    :cond_12e
    iget-boolean v1, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    if-eqz v1, :cond_136

    .line 729
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 733
    :cond_136
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_145

    .line 734
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->focus()V

    .line 739
    :cond_145
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 741
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mClearAnimatingScroll:Z

    if-eqz v0, :cond_15

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimatingScroll:Z

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mClearAnimatingScroll:Z

    goto/16 :goto_15

    .line 683
    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_d8
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4000

    .line 511
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 512
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 513
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 514
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v2

    .line 515
    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_26

    .line 516
    invoke-virtual {p0, v3}, Lcom/google/android/common/SwipeySwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 518
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 520
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 523
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 525
    :cond_26
    invoke-virtual {p0, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->setMeasuredDimension(II)V

    .line 526
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter

    .prologue
    const/high16 v1, 0x3f00

    const/high16 v3, -0x4100

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 884
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimatingScroll:Z

    if-eqz v0, :cond_c

    move v0, v4

    .line 944
    :goto_b
    return v0

    .line 888
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 889
    packed-switch v0, :pswitch_data_8e

    :cond_13
    :goto_13
    move v0, v4

    .line 944
    goto :goto_b

    .line 891
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->mDownX:I

    .line 893
    iput-boolean v4, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    .line 894
    iput-boolean v2, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 895
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->createScrollingCaches()V

    goto :goto_13

    .line 898
    :pswitch_29
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    if-eqz v0, :cond_13

    .line 899
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 901
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    if-eqz v0, :cond_13

    .line 902
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->moveFactor()F

    move-result v0

    .line 908
    cmpl-float v1, v0, v1

    if-gtz v1, :cond_42

    cmpg-float v0, v0, v3

    if-gez v0, :cond_57

    :cond_42
    move v0, v4

    .line 910
    :goto_43
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    invoke-interface {v1, v2, v0}, Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;->onRevealChange(FZ)V

    goto :goto_13

    :cond_57
    move v0, v2

    .line 908
    goto :goto_43

    .line 918
    :pswitch_59
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    if-eqz v0, :cond_13

    .line 919
    iput-boolean v4, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 920
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 921
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->clearScrollingCaches()V

    .line 924
    if-nez v0, :cond_75

    .line 925
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->moveFactor()F

    move-result v0

    .line 927
    cmpl-float v1, v0, v1

    if-lez v1, :cond_81

    .line 928
    invoke-direct {p0, v4}, Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(Z)V

    .line 935
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    if-eqz v0, :cond_7e

    .line 936
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;->onStopReveal()V

    .line 939
    :cond_7e
    iput-boolean v2, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    goto :goto_13

    .line 929
    :cond_81
    cmpg-float v0, v0, v3

    if-gez v0, :cond_89

    .line 930
    invoke-direct {p0, v2}, Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(Z)V

    goto :goto_75

    .line 932
    :cond_89
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->recenter()V

    goto :goto_75

    .line 889
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_59
        :pswitch_29
        :pswitch_59
    .end packed-switch
.end method

.method public selectNext(ZLjava/lang/Runnable;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(ZLjava/lang/Runnable;I)V

    .line 323
    return-void
.end method

.method public setAdapter(Lcom/google/android/common/SwipeySwitcher$Adapter;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 952
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    .line 955
    if-nez p1, :cond_1e

    move v0, v3

    .line 956
    :goto_6
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1e

    .line 957
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1b

    .line 958
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->stop()V

    .line 959
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 956
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 963
    :cond_1e
    iput v3, p0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    iput v3, p0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    .line 964
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 967
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 968
    return-void
.end method

.method public setOnTouchCallback(Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;)V
    .registers 2
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    .line 502
    return-void
.end method

.method public setSelection(I)V
    .registers 5
    .parameter

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    if-nez v0, :cond_5

    .line 985
    :cond_4
    :goto_4
    return-void

    .line 978
    :cond_5
    iput p1, p0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 980
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 982
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    if-eqz v0, :cond_4

    .line 983
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->wrap(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;->onSelection(Landroid/content/Intent;)V

    goto :goto_4
.end method
