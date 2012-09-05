.class public Lcom/sec/android/socialhub/state/MessageSearchState;
.super Lcom/sec/android/socialhub/state/MessageBaseState;
.source "MessageSearchState.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .parameter "context"
    .parameter "view"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/MessageBaseState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;

    new-instance v1, Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgBaseQeury;

    invoke-direct {v1, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgBaseQeury;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 19
    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x2

    return v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView;

    if-eqz v0, :cond_15

    .line 83
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/messagelist/MessageListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_15
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_2c

    .line 89
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 92
    :cond_2c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/MessageBaseState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 106
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 108
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_26

    .line 110
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getSearchState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 114
    :cond_26
    return-void
.end method

.method public onHandleOptionMenu(Landroid/view/MenuItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 75
    :cond_7
    :goto_7
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/MessageBaseState;->onHandleOptionMenu(Landroid/view/MenuItem;)V

    .line 76
    return-void

    .line 69
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    goto :goto_7

    .line 66
    :pswitch_data_1a
    .packed-switch 0x7f0b0147
        :pswitch_b
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->mMode:I

    .line 51
    invoke-super {p0}, Lcom/sec/android/socialhub/state/MessageBaseState;->onPause()V

    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_13

    .line 55
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    .line 57
    :cond_13
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 24
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView;

    if-eqz v0, :cond_11

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->mMode:I

    .line 27
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V

    .line 30
    :cond_11
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_26

    .line 32
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onAccountStateChanged(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 33
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    invoke-interface {v0, v2}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeTabView(Z)V

    .line 34
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    const/4 v1, -0x1

    invoke-interface {v0, v2, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeTitleBar(ZI)V

    .line 37
    :cond_26
    invoke-super {p0}, Lcom/sec/android/socialhub/state/MessageBaseState;->onResume()V

    .line 39
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_37

    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    .line 44
    :cond_37
    return-void
.end method
