.class public Lcom/sec/android/socialhub/state/MessageGwState;
.super Lcom/sec/android/socialhub/state/MessageBaseState;
.source "MessageGwState.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/MessageBaseState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 22
    return-void
.end method


# virtual methods
.method public createOptionMenu(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/MessageBaseState;->createOptionMenu(Landroid/view/Menu;)V

    .line 77
    if-nez p1, :cond_7

    .line 93
    :cond_6
    :goto_6
    return-void

    .line 80
    :cond_7
    const v3, 0x7f0b0143

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 81
    .local v1, message_delete:Landroid/view/MenuItem;
    const v3, 0x7f0b0145

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 82
    .local v2, view_mode:Landroid/view/MenuItem;
    const v3, 0x7f0b0146

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 84
    .local v0, List_by:Landroid/view/MenuItem;
    if-eqz v1, :cond_21

    .line 85
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 87
    :cond_21
    if-eqz v2, :cond_26

    .line 88
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 90
    :cond_26
    if-eqz v0, :cond_6

    .line 91
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x3

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    if-eqz v0, :cond_d

    .line 61
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->onExit()V

    .line 63
    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/MessageBaseState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 107
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 109
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_26

    .line 111
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getGatewayState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 115
    :cond_26
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 27
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    if-ne v0, v1, :cond_18

    .line 32
    invoke-static {v1, v2}, Lcom/sec/android/socialhub/split/HubSplitSetting;->setSelectedAccount(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 37
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    if-eqz v0, :cond_18

    .line 39
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;

    invoke-interface {v0, v2}, Lcom/sec/android/socialhub/split/OnSplitAccountDisplayListener;->onAccountDisplayed(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 42
    :cond_18
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_28

    .line 44
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeTabView(Z)V

    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeTitleBar(ZI)V

    .line 48
    :cond_28
    invoke-super {p0}, Lcom/sec/android/socialhub/state/MessageBaseState;->onResume()V

    .line 49
    return-void
.end method

.method public saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 5
    .parameter "accounts"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/MessageBaseState;->saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->setInt(Landroid/content/Context;II)Z

    .line 70
    return-void
.end method

.method public setAccountInfo(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 55
    return-void
.end method
