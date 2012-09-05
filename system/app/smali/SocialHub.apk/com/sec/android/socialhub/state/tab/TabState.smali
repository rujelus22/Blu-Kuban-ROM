.class public abstract Lcom/sec/android/socialhub/state/tab/TabState;
.super Ljava/lang/Object;
.source "TabState.java"

# interfaces
.implements Lcom/sec/android/socialhub/state/BaseState$IReqeustStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrent:Lcom/sec/android/socialhub/state/BaseState;

.field protected mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

.field protected mListener:Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;

.field private mMenu:Landroid/view/Menu;

.field protected mWrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    .line 24
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    .line 25
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mWrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 26
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mListener:Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;

    .line 30
    iput-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mMenu:Landroid/view/Menu;

    .line 36
    iput-object p1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 7
    .parameter "state"
    .parameter "info"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/BaseState;->onPause()V

    .line 111
    :cond_9
    const-string v0, "TabState"

    const-string v1, "changeState()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base state is changed ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {p1, v0}, Lcom/sec/android/socialhub/state/BaseState;->setPrevState(Lcom/sec/android/socialhub/state/BaseState;)V

    .line 114
    iput-object p1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    .line 115
    iput-object p2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mWrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 117
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0, p2}, Lcom/sec/android/socialhub/state/BaseState;->setAccountInfo(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_54

    .line 121
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/state/BaseState;->createOptionMenu(Landroid/view/Menu;)V

    .line 124
    :cond_54
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/BaseState;->onResume()V

    .line 125
    return-void
.end method

.method public changeStateEx(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 7
    .parameter "state"
    .parameter "info"

    .prologue
    .line 139
    const-string v0, "TabState"

    const-string v1, "changeStateEx()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base state is changed ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    .line 142
    iput-object p2, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mWrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 144
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0, p2}, Lcom/sec/android/socialhub/state/BaseState;->setAccountInfo(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_46

    .line 148
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/state/BaseState;->createOptionMenu(Landroid/view/Menu;)V

    .line 151
    :cond_46
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/BaseState;->onResume()V

    .line 152
    return-void
.end method

.method public createOptionMenu(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mMenu:Landroid/view/Menu;

    .line 270
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    if-eqz v0, :cond_b

    .line 271
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/state/BaseState;->createOptionMenu(Landroid/view/Menu;)V

    .line 272
    :cond_b
    return-void
.end method

.method public getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mWrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    if-nez v0, :cond_d

    .line 157
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 158
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mWrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    goto :goto_c
.end method

.method public getCurrentState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    return-object v0
.end method

.method public getDeleteState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    return-object v0
.end method

.method public getGatewayState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoAccountState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNormalState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchState()Lcom/sec/android/socialhub/state/BaseState;
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleOptionMenu(Landroid/view/MenuItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    if-eqz v0, :cond_9

    .line 277
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/state/BaseState;->onHandleOptionMenu(Landroid/view/MenuItem;)V

    .line 278
    :cond_9
    return-void
.end method

.method public handleSearchRequest()V
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/BaseState;->onHandleSearchRequest()V

    .line 283
    :cond_9
    return-void
.end method

.method protected abstract initialize()V
.end method

.method public onAccountStateChanged(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mListener:Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;

    if-eqz v0, :cond_9

    .line 322
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mListener:Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;->onStateChanged(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 324
    :cond_9
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    if-eqz v0, :cond_9

    .line 248
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/BaseState;->onBackPressed()V

    .line 249
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    if-eqz v0, :cond_9

    .line 241
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/state/BaseState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    :cond_9
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    if-eqz v0, :cond_a

    .line 230
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onDestroy()V

    .line 232
    :cond_a
    iput-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    .line 233
    iput-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    .line 234
    iput-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mWrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 235
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    if-eqz v0, :cond_9

    .line 178
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/BaseState;->onPause()V

    .line 179
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/tab/TabState;->saveState()V

    .line 180
    return-void
.end method

.method public onRefresh()V
    .registers 3

    .prologue
    .line 163
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/tab/TabState;->onPause()V

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/tab/TabState;->onResume()V

    .line 173
    :cond_d
    :goto_d
    return-void

    .line 170
    :cond_e
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    if-eqz v0, :cond_d

    .line 171
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/BaseState;->onRefresh()V

    goto :goto_d
.end method

.method public onRequestChangeState(Lcom/sec/android/socialhub/state/BaseState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mWrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/socialhub/state/tab/TabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 329
    return-void
.end method

.method public onRequestChangeTabView(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mListener:Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;

    if-eqz v0, :cond_9

    .line 335
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mListener:Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;->onRequestChangeTabView(Z)V

    .line 337
    :cond_9
    return-void
.end method

.method public onRequestChangeTitleBar(ZI)V
    .registers 4
    .parameter "visible"
    .parameter "resource"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mListener:Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;

    if-eqz v0, :cond_9

    .line 343
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mListener:Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;->onRequestChangeTitleBar(ZI)V

    .line 345
    :cond_9
    return-void
.end method

.method public onRequestNoAccountPage(Lcom/sec/android/socialhub/state/BaseState;)V
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 300
    const-string v0, "TabState"

    const-string v1, "onRequestNoAccountPage()"

    const-string v2, "request no account page!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    if-nez v0, :cond_18

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/tab/TabState;->getNoAccountState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/socialhub/state/tab/TabState;->changeStateEx(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 311
    :goto_17
    return-void

    .line 308
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/tab/TabState;->getNoAccountState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/socialhub/state/tab/TabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    goto :goto_17
.end method

.method public onRestorePage()V
    .registers 3

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/tab/TabState;->getGatewayState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/state/tab/TabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 316
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 184
    iget-object v3, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    if-eqz v3, :cond_3b

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/tab/TabState;->getAccountInfo()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v2

    .line 188
    .local v2, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    const-string v3, "5_SNS"

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 190
    iget-object v3, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v3

    const-string v4, "5_SNS"

    invoke-virtual {v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;

    .line 192
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;
    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->getAccount(I)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    move-result-object v1

    .line 194
    .local v1, dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    if-eqz v1, :cond_36

    .line 196
    iget-object v3, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    new-instance v4, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    invoke-direct {v4, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/socialhub/state/BaseState;->setAccountInfo(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 222
    .end local v0           #account:Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;
    .end local v1           #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :cond_36
    :goto_36
    iget-object v3, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/state/BaseState;->onResume()V

    .line 224
    .end local v2           #wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :cond_3b
    return-void

    .line 199
    .restart local v2       #wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    :cond_3c
    const-string v3, "2_Email"

    iget-object v4, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 201
    iget-object v3, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v3

    const-string v4, "2_Email"

    invoke-virtual {v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;

    .line 203
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;
    iget-object v3, v2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->getAccount(I)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    move-result-object v1

    .line 205
    .restart local v1       #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    if-eqz v1, :cond_36

    .line 207
    iget-object v3, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    new-instance v4, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    invoke-direct {v4, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/socialhub/state/BaseState;->setAccountInfo(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    goto :goto_36
.end method

.method public saveState()V
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mCurrent:Lcom/sec/android/socialhub/state/BaseState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mWrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/state/BaseState;->saveState(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 259
    :cond_b
    return-void
.end method

.method public setFlipper(Lcom/sec/android/socialhub/flipper/AbsViewFlipper;)V
    .registers 2
    .parameter "flipper"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mFlipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/tab/TabState;->initialize()V

    .line 64
    return-void
.end method

.method public setOnAccountStateChangedListener(Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/socialhub/state/tab/TabState;->mListener:Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;

    .line 42
    return-void
.end method
