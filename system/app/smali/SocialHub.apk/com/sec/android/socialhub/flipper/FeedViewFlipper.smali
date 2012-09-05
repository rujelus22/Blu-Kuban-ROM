.class public Lcom/sec/android/socialhub/flipper/FeedViewFlipper;
.super Lcom/sec/android/socialhub/flipper/AbsViewFlipper;
.source "FeedViewFlipper.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mFeeds:Lcom/sec/android/socialhub/feedslist/FeedListView;

.field public mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

.field public mNoAccount:Lcom/sec/android/socialhub/feedslist/FeedNoAccountView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mFeeds:Lcom/sec/android/socialhub/feedslist/FeedListView;

    .line 15
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

    .line 16
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mNoAccount:Lcom/sec/android/socialhub/feedslist/FeedNoAccountView;

    .line 17
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mFeeds:Lcom/sec/android/socialhub/feedslist/FeedListView;

    .line 15
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

    .line 16
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mNoAccount:Lcom/sec/android/socialhub/feedslist/FeedNoAccountView;

    .line 17
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getAddAccountView()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mNoAccount:Lcom/sec/android/socialhub/feedslist/FeedNoAccountView;

    return-object v0
.end method

.method public getGatewayView()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

    return-object v0
.end method

.method public getView()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mFeeds:Lcom/sec/android/socialhub/feedslist/FeedListView;

    return-object v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Lcom/sec/android/socialhub/state/tab/FeedTabState;)V
    .registers 5
    .parameter "context"
    .parameter "tab"

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/feedslist/FeedListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mFeeds:Lcom/sec/android/socialhub/feedslist/FeedListView;

    .line 34
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

    .line 35
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedNoAccountView;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/feedslist/FeedNoAccountView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mNoAccount:Lcom/sec/android/socialhub/feedslist/FeedNoAccountView;

    .line 37
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 43
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mFeeds:Lcom/sec/android/socialhub/feedslist/FeedListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedListView;->setOnSplitAccountDisplayListener(Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;)V

    .line 46
    :cond_26
    iput-object p2, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mTab:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 48
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mFeeds:Lcom/sec/android/socialhub/feedslist/FeedListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mNoAccount:Lcom/sec/android/socialhub/feedslist/FeedNoAccountView;

    iget-object v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->onInitComplete(Landroid/content/Context;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 53
    monitor-exit p0

    return-void

    .line 31
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-super {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onDestroy()V

    .line 69
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxFeedListView;

    .line 70
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/FeedViewFlipper;->mFeeds:Lcom/sec/android/socialhub/feedslist/FeedListView;

    .line 71
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mTab:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 72
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onPause(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onResume(Landroid/content/Context;)V

    .line 58
    return-void
.end method
