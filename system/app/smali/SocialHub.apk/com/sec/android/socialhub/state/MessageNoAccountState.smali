.class public Lcom/sec/android/socialhub/state/MessageNoAccountState;
.super Lcom/sec/android/socialhub/state/MessageBaseState;
.source "MessageNoAccountState.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/MessageBaseState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public createOptionMenu(Landroid/view/Menu;)V
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/MessageBaseState;->createOptionMenu(Landroid/view/Menu;)V

    .line 50
    const v4, 0x7f0b0142

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 51
    .local v0, compose_message:Landroid/view/MenuItem;
    const v4, 0x7f0b0145

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 52
    .local v3, view_mode:Landroid/view/MenuItem;
    const v4, 0x7f0b0143

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 53
    .local v1, delete:Landroid/view/MenuItem;
    const v4, 0x7f0b0146

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 56
    .local v2, list_by:Landroid/view/MenuItem;
    if-eqz v0, :cond_25

    .line 57
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 59
    :cond_25
    if-eqz v3, :cond_2a

    .line 60
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 62
    :cond_2a
    if-eqz v1, :cond_2f

    .line 63
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 65
    :cond_2f
    if-eqz v2, :cond_34

    .line 66
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 67
    :cond_34
    return-void
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x4

    return v0
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 21
    iget-object v3, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v1

    .line 22
    .local v1, manager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;
    if-eqz v1, :cond_20

    .line 24
    const-string v3, "1_Messaging"

    invoke-virtual {v1, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v2

    .line 26
    .local v2, message:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccountCount()I

    move-result v0

    .line 28
    .local v0, iAccountCount:I
    if-nez v2, :cond_20

    if-eqz v0, :cond_20

    .line 30
    iget-object v3, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v3, :cond_20

    .line 32
    iget-object v3, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    invoke-interface {v3}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRestorePage()V

    .line 42
    .end local v0           #iAccountCount:I
    .end local v2           #message:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    :cond_1f
    :goto_1f
    return-void

    .line 38
    :cond_20
    iget-object v3, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v3, :cond_1f

    .line 40
    iget-object v3, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v3}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->onResume()V

    goto :goto_1f
.end method
