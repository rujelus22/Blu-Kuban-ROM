.class public Lcom/sec/android/socialhub/state/MessageDeleteState;
.super Lcom/sec/android/socialhub/state/MessageBaseState;
.source "MessageDeleteState.java"


# instance fields
.field private mPreMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .parameter "context"
    .parameter "view"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/MessageBaseState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/state/MessageDeleteState;->mPreMode:I

    .line 18
    new-instance v0, Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgDeleteQuery;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgDeleteQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mQueryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    .line 19
    return-void
.end method


# virtual methods
.method public createOptionMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 93
    if-nez p1, :cond_3

    .line 122
    :goto_2
    return-void

    .line 96
    :cond_3
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_2
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v1, :cond_37

    .line 66
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/MessageDeleteState;->getPrevState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    .line 68
    .local v0, next:Lcom/sec/android/socialhub/state/BaseState;
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 69
    iget v1, p0, Lcom/sec/android/socialhub/state/MessageDeleteState;->mPreMode:I

    packed-switch v1, :pswitch_data_48

    .line 75
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    .line 80
    :cond_22
    :goto_22
    if-nez v0, :cond_32

    .line 82
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    .line 85
    :cond_32
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    invoke-interface {v1, v0}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 87
    .end local v0           #next:Lcom/sec/android/socialhub/state/BaseState;
    :cond_37
    return-void

    .line 71
    .restart local v0       #next:Lcom/sec/android/socialhub/state/BaseState;
    :pswitch_38
    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getSearchState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    .line 72
    goto :goto_22

    .line 69
    nop

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_38
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/MessageBaseState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 135
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 137
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_26

    .line 139
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getDeleteState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 143
    :cond_26
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->mMode:I

    .line 46
    invoke-super {p0}, Lcom/sec/android/socialhub/state/MessageBaseState;->onPause()V

    .line 47
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_19

    .line 26
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    invoke-interface {v0, v2}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onAccountStateChanged(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 27
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeTabView(Z)V

    .line 28
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    const v1, 0x7f08000a

    invoke-interface {v0, v3, v1}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRequestChangeTitleBar(ZI)V

    .line 31
    :cond_19
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    instance-of v0, v0, Lcom/sec/android/socialhub/messagelist/MessageListView;

    if-eqz v0, :cond_2d

    .line 33
    iput v3, p0, Lcom/sec/android/socialhub/state/MessageBaseState;->mMode:I

    .line 35
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    check-cast v0, Lcom/sec/android/socialhub/messagelist/MessageListView;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/socialhub/messagelist/MessageListView;->displayAccount(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->onResume()V

    .line 39
    :cond_2d
    return-void
.end method

.method public setPrevState(Lcom/sec/android/socialhub/state/BaseState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 52
    instance-of v0, p1, Lcom/sec/android/socialhub/state/MessageSearchState;

    if-eqz v0, :cond_b

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/socialhub/state/MessageDeleteState;->mPreMode:I

    .line 57
    :cond_7
    :goto_7
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/MessageBaseState;->setPrevState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 58
    return-void

    .line 54
    :cond_b
    instance-of v0, p1, Lcom/sec/android/socialhub/state/MessageNormalState;

    if-eqz v0, :cond_7

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/state/MessageDeleteState;->mPreMode:I

    goto :goto_7
.end method
