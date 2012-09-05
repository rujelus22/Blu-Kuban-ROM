.class public Lcom/sec/android/socialhub/state/BaseState;
.super Ljava/lang/Object;
.source "BaseState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;
    }
.end annotation


# instance fields
.field protected mAccount:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/MenuInflater;

.field protected mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

.field protected mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

.field protected mPrevState:Lcom/sec/android/socialhub/state/BaseState;

.field protected mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

.field protected mView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mView:Landroid/widget/LinearLayout;

    .line 27
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    .line 30
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    .line 32
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mInflater:Landroid/view/MenuInflater;

    .line 33
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mAccount:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 35
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 37
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mPrevState:Lcom/sec/android/socialhub/state/BaseState;

    .line 45
    iput-object p1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mHandler:Landroid/os/Handler;

    .line 48
    instance-of v0, p2, Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v0, :cond_29

    .line 50
    check-cast p2, Lcom/sec/android/socialhub/parent/ISocialHubListView;

    .end local p2
    iput-object p2, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    .line 53
    :cond_29
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_39

    .line 55
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mInflater:Landroid/view/MenuInflater;

    .line 58
    :cond_39
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mAudioManager:Landroid/media/AudioManager;

    .line 59
    return-void
.end method


# virtual methods
.method public createOptionMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 202
    return-void
.end method

.method public getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mAccount:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    if-nez v0, :cond_d

    .line 166
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 167
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mAccount:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    goto :goto_c
.end method

.method public getPrevState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mPrevState:Lcom/sec/android/socialhub/state/BaseState;

    return-object v0
.end method

.method public getQueryBuilder()Lcom/sec/android/socialhub/SocialHubQueryBuilder;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    return-object v0
.end method

.method public handleOptionMenu(Landroid/view/MenuItem;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 233
    return-void
.end method

.method public handleSearchRequest()V
    .registers 1

    .prologue
    .line 257
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->onBackPressed()V

    .line 131
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 136
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    .line 106
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    .line 108
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mView:Landroid/widget/LinearLayout;

    .line 109
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    .line 110
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mInflater:Landroid/view/MenuInflater;

    .line 111
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mAccount:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 112
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 113
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mPrevState:Lcom/sec/android/socialhub/state/BaseState;

    .line 115
    return-void
.end method

.method public onHandleOptionMenu(Landroid/view/MenuItem;)V
    .registers 7
    .parameter "item"

    .prologue
    .line 212
    move-object v0, p1

    .line 214
    .local v0, menu_item:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_11

    .line 215
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/socialhub/state/BaseState$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/socialhub/state/BaseState$1;-><init>(Lcom/sec/android/socialhub/state/BaseState;Landroid/view/MenuItem;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    :cond_11
    return-void
.end method

.method public onHandleSearchRequest()V
    .registers 5

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_10

    .line 244
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/socialhub/state/BaseState$2;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/state/BaseState$2;-><init>(Lcom/sec/android/socialhub/state/BaseState;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    :cond_10
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/BaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/state/BaseState;->saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v0, :cond_10

    .line 77
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->onPause()V

    .line 78
    :cond_10
    return-void
.end method

.method public onRefresh()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v0, :cond_9

    .line 69
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->onRefresh()V

    .line 70
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v0, :cond_27

    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    if-eqz v0, :cond_22

    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/BaseState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v2

    instance-of v1, p0, Lcom/sec/android/socialhub/state/FeedBaseState;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const v3, 0x7f08007e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1f
    invoke-virtual {v0, v2, v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->displayAccount(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;Ljava/lang/String;)V

    .line 91
    :cond_22
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->onResume()V

    .line 94
    :cond_27
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_38

    .line 96
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    if-eqz v0, :cond_38

    .line 98
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->onRequestFocusChange()V

    .line 101
    :cond_38
    return-void

    .line 86
    :cond_39
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    const v3, 0x7f08007d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f
.end method

.method public saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 2
    .parameter "accounts"

    .prologue
    .line 146
    return-void
.end method

.method public setAccountInfo(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 155
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->clone()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mAccount:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 156
    return-void

    .line 155
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setOnRequestStateChangeListener(Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    .line 64
    return-void
.end method

.method public setPrevState(Lcom/sec/android/socialhub/state/BaseState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/socialhub/state/BaseState;->mPrevState:Lcom/sec/android/socialhub/state/BaseState;

    .line 120
    return-void
.end method

.method public showComposeDialog(Lcom/sec/android/socialhub/dialog/AbsListDialog;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 3
    .parameter "dialog"
    .parameter "account"

    .prologue
    .line 262
    return-void
.end method

.method public showLoadingDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .registers 3
    .parameter "context"

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method
