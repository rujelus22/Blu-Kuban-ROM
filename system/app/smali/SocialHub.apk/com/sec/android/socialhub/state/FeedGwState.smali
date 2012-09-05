.class public Lcom/sec/android/socialhub/state/FeedGwState;
.super Lcom/sec/android/socialhub/state/FeedBaseState;
.source "FeedGwState.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/FeedBaseState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method public createOptionMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedBaseState;->createOptionMenu(Landroid/view/Menu;)V

    .line 77
    if-nez p1, :cond_7

    .line 88
    :cond_6
    :goto_6
    return-void

    .line 80
    :cond_7
    const v2, 0x7f0b0137

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 81
    .local v0, photo:Landroid/view/MenuItem;
    const v2, 0x7f0b013d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 83
    .local v1, search:Landroid/view/MenuItem;
    if-eqz v0, :cond_1a

    .line 84
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 86
    :cond_1a
    if-eqz v1, :cond_6

    .line 87
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method public handleOptionMenu(Landroid/view/MenuItem;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedBaseState;->handleOptionMenu(Landroid/view/MenuItem;)V

    .line 94
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;

    if-eqz v0, :cond_d

    .line 68
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->onExit()V

    .line 70
    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedBaseState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 103
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 105
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_26

    .line 107
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getGatewayState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 111
    :cond_26
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 43
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/sec/android/socialhub/split/HubSplitSetting;->setSelectedAccount(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    if-eqz v0, :cond_19

    .line 50
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    invoke-interface {v0, v2}, Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;->onAccountDisplayed(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 54
    :cond_19
    invoke-super {p0}, Lcom/sec/android/socialhub/state/FeedBaseState;->onResume()V

    .line 55
    return-void
.end method

.method public saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 5
    .parameter "accounts"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedBaseState;->saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 30
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->setInt(Landroid/content/Context;II)Z

    .line 31
    return-void
.end method

.method public setAccountInfo(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 61
    return-void
.end method
