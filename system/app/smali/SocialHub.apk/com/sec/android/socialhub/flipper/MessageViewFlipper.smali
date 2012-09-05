.class public Lcom/sec/android/socialhub/flipper/MessageViewFlipper;
.super Lcom/sec/android/socialhub/flipper/AbsViewFlipper;
.source "MessageViewFlipper.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

.field public mMessages:Lcom/sec/android/socialhub/messagelist/MessageListView;

.field public mNoAccount:Lcom/sec/android/socialhub/messagelist/MessageNoAccountView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mMessages:Lcom/sec/android/socialhub/messagelist/MessageListView;

    .line 16
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    .line 17
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mNoAccount:Lcom/sec/android/socialhub/messagelist/MessageNoAccountView;

    .line 18
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mMessages:Lcom/sec/android/socialhub/messagelist/MessageListView;

    .line 16
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    .line 17
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mNoAccount:Lcom/sec/android/socialhub/messagelist/MessageNoAccountView;

    .line 18
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public getAddAccountView()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mNoAccount:Lcom/sec/android/socialhub/messagelist/MessageNoAccountView;

    return-object v0
.end method

.method public getGatewayView()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    return-object v0
.end method

.method public getView()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mMessages:Lcom/sec/android/socialhub/messagelist/MessageListView;

    return-object v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Lcom/sec/android/socialhub/state/tab/MessageTabState;)V
    .registers 5
    .parameter "context"
    .parameter "tab"

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageListView;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mMessages:Lcom/sec/android/socialhub/messagelist/MessageListView;

    .line 37
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    .line 38
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageNoAccountView;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/messagelist/MessageNoAccountView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mNoAccount:Lcom/sec/android/socialhub/messagelist/MessageNoAccountView;

    .line 40
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 46
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mMessages:Lcom/sec/android/socialhub/messagelist/MessageListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/messagelist/MessageListView;->setOnSplitAccountDisplayListener(Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;)V

    .line 49
    :cond_26
    iput-object p2, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mTab:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 51
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mMessages:Lcom/sec/android/socialhub/messagelist/MessageListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mNoAccount:Lcom/sec/android/socialhub/messagelist/MessageNoAccountView;

    iget-object v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->onInitComplete(Landroid/content/Context;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 56
    monitor-exit p0

    return-void

    .line 34
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-super {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onDestroy()V

    .line 72
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mGateWay:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    .line 73
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mMessages:Lcom/sec/android/socialhub/messagelist/MessageListView;

    .line 74
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/MessageViewFlipper;->mNoAccount:Lcom/sec/android/socialhub/messagelist/MessageNoAccountView;

    .line 75
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mTab:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 76
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onPause(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onResume(Landroid/content/Context;)V

    .line 61
    return-void
.end method
