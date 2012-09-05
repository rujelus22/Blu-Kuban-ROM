.class public Lcom/sec/android/socialhub/state/SocialHubStateManager;
.super Ljava/lang/Object;
.source "SocialHubStateManager.java"

# interfaces
.implements Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;
    }
.end annotation


# static fields
.field private static volatile mManager:Lcom/sec/android/socialhub/state/SocialHubStateManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

.field private mFeed:Lcom/sec/android/socialhub/state/tab/FeedTabState;

.field private mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

.field private mMenu:Landroid/view/Menu;

.field private mMessage:Lcom/sec/android/socialhub/state/tab/MessageTabState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mManager:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mFeed:Lcom/sec/android/socialhub/state/tab/FeedTabState;

    .line 25
    iput-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMessage:Lcom/sec/android/socialhub/state/tab/MessageTabState;

    .line 27
    iput-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 28
    iput-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    .line 34
    iput-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMenu:Landroid/view/Menu;

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/state/SocialHubStateManager;
    .registers 3
    .parameter

    .prologue
    .line 44
    const-class v1, Lcom/sec/android/socialhub/state/SocialHubStateManager;

    monitor-enter v1

    .line 46
    :try_start_3
    sget-object v0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mManager:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    if-nez v0, :cond_e

    .line 48
    new-instance v0, Lcom/sec/android/socialhub/state/SocialHubStateManager;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mManager:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    .line 50
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 51
    sget-object v0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mManager:Lcom/sec/android/socialhub/state/SocialHubStateManager;

    return-object v0

    .line 50
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public changeOptionMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 319
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMenu:Landroid/view/Menu;

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/socialhub/state/tab/TabState;->createOptionMenu(Landroid/view/Menu;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 326
    :goto_9
    return-void

    .line 322
    :catch_a
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public changeState(Lcom/sec/android/socialhub/state/tab/TabState;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    if-nez v0, :cond_5

    .line 289
    :cond_4
    :goto_4
    return-void

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    if-ne v0, p1, :cond_f

    .line 244
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->onRefresh()V

    goto :goto_4

    .line 248
    :cond_f
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onPause(Landroid/content/Context;)V

    .line 250
    const-string v0, "SocialHubStateManager"

    const-string v1, "changeState()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tab state is changed ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

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

    .line 252
    iput-object p1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 254
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    if-eqz v0, :cond_59

    .line 256
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;->onTabStateChanged(Lcom/sec/android/socialhub/state/tab/TabState;)V

    .line 259
    :cond_59
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_64

    .line 261
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/state/tab/TabState;->createOptionMenu(Landroid/view/Menu;)V

    .line 264
    :cond_64
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onResume(Landroid/content/Context;)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    if-eqz v0, :cond_80

    .line 268
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->onRequestFocusChange()V

    .line 285
    :cond_80
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 287
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/state/tab/TabState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_4
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mFeed:Lcom/sec/android/socialhub/state/tab/FeedTabState;

    if-eqz v0, :cond_c

    .line 101
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mFeed:Lcom/sec/android/socialhub/state/tab/FeedTabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->onDestroy()V

    .line 102
    iput-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mFeed:Lcom/sec/android/socialhub/state/tab/FeedTabState;

    .line 105
    :cond_c
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMessage:Lcom/sec/android/socialhub/state/tab/MessageTabState;

    if-eqz v0, :cond_17

    .line 107
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMessage:Lcom/sec/android/socialhub/state/tab/MessageTabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->onDestroy()V

    .line 108
    iput-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMessage:Lcom/sec/android/socialhub/state/tab/MessageTabState;

    .line 111
    :cond_17
    iput-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    .line 112
    iput-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mContext:Landroid/content/Context;

    .line 113
    iput-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 114
    iput-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMenu:Landroid/view/Menu;

    .line 115
    return-void
.end method

.method public getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    return-object v0
.end method

.method public getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mFeed:Lcom/sec/android/socialhub/state/tab/FeedTabState;

    return-object v0
.end method

.method public getLastPage()I
    .registers 4

    .prologue
    .line 164
    const/4 v0, -0x1

    .line 166
    .local v0, ret:I
    iget-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v2

    if-ne v1, v2, :cond_1b

    .line 168
    iget-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/state/tab/TabState;->getGatewayState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v2

    if-ne v1, v2, :cond_19

    .line 169
    const/4 v0, 0x3

    .line 181
    :goto_18
    return v0

    .line 171
    :cond_19
    const/4 v0, 0x1

    goto :goto_18

    .line 175
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->getCurrentState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/state/tab/TabState;->getGatewayState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v2

    if-ne v1, v2, :cond_2b

    .line 176
    const/4 v0, 0x0

    goto :goto_18

    .line 178
    :cond_2b
    const/4 v0, 0x2

    goto :goto_18
.end method

.method public getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMessage:Lcom/sec/android/socialhub/state/tab/MessageTabState;

    return-object v0
.end method

.method public getStateFromShared()V
    .registers 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 148
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    if-eqz v0, :cond_11

    .line 150
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;->onTabStateChanged(Lcom/sec/android/socialhub/state/tab/TabState;)V

    .line 153
    :cond_11
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1c

    .line 155
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/state/tab/TabState;->createOptionMenu(Landroid/view/Menu;)V

    .line 160
    :cond_1c
    return-void
.end method

.method public handleOptionMenu(Landroid/view/MenuItem;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/socialhub/state/tab/TabState;->handleOptionMenu(Landroid/view/MenuItem;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 338
    :goto_7
    return-void

    .line 334
    :catch_8
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public handleSearchrequest()V
    .registers 3

    .prologue
    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/TabState;->handleSearchRequest()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 347
    :goto_7
    return-void

    .line 344
    :catch_8
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public onCreate(Landroid/content/Context;Lcom/sec/android/socialhub/flipper/FeedViewFlipper;Lcom/sec/android/socialhub/flipper/MessageViewFlipper;)V
    .registers 5
    .parameter "context"
    .parameter "feed"
    .parameter "message"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->clear()V

    .line 68
    iput-object p1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Lcom/sec/android/socialhub/split/HubSplitSetting;->initialize(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/sec/android/socialhub/state/tab/FeedTabState;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mFeed:Lcom/sec/android/socialhub/state/tab/FeedTabState;

    .line 76
    new-instance v0, Lcom/sec/android/socialhub/state/tab/MessageTabState;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMessage:Lcom/sec/android/socialhub/state/tab/MessageTabState;

    .line 78
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mFeed:Lcom/sec/android/socialhub/state/tab/FeedTabState;

    iput-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 80
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mFeed:Lcom/sec/android/socialhub/state/tab/FeedTabState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->setOnAccountStateChangedListener(Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMessage:Lcom/sec/android/socialhub/state/tab/MessageTabState;

    invoke-virtual {v0, p0}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->setOnAccountStateChangedListener(Lcom/sec/android/socialhub/state/tab/TabState$IAccountStateChangedListener;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mFeed:Lcom/sec/android/socialhub/state/tab/FeedTabState;

    invoke-virtual {v0, p2}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->setFlipper(Lcom/sec/android/socialhub/flipper/AbsViewFlipper;)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMessage:Lcom/sec/android/socialhub/state/tab/MessageTabState;

    invoke-virtual {v0, p3}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->setFlipper(Lcom/sec/android/socialhub/flipper/AbsViewFlipper;)V

    .line 87
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->clear()V

    .line 95
    :cond_b
    return-void
.end method

.method public onRequestChangeTabView(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    if-eqz v0, :cond_9

    .line 386
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;->onRequestChangeTabView(Z)V

    .line 388
    :cond_9
    return-void
.end method

.method public onRequestChangeTitleBar(ZI)V
    .registers 4
    .parameter "visible"
    .parameter "resource"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    if-eqz v0, :cond_9

    .line 394
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;->onRequestChangeTitleBar(ZI)V

    .line 396
    :cond_9
    return-void
.end method

.method public onStateChanged(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    if-eqz v0, :cond_9

    .line 378
    iget-object v0, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;->onAccountChanged(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 380
    :cond_9
    return-void
.end method

.method public refreshState()V
    .registers 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getCurrentTab()Lcom/sec/android/socialhub/state/tab/TabState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->changeState(Lcom/sec/android/socialhub/state/tab/TabState;)V

    .line 235
    return-void
.end method

.method public restoreLastPage(ILcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 9
    .parameter "lastPage"
    .parameter "wrapper"

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, tabState:Lcom/sec/android/socialhub/state/tab/TabState;
    const/4 v0, 0x0

    .line 189
    .local v0, baseState:Lcom/sec/android/socialhub/state/BaseState;
    packed-switch p1, :pswitch_data_a2

    .line 209
    :goto_5
    const-string v2, "SocialHubStateManager"

    const-string v3, "restoreLastPage()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastPage - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tabState - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "SocialHubStateManager"

    const-string v3, "restoreLastPage()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iput-object v1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 214
    iget-object v2, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    if-eqz v2, :cond_6a

    .line 216
    iget-object v2, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    iget-object v3, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-interface {v2, v3}, Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;->onTabStateChanged(Lcom/sec/android/socialhub/state/tab/TabState;)V

    .line 219
    :cond_6a
    iget-object v2, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_75

    .line 221
    iget-object v2, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    iget-object v3, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mMenu:Landroid/view/Menu;

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/state/tab/TabState;->createOptionMenu(Landroid/view/Menu;)V

    .line 224
    :cond_75
    iget-object v2, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mCurrent:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v2, v0, p2}, Lcom/sec/android/socialhub/state/tab/TabState;->changeState(Lcom/sec/android/socialhub/state/BaseState;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 225
    return-void

    .line 192
    :pswitch_7b
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    .line 194
    goto :goto_5

    .line 196
    :pswitch_84
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getFeedTab()Lcom/sec/android/socialhub/state/tab/FeedTabState;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/FeedTabState;->getGatewayState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    .line 198
    goto/16 :goto_5

    .line 200
    :pswitch_8e
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getNormalState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    .line 202
    goto/16 :goto_5

    .line 204
    :pswitch_98
    invoke-virtual {p0}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getGatewayState()Lcom/sec/android/socialhub/state/BaseState;

    move-result-object v0

    goto/16 :goto_5

    .line 189
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_98
        :pswitch_7b
        :pswitch_8e
        :pswitch_84
    .end packed-switch
.end method

.method public setOnStateChangedListener(Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/socialhub/state/SocialHubStateManager;->mListener:Lcom/sec/android/socialhub/state/SocialHubStateManager$ITabStateChangeListener;

    .line 62
    return-void
.end method
