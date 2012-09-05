.class public Lcom/sec/android/socialhub/state/FeedSearchState;
.super Lcom/sec/android/socialhub/state/FeedBaseState;
.source "FeedSearchState.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .parameter "context"
    .parameter "view"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/FeedBaseState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 17
    new-instance v0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;

    new-instance v1, Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedBaseQuery;

    invoke-direct {v1, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedBaseQuery;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 18
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    if-eqz v0, :cond_15

    .line 123
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_15
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_2c

    .line 129
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 131
    :cond_2c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedBaseState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 140
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 142
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_26

    .line 144
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getSearchState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 148
    :cond_26
    return-void
.end method

.method public onHandleOptionMenu(Landroid/view/MenuItem;)V
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    .line 114
    :cond_8
    :goto_8
    :pswitch_8
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedBaseState;->onHandleOptionMenu(Landroid/view/MenuItem;)V

    .line 115
    return-void

    .line 72
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_8

    .line 74
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    goto :goto_8

    .line 78
    :pswitch_1a
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_8

    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    goto :goto_8

    .line 84
    :pswitch_28
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_8

    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    goto :goto_8

    .line 90
    :pswitch_36
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_8

    .line 92
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    goto :goto_8

    .line 96
    :pswitch_44
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_8

    .line 98
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    goto :goto_8

    .line 102
    :pswitch_52
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_8

    .line 104
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    goto :goto_8

    .line 108
    :pswitch_60
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_8

    .line 110
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    goto :goto_8

    .line 69
    :pswitch_data_6e
    .packed-switch 0x7f0b0138
        :pswitch_1a
        :pswitch_c
        :pswitch_44
        :pswitch_36
        :pswitch_60
        :pswitch_52
        :pswitch_8
        :pswitch_28
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/sec/android/socialhub/state/FeedBaseState;->mMode:I

    .line 53
    invoke-super {p0}, Lcom/sec/android/socialhub/state/FeedBaseState;->onPause()V

    .line 55
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_13

    .line 57
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    .line 59
    :cond_13
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    iput v2, p0, Lcom/sec/android/socialhub/state/FeedBaseState;->mMode:I

    .line 25
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    if-ne v0, v2, :cond_1b

    .line 27
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->changeSplitViewMode(ZI)V

    .line 30
    :cond_1b
    invoke-super {p0}, Lcom/sec/android/socialhub/state/FeedBaseState;->onResume()V

    .line 32
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_27

    .line 34
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeTabView(Z)V

    .line 37
    :cond_27
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_34

    .line 39
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    .line 42
    :cond_34
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    if-eqz v0, :cond_41

    .line 44
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedListView;->useFlickUp(Z)V

    .line 46
    :cond_41
    return-void
.end method
