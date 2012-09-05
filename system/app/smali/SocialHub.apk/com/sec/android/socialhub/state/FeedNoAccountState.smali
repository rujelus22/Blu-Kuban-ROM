.class public Lcom/sec/android/socialhub/state/FeedNoAccountState;
.super Lcom/sec/android/socialhub/state/FeedBaseState;
.source "FeedNoAccountState.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/state/FeedBaseState;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public createOptionMenu(Landroid/view/Menu;)V
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/state/FeedBaseState;->createOptionMenu(Landroid/view/Menu;)V

    .line 41
    if-nez p1, :cond_7

    .line 60
    :cond_6
    :goto_6
    return-void

    .line 44
    :cond_7
    const v4, 0x7f0b0137

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 45
    .local v0, photo:Landroid/view/MenuItem;
    const v4, 0x7f0b013d

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 46
    .local v1, saved_search:Landroid/view/MenuItem;
    const v4, 0x7f0b0133

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 47
    .local v3, status:Landroid/view/MenuItem;
    const v4, 0x7f0b013e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 49
    .local v2, search:Landroid/view/MenuItem;
    if-eqz v0, :cond_28

    .line 50
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 52
    :cond_28
    if-eqz v2, :cond_2d

    .line 53
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 55
    :cond_2d
    if-eqz v1, :cond_32

    .line 56
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 58
    :cond_32
    if-eqz v3, :cond_6

    .line 59
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAppSns;->isExistSnsAccount(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    if-eqz v0, :cond_13

    .line 25
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListener:Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;

    invoke-interface {v0}, Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;->onRestorePage()V

    .line 34
    :cond_12
    :goto_12
    return-void

    .line 30
    :cond_13
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v0, :cond_12

    .line 32
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->onResume()V

    goto :goto_12
.end method
