.class public Lcom/sec/android/socialhub/split/state/FeedSplitSearchState;
.super Lcom/sec/android/socialhub/state/FeedSearchState;
.source "FeedSplitSearchState.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/FeedSearchState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedSearchState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 55
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_1f

    .line 57
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getSearchState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 60
    :cond_1f
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-super {p0}, Lcom/sec/android/socialhub/state/FeedSearchState;->onPause()V

    .line 39
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->changeSplitViewMode(ZI)V

    .line 41
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getGatewayView()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 42
    .local v0, gw:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_32

    instance-of v1, v0, Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v1, :cond_32

    .line 44
    check-cast v0, Lcom/sec/android/socialhub/parent/ISocialHubListView;

    .end local v0           #gw:Landroid/widget/LinearLayout;
    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->onPause()V

    .line 46
    :cond_32
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 23
    invoke-super {p0}, Lcom/sec/android/socialhub/state/FeedSearchState;->onResume()V

    .line 25
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/socialhub/split/HubSplitSetting;->getSplitWidth(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->changeSplitViewMode(ZI)V

    .line 27
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getGatewayView()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 28
    .local v0, gw:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_37

    instance-of v1, v0, Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v1, :cond_37

    .line 30
    check-cast v0, Lcom/sec/android/socialhub/parent/ISocialHubListView;

    .end local v0           #gw:Landroid/widget/LinearLayout;
    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->onResume()V

    .line 32
    :cond_37
    return-void
.end method
