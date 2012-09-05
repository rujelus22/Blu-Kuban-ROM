.class public Lcom/sec/android/socialhub/state/FeedBaseState;
.super Lcom/sec/android/socialhub/state/BaseState;
.source "FeedBaseState.java"


# instance fields
.field protected mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .parameter "context"
    .parameter "view"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/BaseState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/state/FeedBaseState;->mMode:I

    .line 34
    new-instance v0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedBaseQuery;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedBaseQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 35
    return-void
.end method


# virtual methods
.method public createOptionMenu(Landroid/view/Menu;)V
    .registers 7
    .parameter "menu"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/BaseState;->createOptionMenu(Landroid/view/Menu;)V

    .line 101
    if-nez p1, :cond_6

    .line 123
    :goto_5
    return-void

    .line 104
    :cond_6
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/FeedBaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    .line 108
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    const/4 v1, 0x0

    .line 110
    .local v1, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v0, :cond_24

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v3, "0_All"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 112
    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v1

    .line 115
    :cond_24
    if-eqz v1, :cond_2f

    .line 117
    iget-object v2, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/socialhub/state/BaseState;->mInflater:Landroid/view/MenuInflater;

    const/4 v4, -0x1

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->onCreateOptionMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;I)V

    goto :goto_5

    .line 121
    :cond_2f
    iget-object v2, p0, Lcom/sec/android/socialhub/state/BaseState;->mInflater:Landroid/view/MenuInflater;

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_5
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/socialhub/state/FeedBaseState;->mMode:I

    return v0
.end method

.method public handleOptionMenu(Landroid/view/MenuItem;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 128
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/BaseState;->handleOptionMenu(Landroid/view/MenuItem;)V

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/FeedBaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v2

    .line 134
    const/4 v0, 0x0

    .line 137
    if-eqz v2, :cond_24

    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v4, "0_All"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 139
    iget-object v0, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v0

    .line 142
    :cond_24
    if-eqz v0, :cond_2c

    .line 144
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1, v5}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->onOptionItemSelected(Landroid/content/Context;Landroid/view/MenuItem;I)V

    .line 176
    :cond_2b
    :goto_2b
    return-void

    .line 148
    :cond_2c
    sparse-switch v1, :sswitch_data_7c

    goto :goto_2b

    .line 157
    :sswitch_30
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    const-string v0, "taSelectedSP"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2b

    .line 161
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2b

    .line 151
    :sswitch_4c
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b

    .line 167
    :sswitch_5b
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubPhotoUploadActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const-string v0, "spTypeList"

    new-array v2, v6, [I

    const/4 v3, 0x0

    aput v5, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2b

    .line 171
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2b

    .line 148
    :sswitch_data_7c
    .sparse-switch
        0x7f0b0133 -> :sswitch_30
        0x7f0b0137 -> :sswitch_5b
        0x7f0b013f -> :sswitch_4c
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/sec/android/socialhub/state/BaseState;->onBackPressed()V

    .line 84
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/sec/android/socialhub/state/BaseState;->onPause()V

    .line 78
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/sec/android/socialhub/state/BaseState;->onRefresh()V

    .line 72
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAppSns;->isExistSnsAccount(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 47
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_12

    .line 49
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestNoAccountPage(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 66
    :goto_11
    return-void

    .line 54
    :cond_12
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_23

    .line 56
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeTabView(Z)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeTitleBar(ZI)V

    .line 60
    :cond_23
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    if-eqz v0, :cond_30

    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/feedslist/FeedListView;->onChangeViewMode(Lcom/sec/android/socialhub/state/FeedBaseState;)V

    .line 65
    :cond_30
    invoke-super {p0}, Lcom/sec/android/socialhub/state/BaseState;->onResume()V

    goto :goto_11
.end method

.method public saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 5
    .parameter "accounts"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/BaseState;->saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 91
    if-eqz p1, :cond_1b

    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    const-string v1, "0_All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 92
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/util/UinboxShardPref;->setInt(Landroid/content/Context;II)Z

    .line 94
    :cond_1b
    return-void
.end method

.method public showComposeDialog(Lcom/sec/android/socialhub/dialog/AbsListDialog;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 3
    .parameter "dialog"
    .parameter "account"

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/state/BaseState;->showComposeDialog(Lcom/sec/android/socialhub/dialog/AbsListDialog;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 183
    return-void
.end method
