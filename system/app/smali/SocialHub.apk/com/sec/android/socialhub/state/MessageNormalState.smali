.class public Lcom/sec/android/socialhub/state/MessageNormalState;
.super Lcom/sec/android/socialhub/state/MessageBaseState;
.source "MessageNormalState.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .parameter "context"
    .parameter "view"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/MessageBaseState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 24
    new-instance v0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgNormalQuery;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgNormalQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 25
    return-void
.end method


# virtual methods
.method public createOptionMenu(Landroid/view/Menu;)V
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    .line 67
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/MessageBaseState;->createOptionMenu(Landroid/view/Menu;)V

    .line 69
    if-nez p1, :cond_7

    .line 101
    :cond_6
    :goto_6
    return-void

    .line 72
    :cond_7
    const v3, 0x7f0b0144

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 74
    .local v2, search:Landroid/view/MenuItem;
    if-eqz v2, :cond_13

    .line 75
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 78
    :cond_13
    const v3, 0x7f0b0141

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 80
    .local v1, refresh:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/MessageNormalState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 82
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    if-eqz v0, :cond_3b

    const-string v3, "1_Messaging"

    iget-object v4, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "4_SevenIM"

    iget-object v4, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 89
    :cond_34
    if-eqz v1, :cond_6

    .line 91
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 96
    :cond_3b
    if-eqz v1, :cond_6

    .line 98
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public handleSearchRequest()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_17

    .line 107
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getSearchState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 109
    :cond_17
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    if-eqz v0, :cond_d

    .line 59
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->backPressed()V

    .line 62
    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/MessageBaseState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 129
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 131
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_26

    .line 133
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 137
    :cond_26
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView;

    if-eqz v0, :cond_11

    .line 32
    iput v2, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->mMode:I

    .line 33
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V

    .line 36
    :cond_11
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_2f

    .line 38
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    .line 39
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    if-ne v0, v3, :cond_2f

    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->getAccountBar()Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->setVisibility(I)V

    .line 45
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_3e

    .line 47
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    invoke-interface {v0, v3}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeTabView(Z)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    const/4 v1, -0x1

    invoke-interface {v0, v2, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeTitleBar(ZI)V

    .line 50
    :cond_3e
    invoke-super {p0}, Lcom/sec/android/socialhub/state/MessageBaseState;->onResume()V

    .line 51
    return-void
.end method

.method public showLoadingDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .registers 5
    .parameter "context"

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
