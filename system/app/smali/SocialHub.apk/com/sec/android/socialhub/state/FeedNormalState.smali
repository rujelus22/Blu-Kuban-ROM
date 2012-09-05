.class public Lcom/sec/android/socialhub/state/FeedNormalState;
.super Lcom/sec/android/socialhub/state/FeedBaseState;
.source "FeedNormalState.java"


# instance fields
.field private mListview:Lcom/sec/android/socialhub/feedslist/FeedListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .parameter "context"
    .parameter "view"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/FeedBaseState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/state/FeedNormalState;->mListview:Lcom/sec/android/socialhub/feedslist/FeedListView;

    .line 28
    check-cast p2, Lcom/sec/android/socialhub/feedslist/FeedListView;

    .end local p2
    iput-object p2, p0, Lcom/sec/android/socialhub/state/FeedNormalState;->mListview:Lcom/sec/android/socialhub/feedslist/FeedListView;

    .line 29
    new-instance v0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedNormalQuery;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedNormalQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 30
    return-void
.end method


# virtual methods
.method public createOptionMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 102
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedBaseState;->createOptionMenu(Landroid/view/Menu;)V

    .line 104
    if-nez p1, :cond_7

    .line 120
    :cond_6
    :goto_6
    return-void

    .line 107
    :cond_7
    const v2, 0x7f0b013e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 108
    .local v1, search:Landroid/view/MenuItem;
    const v2, 0x7f0b0132

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 110
    .local v0, refresh:Landroid/view/MenuItem;
    if-eqz v1, :cond_1a

    .line 112
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 115
    :cond_1a
    if-eqz v0, :cond_6

    .line 117
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method public handleOptionMenu(Landroid/view/MenuItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedBaseState;->handleOptionMenu(Landroid/view/MenuItem;)V

    .line 127
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    .line 156
    :cond_a
    :goto_a
    return-void

    .line 131
    :sswitch_b
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_a

    .line 148
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getSearchState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    goto :goto_a

    .line 153
    :sswitch_23
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/FeedNormalState;->requestRefresh()V

    goto :goto_a

    .line 127
    nop

    :sswitch_data_28
    .sparse-switch
        0x7f0b0132 -> :sswitch_23
        0x7f0b013e -> :sswitch_b
    .end sparse-switch
.end method

.method public handleSearchRequest()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_17

    .line 161
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getSearchState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 163
    :cond_17
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    if-eqz v0, :cond_d

    .line 53
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->backPressed()V

    .line 55
    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedBaseState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 179
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 181
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_26

    .line 183
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 187
    :cond_26
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/sec/android/socialhub/state/FeedBaseState;->onDestroy()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/state/FeedNormalState;->mListview:Lcom/sec/android/socialhub/feedslist/FeedListView;

    .line 97
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/state/FeedBaseState;->mMode:I

    .line 86
    invoke-super {p0}, Lcom/sec/android/socialhub/state/FeedBaseState;->onPause()V

    .line 87
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    iput v2, p0, Lcom/sec/android/socialhub/state/FeedBaseState;->mMode:I

    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    if-eqz v0, :cond_18

    .line 64
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/feedslist/FeedListView;->useFlickUp(Z)V

    .line 68
    :cond_18
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_36

    .line 70
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    .line 72
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    if-ne v0, v3, :cond_36

    .line 74
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->getAccountBar()Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/accountbar/SocialHubAccountBar;->setVisibility(I)V

    .line 78
    :cond_36
    invoke-super {p0}, Lcom/sec/android/socialhub/state/FeedBaseState;->onResume()V

    .line 79
    return-void
.end method

.method public requestRefresh()V
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v0, :cond_9

    .line 168
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->requestRefresh()V

    .line 170
    :cond_9
    return-void
.end method

.method public saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 6
    .parameter "accounts"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedBaseState;->saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 37
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    if-eqz p1, :cond_12

    const-string v0, "0_All"

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_12
    const/4 v0, -0x1

    :goto_13
    invoke-static {v1, v2, v0}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->setInt(Landroid/content/Context;II)Z

    .line 38
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sec/android/socialhub/state/FeedNormalState;->mListview:Lcom/sec/android/socialhub/feedslist/FeedListView;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    iget v2, v2, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;->mPos:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->setInt(Landroid/content/Context;II)Z

    .line 39
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sec/android/socialhub/state/FeedNormalState;->mListview:Lcom/sec/android/socialhub/feedslist/FeedListView;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    iget v2, v2, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;->mTop:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->setInt(Landroid/content/Context;II)Z

    .line 40
    return-void

    .line 37
    :cond_2f
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_13
.end method

.method public showComposeDialog(Lcom/sec/android/socialhub/dialog/AbsListDialog;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 3
    .parameter "dialog"
    .parameter "account"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/state/FeedBaseState;->showComposeDialog(Lcom/sec/android/socialhub/dialog/AbsListDialog;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 47
    return-void
.end method
