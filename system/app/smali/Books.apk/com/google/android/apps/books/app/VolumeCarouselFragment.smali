.class public Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.super Landroid/app/Fragment;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/books/app/OnBackListener;
.implements Lcom/google/android/apps/books/widget/BooksHomeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;,
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;,
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;,
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;,
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;,
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/books/app/OnBackListener;",
        "Lcom/google/android/apps/books/widget/BooksHomeController;"
    }
.end annotation


# static fields
.field private static final LOGD:Z


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field mAllUpdatedPinnedStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

.field private mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

.field private mCarouselViewShifter:Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;

.field private final mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDetailView:Landroid/view/View;

.field private mDeviceConnected:Z

.field private mEmptyView:Landroid/view/ViewGroup;

.field private final mExternalStorageExceptionRunnable:Ljava/lang/Runnable;

.field private mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

.field private mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

.field private mManageOfflineView:Landroid/view/View;

.field private mManageOfflineViewAnimator:Landroid/animation/AnimatorSet;

.field private mManageOfflineViewShifter:Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;

.field private mMenu:Landroid/view/Menu;

.field private mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

.field private final mOfflineViewAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mRequeryHandler:Landroid/os/Handler;

.field private mRequeryOnResume:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mShowingOfflineUi:Z

.field private mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

.field private mView:Landroid/view/ViewGroup;

.field private mViewMode:Ljava/lang/String;

.field private mVolumesData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/books/model/CarouselVolumeData;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumesDataLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 95
    const-string v0, "VolumeCarouselFragment"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->LOGD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 107
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Lcom/google/android/apps/books/app/VolumeCarouselFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mRequeryHandler:Landroid/os/Handler;

    .line 137
    const-string v0, "carousel"

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mViewMode:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesDataLock:Ljava/lang/Object;

    .line 146
    iput-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAllUpdatedPinnedStates:Ljava/util/Map;

    .line 183
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$1;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mExternalStorageExceptionRunnable:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$2;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 536
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$6;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$6;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineViewAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1157
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setViewMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->updateOfflineUi()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setPinned(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mRequeryOnResume:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->updateDeviceConnected(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getOfflineViewOpaqueHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselViewShifter:Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/widget/BooksListHomeView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mRequeryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animateOfflineView(Z)V
    .registers 17
    .parameter "showingOffline"

    .prologue
    .line 596
    iget-object v8, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_9

    .line 597
    iget-object v8, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 600
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->shouldShiftCarouselToManageOffline()Z

    move-result v4

    .line 602
    .local v4, shiftCarousel:Z
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/AnimatorSet;

    .line 604
    if-eqz v4, :cond_6b

    .line 605
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getOfflineViewOpaqueHeight()I

    move-result v3

    .line 606
    .local v3, height:I
    if-eqz p1, :cond_63

    const/4 v6, 0x0

    .line 607
    .local v6, startCarousel:I
    :goto_1d
    if-eqz p1, :cond_65

    neg-int v1, v3

    .line 608
    .local v1, endCarousel:I
    :goto_20
    if-eqz p1, :cond_67

    move v7, v3

    .line 609
    .local v7, startOffline:I
    :goto_23
    if-eqz p1, :cond_69

    const/4 v2, 0x0

    .line 611
    .local v2, endOffline:I
    :goto_26
    iget-object v8, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/AnimatorSet;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewShifter:Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;

    const-string v12, "shift"

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v7, v13, v14

    const/4 v14, 0x1

    aput v2, v13, v14

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselViewShifter:Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;

    const-string v12, "shift"

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v1, v13, v14

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 623
    .end local v1           #endCarousel:I
    .end local v2           #endOffline:I
    .end local v3           #height:I
    .end local v6           #startCarousel:I
    .end local v7           #startOffline:I
    :goto_56
    iget-object v8, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineViewAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 624
    iget-object v8, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 625
    return-void

    .line 606
    .restart local v3       #height:I
    :cond_63
    neg-int v6, v3

    goto :goto_1d

    .line 607
    .restart local v6       #startCarousel:I
    :cond_65
    const/4 v1, 0x0

    goto :goto_20

    .line 608
    .restart local v1       #endCarousel:I
    :cond_67
    const/4 v7, 0x0

    goto :goto_23

    .restart local v7       #startOffline:I
    :cond_69
    move v2, v3

    .line 609
    goto :goto_26

    .line 617
    .end local v1           #endCarousel:I
    .end local v3           #height:I
    .end local v6           #startCarousel:I
    .end local v7           #startOffline:I
    :cond_6b
    if-eqz p1, :cond_8f

    const/4 v5, 0x0

    .line 618
    .local v5, startAlpha:F
    :goto_6e
    if-eqz p1, :cond_92

    const/high16 v0, 0x3f80

    .line 619
    .local v0, endAlpha:F
    :goto_72
    iget-object v8, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/AnimatorSet;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    const-string v12, "alpha"

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v5, v13, v14

    const/4 v14, 0x1

    aput v0, v13, v14

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_56

    .line 617
    .end local v0           #endAlpha:F
    .end local v5           #startAlpha:F
    :cond_8f
    const/high16 v5, 0x3f80

    goto :goto_6e

    .line 618
    .restart local v5       #startAlpha:F
    :cond_92
    const/4 v0, 0x0

    goto :goto_72
.end method

.method private findFreeSpaceLabel()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    const v1, 0x7f0f004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private findStorageIndicator()Landroid/widget/ProgressBar;
    .registers 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    const v1, 0x7f0f004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getOfflineViewOpaqueHeight()I
    .registers 7

    .prologue
    const/high16 v5, -0x8000

    .line 566
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gtz v2, :cond_23

    .line 574
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 579
    :cond_23
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    const v3, 0x7f0f0049

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 580
    .local v0, opaqueArea:Landroid/view/View;
    if-eqz v0, :cond_33

    .line 581
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 587
    :goto_32
    return v1

    .line 584
    :cond_33
    const-string v2, "VolumeCarouselFragment"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 585
    const-string v2, "VolumeCarouselFragment"

    const-string v3, "getOfflineViewOpaqueHeight : no opaque area."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_43
    const/4 v1, 0x0

    goto :goto_32
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2

    .prologue
    .line 1150
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private getVolumeData(Ljava/lang/String;)Lcom/google/android/apps/books/model/CarouselVolumeData;
    .registers 7
    .parameter "volumeId"

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesDataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 456
    :try_start_4
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    if-nez v4, :cond_b

    monitor-exit v3

    move-object v1, v2

    .line 463
    :goto_a
    return-object v1

    .line 457
    :cond_b
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/model/CarouselVolumeData;

    .line 458
    .local v1, volumeData:Lcom/google/android/apps/books/model/CarouselVolumeData;
    iget-object v4, v1, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 459
    monitor-exit v3

    goto :goto_a

    .line 462
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #volumeData:Lcom/google/android/apps/books/model/CarouselVolumeData;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2a
    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    move-object v1, v2

    .line 463
    goto :goto_a
.end method

.method private static makeStorageIndicatorValue(JJ)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 819
    long-to-float v0, p0

    long-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x461c4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private maybeUpdateMenu()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 495
    iget-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mMenu:Landroid/view/Menu;

    if-nez v5, :cond_7

    .line 512
    :goto_6
    return-void

    .line 500
    :cond_7
    iget-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mMenu:Landroid/view/Menu;

    const v8, 0x7f0f0080

    invoke-interface {v5, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 501
    .local v3, manageOffline:Landroid/view/MenuItem;
    iget-boolean v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    if-nez v5, :cond_55

    move v5, v6

    :goto_15
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 503
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->shouldUseListViewToManageOffline()Z

    move-result v1

    .line 505
    .local v1, forceListView:Z
    iget-boolean v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    if-eqz v5, :cond_22

    if-nez v1, :cond_57

    :cond_22
    move v4, v6

    .line 507
    .local v4, modeChangeOK:Z
    :goto_23
    iget-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mMenu:Landroid/view/Menu;

    const v8, 0x7f0f0081

    invoke-interface {v5, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 508
    .local v0, carouselView:Landroid/view/MenuItem;
    if-eqz v4, :cond_59

    iget-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mViewMode:Ljava/lang/String;

    const-string v8, "list"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    move v5, v6

    :goto_39
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 510
    iget-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mMenu:Landroid/view/Menu;

    const v8, 0x7f0f0082

    invoke-interface {v5, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 511
    .local v2, listView:Landroid/view/MenuItem;
    if-eqz v4, :cond_5b

    iget-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mViewMode:Ljava/lang/String;

    const-string v8, "carousel"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    :goto_51
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .end local v0           #carouselView:Landroid/view/MenuItem;
    .end local v1           #forceListView:Z
    .end local v2           #listView:Landroid/view/MenuItem;
    .end local v4           #modeChangeOK:Z
    :cond_55
    move v5, v7

    .line 501
    goto :goto_15

    .restart local v1       #forceListView:Z
    :cond_57
    move v4, v7

    .line 505
    goto :goto_23

    .restart local v0       #carouselView:Landroid/view/MenuItem;
    .restart local v4       #modeChangeOK:Z
    :cond_59
    move v5, v7

    .line 508
    goto :goto_39

    .restart local v2       #listView:Landroid/view/MenuItem;
    :cond_5b
    move v6, v7

    .line 511
    goto :goto_51
.end method

.method private populateBookMenu(Lcom/google/android/apps/books/model/CarouselVolumeData;Landroid/view/Menu;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 1102
    if-eqz p1, :cond_4d

    .line 1103
    iget-boolean v0, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->isLimitedPreviewLocked:Z

    if-eqz v0, :cond_4a

    const v0, 0x7f110001

    .line 1105
    :goto_9
    new-instance v1, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1109
    const v0, 0x7f0f007e

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1110
    if-eqz v0, :cond_2b

    .line 1111
    iget-object v1, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->sectionFraction:Ljava/lang/Double;

    iget-object v2, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->resourceFraction:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->pageFraction:Ljava/lang/Double;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isPartiallyOrFullyDownloaded(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    .line 1113
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1116
    :cond_2b
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;

    iget-object v2, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->title:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->canonicalUrl:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/apps/books/model/CarouselVolumeData;->buyUrl:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumeMenuClickListener;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v2

    .line 1119
    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v2, :cond_4d

    .line 1120
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1119
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 1103
    :cond_4a
    const/high16 v0, 0x7f11

    goto :goto_9

    .line 1123
    :cond_4d
    return-void
.end method

.method private setPinned(Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 990
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->isPinned(Ljava/lang/String;)Z

    move-result v0

    .line 991
    if-eq v0, p2, :cond_41

    .line 992
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUpdatedPinnedStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAllUpdatedPinnedStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getVolumeData(Ljava/lang/String;)Lcom/google/android/apps/books/model/CarouselVolumeData;

    move-result-object v0

    .line 996
    if-nez v0, :cond_42

    .line 997
    const-string v0, "VolumeCarouselFragment"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 998
    const-string v0, "VolumeCarouselFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPinned() found no volume data for volume id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_41
    :goto_41
    return-void

    .line 1003
    :cond_42
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    iget v0, v0, Lcom/google/android/apps/books/model/CarouselVolumeData;->slotIndex:I

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/widget/BooksHomeView;->toggleMakeAvailableOffline(I)V

    .line 1004
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->updateOfflineUi()V

    goto :goto_41
.end method

.method private setViewMode(Ljava/lang/String;)V
    .registers 3
    .parameter "viewMode"

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mViewMode:Ljava/lang/String;

    .line 1137
    const-string v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1138
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    .line 1139
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->hide()V

    .line 1140
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksListHomeView;->show()V

    .line 1146
    :cond_18
    :goto_18
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->maybeUpdateMenu()V

    .line 1147
    return-void

    .line 1141
    :cond_1c
    const-string v0, "carousel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1142
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    .line 1143
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksListHomeView;->hide()V

    .line 1144
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->show()V

    goto :goto_18
.end method

.method private shouldShiftCarouselToManageOffline()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mViewMode:Ljava/lang/String;

    const-string v3, "list"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 533
    :cond_b
    :goto_b
    return v1

    .line 530
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 533
    .local v0, shiftCarousel:Z
    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->shouldUseListViewToManageOffline()Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v1, 0x1

    goto :goto_b
.end method

.method private shouldUseListViewToManageOffline()Z
    .registers 3

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private updateDeviceConnected(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 228
    invoke-static {p1}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v0

    .line 229
    .local v0, connected:Z
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDeviceConnected:Z

    if-eq v0, v1, :cond_f

    .line 230
    iput-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDeviceConnected:Z

    .line 231
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/widget/BooksHomeView;->onDeviceConnectionChanged(Z)V

    .line 233
    :cond_f
    return-void
.end method

.method private updateOfflineUi()V
    .registers 13

    .prologue
    const/4 v1, 0x4

    const/4 v11, 0x0

    .line 823
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 824
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->findStorageIndicator()Landroid/widget/ProgressBar;

    move-result-object v5

    .line 825
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->findFreeSpaceLabel()Landroid/widget/TextView;

    move-result-object v6

    .line 826
    if-eqz v4, :cond_cb

    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mTotalBytes:Ljava/lang/Long;

    if-eqz v0, :cond_cb

    .line 829
    invoke-virtual {v5, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 830
    const/16 v0, 0x2710

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 831
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUsedBytes:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    iget-object v2, v2, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mTotalBytes:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->makeStorageIndicatorValue(JJ)I

    move-result v0

    .line 833
    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 835
    const-wide/16 v2, 0x0

    .line 836
    iget-object v7, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesDataLock:Ljava/lang/Object;

    monitor-enter v7

    .line 840
    :try_start_3e
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUpdatedPinnedStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 841
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getVolumeData(Ljava/lang/String;)Lcom/google/android/apps/books/model/CarouselVolumeData;

    move-result-object v1

    .line 842
    iget-boolean v9, v1, Lcom/google/android/apps/books/model/CarouselVolumeData;->pinned:Z

    .line 843
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 844
    if-eq v9, v10, :cond_d2

    .line 845
    iget v0, v1, Lcom/google/android/apps/books/model/CarouselVolumeData;->preferredMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 846
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const-wide/32 v0, 0xf4240

    .line 849
    :goto_82
    if-nez v10, :cond_87

    .line 850
    const-wide/16 v9, -0x1

    mul-long/2addr v0, v9

    .line 852
    :cond_87
    add-long/2addr v0, v2

    :goto_88
    move-wide v2, v0

    .line 854
    goto :goto_4a

    .line 846
    :cond_8a
    const-wide/32 v0, 0x989680

    goto :goto_82

    .line 855
    :cond_8e
    monitor-exit v7
    :try_end_8f
    .catchall {:try_start_3e .. :try_end_8f} :catchall_c8

    .line 857
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUsedBytes:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 859
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    iget-object v2, v2, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mTotalBytes:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->makeStorageIndicatorValue(JJ)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 862
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    iget-object v2, v2, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mTotalBytes:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 864
    const v1, 0x7f0e0073

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v11

    invoke-virtual {v4, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 865
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 871
    :goto_c7
    return-void

    .line 855
    :catchall_c8
    move-exception v0

    :try_start_c9
    monitor-exit v7
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v0

    .line 868
    :cond_cb
    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 869
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c7

    :cond_d2
    move-wide v0, v2

    goto :goto_88
.end method


# virtual methods
.method public blockingGetFetchService()Lcom/google/android/apps/books/service/ContentFetchService;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1184
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1185
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/google/android/apps/books/app/BooksActivity;

    if-eqz v2, :cond_1c

    .line 1187
    :try_start_9
    check-cast v0, Lcom/google/android/apps/books/app/BooksActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFetchService()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/service/ContentFetchService;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_15} :catch_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_15} :catch_19

    .line 1194
    :goto_15
    return-object v2

    .line 1188
    :catch_16
    move-exception v1

    .local v1, e:Ljava/lang/InterruptedException;
    move-object v2, v3

    .line 1189
    goto :goto_15

    .line 1190
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_19
    move-exception v1

    .local v1, e:Ljava/util/concurrent/ExecutionException;
    move-object v2, v3

    .line 1191
    goto :goto_15

    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1c
    move-object v2, v3

    .line 1194
    goto :goto_15
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCoverLoadEnsurer(Landroid/net/Uri;)Lcom/google/android/apps/books/common/ImageManager$Ensurer;
    .registers 4
    .parameter "coverUri"

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/common/BooksContext;

    invoke-interface {v1}, Lcom/google/android/apps/books/common/BooksContext;->getVolumeCoverFetchDispatcher()Lcom/google/android/apps/books/sync/FetchDispatcher;

    move-result-object v0

    .line 1021
    .local v0, fetchDispatcher:Lcom/google/android/apps/books/sync/FetchDispatcher;
    new-instance v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$9;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Lcom/google/android/apps/books/sync/FetchDispatcher;Landroid/net/Uri;)V

    return-object v1
.end method

.method public getDetailView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDetailView:Landroid/view/View;

    return-object v0
.end method

.method public getExternalStorageExceptionRunnable()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mExternalStorageExceptionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isPinned(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAllUpdatedPinnedStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 976
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAllUpdatedPinnedStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 985
    :goto_14
    return v0

    .line 978
    :cond_15
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getVolumeData(Ljava/lang/String;)Lcom/google/android/apps/books/model/CarouselVolumeData;

    move-result-object v0

    .line 979
    if-nez v0, :cond_3e

    .line 980
    const-string v0, "VolumeCarouselFragment"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 981
    const-string v0, "VolumeCarouselFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPinned() found no volume data for volume id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_3c
    const/4 v0, 0x0

    goto :goto_14

    .line 985
    :cond_3e
    iget-boolean v0, v0, Lcom/google/android/apps/books/model/CarouselVolumeData;->pinned:Z

    goto :goto_14
.end method

.method public isShowingOfflineUi()Z
    .registers 2

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 206
    .local v0, args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    .line 207
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    if-eqz v1, :cond_18

    .line 208
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->setAccount(Landroid/accounts/Account;)V

    .line 210
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    if-eqz v1, :cond_23

    .line 211
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/BooksListHomeView;->setAccount(Landroid/accounts/Account;)V

    .line 214
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/high16 v2, 0x7f0f

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 215
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1127
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->isShowingOfflineUi()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1128
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setShowOfflineUi(Z)V

    .line 1129
    const/4 v0, 0x1

    .line 1131
    :cond_b
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setHasOptionsMenu(Z)V

    .line 199
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 12
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 416
    .local v1, context:Landroid/content/Context;
    invoke-static {p2}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v7

    .line 418
    .local v7, account:Landroid/accounts/Account;
    invoke-static {v7}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->myEBooksDirUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    .line 420
    .local v2, volumeDirUri:Landroid/net/Uri;
    const-string v8, "last_interaction DESC"

    .line 421
    .local v8, sortingOrder:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/google/android/apps/books/model/CarouselVolumeData$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "last_interaction DESC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 477
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 479
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mMenu:Landroid/view/Menu;

    .line 481
    const v0, 0x7f110002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 482
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    .line 239
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 241
    .local v7, context:Landroid/content/Context;
    new-instance v0, Lcom/google/android/apps/books/sync/SyncAccountsState;

    invoke-direct {v0, v7}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    .line 243
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mResolver:Landroid/content/ContentResolver;

    .line 244
    invoke-static {v7}, Lcom/google/android/apps/books/app/BooksApplication;->getApiaryClient(Landroid/content/Context;)Lcom/google/android/apps/books/api/ApiaryClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    .line 247
    const v0, 0x7f03000f

    invoke-virtual {p1, v0, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mEmptyView:Landroid/view/ViewGroup;

    .line 252
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    const v1, 0x7f0f001a

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v6

    .line 253
    .local v6, carousel:Landroid/view/View;
    invoke-static {v7}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDeviceConnected:Z

    .line 254
    new-instance v0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDeviceConnected:Z

    invoke-direct {v0, p0, v6, v1, v2}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;-><init>(Lcom/google/android/apps/books/widget/BooksHomeController;Landroid/view/View;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    .line 256
    new-instance v0, Lcom/google/android/apps/books/widget/BooksListHomeView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    const v2, 0x7f0f0035

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    const v4, 0x7f0f0037

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDeviceConnected:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/widget/BooksListHomeView;-><init>(Lcom/google/android/apps/books/widget/BooksHomeController;Landroid/widget/ListView;Ljava/util/List;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_7e

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->setAccount(Landroid/accounts/Account;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/BooksListHomeView;->setAccount(Landroid/accounts/Account;)V

    .line 264
    :cond_7e
    new-instance v9, Landroid/view/ContextThemeWrapper;

    const v0, 0x103006b

    invoke-direct {v9, v7, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 266
    .local v9, holoContext:Landroid/content/Context;
    invoke-virtual {p1, v9}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 267
    .local v10, holoInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03001c

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    .line 268
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    if-eqz v0, :cond_ea

    .line 269
    .local v11, visibility:I
    :goto_99
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 270
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->updateOfflineUi()V

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;

    invoke-direct {v0, v6}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselViewShifter:Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;

    .line 275
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewShifter:Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    const v1, 0x7f0f004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 279
    .local v8, doneButton:Landroid/view/View;
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$3;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_cc
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDetailView:Landroid/view/View;

    if-nez v0, :cond_da

    .line 288
    const v0, 0x7f03002f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDetailView:Landroid/view/View;

    .line 290
    :cond_da
    monitor-exit v1
    :try_end_db
    .catchall {:try_start_cc .. :try_end_db} :catchall_ed

    .line 292
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    return-object v0

    .line 268
    .end local v8           #doneButton:Landroid/view/View;
    .end local v11           #visibility:I
    :cond_ea
    const/16 v11, 0x8

    goto :goto_99

    .line 290
    .restart local v8       #doneButton:Landroid/view/View;
    .restart local v11       #visibility:I
    :catchall_ed
    move-exception v0

    :try_start_ee
    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->onDestroy()V

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksListHomeView;->onDestroy()V

    .line 317
    return-void
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 302
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 303
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 306
    :try_start_f
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->onDestroyView()V

    .line 307
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/BooksListHomeView;->onDestroyView()V

    .line 308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDetailView:Landroid/view/View;

    .line 309
    monitor-exit v2

    .line 310
    return-void

    .line 309
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 14
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 427
    const-string v6, "VolumeCarouselFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLoadFinished() with count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->hintHomeLoaded()V

    .line 433
    iget-object v6, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesDataLock:Ljava/lang/Object;

    monitor-enter v6

    .line 435
    :try_start_28
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 436
    .local v1, count:I
    iget-object v7, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    iget-object v8, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getLastMyEbooksFetchTime(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_64

    move v0, v4

    .line 438
    .local v0, alreadyFetched:Z
    :goto_3d
    if-eqz v0, :cond_66

    if-nez v1, :cond_66

    .line 440
    .local v4, showEmpty:Z
    :goto_41
    iget-object v7, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mEmptyView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_68

    :goto_45
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 442
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    .line 443
    const/4 v2, 0x0

    .local v2, i:I
    :goto_50
    if-ge v2, v1, :cond_6b

    .line 444
    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 445
    new-instance v3, Lcom/google/android/apps/books/model/CarouselVolumeData;

    iget-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    invoke-direct {v3, v5, p2, v2}, Lcom/google/android/apps/books/model/CarouselVolumeData;-><init>(Landroid/accounts/Account;Landroid/database/Cursor;I)V

    .line 446
    .local v3, newData:Lcom/google/android/apps/books/model/CarouselVolumeData;
    iget-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .end local v0           #alreadyFetched:Z
    .end local v2           #i:I
    .end local v3           #newData:Lcom/google/android/apps/books/model/CarouselVolumeData;
    .end local v4           #showEmpty:Z
    :cond_64
    move v0, v5

    .line 436
    goto :goto_3d

    .restart local v0       #alreadyFetched:Z
    :cond_66
    move v4, v5

    .line 438
    goto :goto_41

    .line 440
    .restart local v4       #showEmpty:Z
    :cond_68
    const/16 v5, 0x8

    goto :goto_45

    .line 449
    .restart local v2       #i:I
    :cond_6b
    iget-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v7}, Lcom/google/android/apps/books/widget/BooksHomeView;->setVolumeData(Ljava/util/List;)V

    .line 451
    monitor-exit v6

    .line 452
    return-void

    .line 451
    .end local v0           #alreadyFetched:Z
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #showEmpty:Z
    :catchall_79
    move-exception v5

    monitor-exit v6
    :try_end_7b
    .catchall {:try_start_28 .. :try_end_7b} :catchall_79

    throw v5
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    .line 472
    monitor-exit v1

    .line 473
    return-void

    .line 472
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public onMoveToHome()V
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    if-eqz v0, :cond_9

    .line 766
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    invoke-interface {v0}, Lcom/google/android/apps/books/widget/BooksHomeView;->moveToHome()V

    .line 768
    :cond_9
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 928
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_66

    move v2, v1

    .line 959
    :cond_a
    :goto_a
    return v2

    .line 930
    :pswitch_b
    iget-boolean v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    if-nez v3, :cond_10

    move v1, v2

    :cond_10
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setShowOfflineUi(Z)V

    goto :goto_a

    .line 936
    :pswitch_14
    const-string v1, "carousel"

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setViewMode(Ljava/lang/String;)V

    .line 937
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 938
    .local v0, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    const-string v1, "carousel"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;->setViewMode(Ljava/lang/String;)V

    .line 939
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/BooksHomeView;->refreshManageOfflineUi()V

    .line 940
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 941
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3}, Lcom/google/android/apps/books/widget/BooksHomeView;->setVolumeData(Ljava/util/List;)V

    goto :goto_a

    .line 948
    .end local v0           #prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    :pswitch_3d
    const-string v1, "list"

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setViewMode(Ljava/lang/String;)V

    .line 949
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 950
    .restart local v0       #prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    const-string v1, "list"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;->setViewMode(Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/BooksHomeView;->refreshManageOfflineUi()V

    .line 952
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 953
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3}, Lcom/google/android/apps/books/widget/BooksHomeView;->setVolumeData(Ljava/util/List;)V

    goto :goto_a

    .line 928
    :pswitch_data_66
    .packed-switch 0x7f0f0080
        :pswitch_b
        :pswitch_14
        :pswitch_3d
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 405
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->onPause()V

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksListHomeView;->onPause()V

    .line 410
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 411
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 487
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->maybeUpdateMenu()V

    .line 488
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 364
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    if-eqz v1, :cond_13

    .line 367
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    new-instance v2, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    :cond_13
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHomeView:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->onResume()V

    .line 383
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/BooksListHomeView;->onResume()V

    .line 385
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_2d

    .line 386
    new-instance v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$5;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 394
    :cond_2d
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    invoke-static {v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildAccountVolumesDirUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    .line 395
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 397
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mRequeryOnResume:Z

    if-eqz v1, :cond_4f

    .line 398
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/high16 v2, 0x7f0f

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    .line 399
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mRequeryOnResume:Z

    .line 401
    :cond_4f
    return-void
.end method

.method public onStart()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 321
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 326
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v3

    .line 327
    .local v3, scene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 330
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 332
    const v4, 0x7f0f001c

    invoke-interface {v3, v4}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 334
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->shouldUseListViewToManageOffline()Z

    move-result v1

    .line 336
    .local v1, forceListView:Z
    iget-boolean v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    if-eqz v4, :cond_5c

    if-eqz v1, :cond_5c

    .line 337
    const-string v4, "list"

    invoke-direct {p0, v4}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setViewMode(Ljava/lang/String;)V

    .line 345
    :goto_33
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/android/apps/books/util/WindowUtils;->setBrightness(ILandroid/view/Window;)V

    .line 347
    if-eqz v0, :cond_4b

    .line 348
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 349
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    const/4 v4, 0x4

    invoke-virtual {v0, v7, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 355
    :cond_4b
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    if-eqz v4, :cond_5b

    .line 356
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v5}, Lcom/google/android/apps/books/widget/BooksHomeView;->setVolumeData(Ljava/util/List;)V

    .line 358
    :cond_5b
    return-void

    .line 339
    :cond_5c
    new-instance v2, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 340
    .local v2, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v2}, Lcom/google/android/apps/books/preference/LocalPreferences;->getViewMode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mViewMode:Ljava/lang/String;

    .line 341
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mViewMode:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setViewMode(Ljava/lang/String;)V

    goto :goto_33
.end method

.method public openBookInReader(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1031
    sget-boolean v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->LOGD:Z

    if-eqz v0, :cond_22

    const-string v0, "VolumeCarouselFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openBookInReader("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1034
    if-nez v0, :cond_29

    .line 1050
    :goto_28
    return-void

    .line 1036
    :cond_29
    new-instance v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$10;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_28
.end method

.method public populateBookMenu(Ljava/lang/String;Landroid/view/Menu;)V
    .registers 4
    .parameter "volumeId"
    .parameter "menu"

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getVolumeData(Ljava/lang/String;)Lcom/google/android/apps/books/model/CarouselVolumeData;

    move-result-object v0

    .line 1055
    .local v0, data:Lcom/google/android/apps/books/model/CarouselVolumeData;
    if-eqz v0, :cond_9

    .line 1056
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->populateBookMenu(Lcom/google/android/apps/books/model/CarouselVolumeData;Landroid/view/Menu;)V

    .line 1058
    :cond_9
    return-void
.end method

.method public setShowOfflineUi(Z)V
    .registers 24
    .parameter "show"

    .prologue
    .line 668
    if-eqz p1, :cond_93

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    move/from16 v18, v0

    if-nez v18, :cond_93

    .line 669
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->shouldUseListViewToManageOffline()Z

    move-result v8

    .line 671
    .local v8, forceListView:Z
    if-eqz v8, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mViewMode:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "list"

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_32

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/google/android/apps/books/app/VolumeCarouselFragment$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$7;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    const-wide/16 v20, 0x32

    invoke-virtual/range {v18 .. v21}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 681
    :cond_32
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->animateOfflineView(Z)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 685
    new-instance v18, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Lcom/google/android/apps/books/app/VolumeCarouselFragment$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 688
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_73

    .line 689
    new-instance v18, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/content/Context;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 691
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getOfflineViewOpaqueHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/apps/books/widget/BooksListHomeView;->setPaddingForBottomOfList(I)V

    .line 759
    .end local v6           #context:Landroid/content/Context;
    .end local v8           #forceListView:Z
    :cond_80
    :goto_80
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    .line 760
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->maybeUpdateMenu()V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/apps/books/widget/BooksHomeView;->refreshManageOfflineUi()V

    .line 762
    return-void

    .line 693
    :cond_93
    if-nez p1, :cond_80

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    move/from16 v18, v0

    if-eqz v18, :cond_80

    .line 695
    new-instance v13, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 696
    .local v13, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mViewMode:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Lcom/google/android/apps/books/preference/LocalPreferences;->getViewMode()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_df

    .line 697
    invoke-virtual {v13}, Lcom/google/android/apps/books/preference/LocalPreferences;->getViewMode()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setViewMode(Ljava/lang/String;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_df

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHomeView:Lcom/google/android/apps/books/widget/BooksHomeView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {v18 .. v19}, Lcom/google/android/apps/books/widget/BooksHomeView;->setVolumeData(Ljava/util/List;)V

    .line 705
    :cond_df
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->animateOfflineView(Z)V

    .line 707
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDeviceConnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_18e

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUpdatedPinnedStates:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_104
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_18e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 710
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getVolumeData(Ljava/lang/String;)Lcom/google/android/apps/books/model/CarouselVolumeData;

    move-result-object v16

    .line 711
    .local v16, volumeData:Lcom/google/android/apps/books/model/CarouselVolumeData;
    if-eqz v16, :cond_104

    .line 715
    move-object/from16 v0, v16

    iget-boolean v10, v0, Lcom/google/android/apps/books/model/CarouselVolumeData;->pinned:Z

    .line 716
    .local v10, isPinned:Z
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 717
    .local v17, willBePinned:Z
    if-nez v10, :cond_104

    if-eqz v17, :cond_104

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 719
    .local v4, activity:Landroid/app/Activity;
    const v18, 0x7f0e00a8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 720
    .local v15, title:Ljava/lang/String;
    const v18, 0x7f0e00a9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 722
    .local v14, text:Ljava/lang/String;
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 724
    .local v5, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 725
    invoke-virtual {v5, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 726
    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 727
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 728
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 729
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 730
    const v18, 0x7f02006d

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 732
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v11

    .line 733
    .local v11, notif:Landroid/app/Notification;
    const-string v18, "notification"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 735
    .local v12, notificationManager:Landroid/app/NotificationManager;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 753
    .end local v4           #activity:Landroid/app/Activity;
    .end local v5           #builder:Landroid/app/Notification$Builder;
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #isPinned:Z
    .end local v11           #notif:Landroid/app/Notification;
    .end local v12           #notificationManager:Landroid/app/NotificationManager;
    .end local v14           #text:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #volumeData:Lcom/google/android/apps/books/model/CarouselVolumeData;
    .end local v17           #willBePinned:Z
    :cond_18e
    new-instance v18, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/accounts/Account;Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 755
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/apps/books/widget/BooksListHomeView;->setPaddingForBottomOfList(I)V

    goto/16 :goto_80
.end method

.method public togglePinned(Ljava/lang/String;)V
    .registers 4
    .parameter "volumeId"

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$8;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 971
    return-void
.end method
