.class final Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "EsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/EsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncAdapterImpl"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 294
    return-void
.end method

.method private cleanup(Landroid/accounts/Account;)V
    .registers 7
    .parameter "account"

    .prologue
    .line 461
    const-string v1, "authority = ? AND feed = ? AND _sync_account_type = ?"

    .line 463
    .local v1, selection:Ljava/lang/String;
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.google.plus.notifications"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "https://m.google.com/app/feed/notifications?authority=com.google.plus.notifications"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 467
    .local v2, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 468
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/google/android/apps/plus/service/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "authority = ? AND feed = ? AND _sync_account_type = ?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    return-void
.end method

.method private isSubscribed(Landroid/accounts/Account;)Z
    .registers 11
    .parameter "account"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 405
    const-string v7, "authority = ? AND feed = ? AND _sync_account = ? AND _sync_account_type = ?"

    .line 407
    .local v7, selection:Ljava/lang/String;
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    aput-object v1, v4, v8

    const-string v1, "https://m.google.com/app/feed/notifications?authority=com.google.plus.notifications"

    aput-object v1, v4, v3

    const/4 v1, 0x2

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x3

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v4, v1

    .line 411
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 412
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/apps/plus/service/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "authority = ? AND feed = ? AND _sync_account = ? AND _sync_account_type = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 414
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_34

    move v1, v8

    .line 419
    :goto_33
    return v1

    :cond_34
    :try_start_34
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3c

    move-result v1

    .line 421
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_33

    :catchall_3c
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private subscribe(Landroid/accounts/Account;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 431
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 432
    const-string v0, "EsSyncAdapterService"

    const-string v1, "  --> Subscribe all feeds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "https://m.google.com/app/feed/notifications?authority=com.google.plus.notifications"

    const-string v2, "com.google.android.apps.plus.content.EsProvider"

    const-string v3, "webupdates"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/apps/plus/service/SubscribedFeeds;->addFeed(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 437
    return-void
.end method

.method private unsubscribe(Landroid/accounts/Account;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 445
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 446
    const-string v0, "EsSyncAdapterService"

    const-string v1, "  --> Unsubscribe all feeds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {v0, p1, v1}, Lcom/google/android/apps/plus/service/SubscribedFeeds;->deleteFeeds(Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method private updateSubscribedFeeds(Landroid/accounts/Account;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 380
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {p1, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    .line 383
    .local v0, isSyncEnabled:Z
    :goto_f
    if-eqz v0, :cond_31

    .line 384
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->isSubscribed(Landroid/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 385
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->subscribe(Landroid/accounts/Account;)V

    .line 395
    :cond_1a
    :goto_1a
    return-void

    .line 380
    .end local v0           #isSyncEnabled:Z
    :cond_1b
    const/4 v0, 0x0

    goto :goto_f

    .line 387
    .restart local v0       #isSyncEnabled:Z
    :cond_1d
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->cleanup(Landroid/accounts/Account;)V

    .line 388
    const-string v1, "EsSyncAdapterService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 389
    const-string v1, "EsSyncAdapterService"

    const-string v2, "  --> Already subscribed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 393
    :cond_31
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->unsubscribe(Landroid/accounts/Account;)V

    goto :goto_1a
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 15
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 304
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 305
    .local v0, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_37

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    const/4 v4, 0x1

    .line 308
    .local v4, isActiveAccount:Z
    :goto_17
    if-eqz p2, :cond_39

    const-string v6, "initialize"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_39

    const/4 v5, 0x1

    .line 310
    .local v5, isInitializationRequest:Z
    :goto_23
    if-eqz v5, :cond_3d

    .line 311
    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v7

    const-string v8, "com.google.android.apps.plus.content.EsProvider"

    if-eqz v4, :cond_3b

    const/4 v6, 0x1

    :goto_30
    invoke-static {v7, v8, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 313
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->updateSubscribedFeeds(Landroid/accounts/Account;)V

    .line 362
    :cond_36
    :goto_36
    return-void

    .line 305
    .end local v4           #isActiveAccount:Z
    .end local v5           #isInitializationRequest:Z
    :cond_37
    const/4 v4, 0x0

    goto :goto_17

    .line 308
    .restart local v4       #isActiveAccount:Z
    :cond_39
    const/4 v5, 0x0

    goto :goto_23

    .line 311
    .restart local v5       #isInitializationRequest:Z
    :cond_3b
    const/4 v6, 0x0

    goto :goto_30

    .line 319
    :cond_3d
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->updateSubscribedFeeds(Landroid/accounts/Account;)V

    .line 321
    if-eqz v4, :cond_36

    .line 325
    if-eqz p2, :cond_81

    const-string v6, "feed"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 326
    const-string v6, "feed"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, feed:Ljava/lang/String;
    const-string v6, "EsSyncAdapterService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 328
    const-string v6, "EsSyncAdapterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  --> Sync specific feed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_73
    const-string v6, "https://m.google.com/app/feed/notifications?authority=com.google.plus.notifications"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 333
    const-string v6, "sync_what"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    .end local v2           #feed:Ljava/lang/String;
    :cond_81
    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->getAccountSyncState(Ljava/lang/String;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$002(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .line 342
    :try_start_8a
    invoke-static {}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$000()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v6

    #calls: Lcom/google/android/apps/plus/service/EsSyncAdapterService;->doSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Landroid/content/SyncResult;)V
    invoke-static {v1, v0, p2, v6, p5}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$100(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Landroid/content/SyncResult;)V

    .line 344
    invoke-static {}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$000()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_ac

    .line 345
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 347
    .local v3, handler:Landroid/os/Handler;
    new-instance v6, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;

    invoke-direct {v6, p0, v1, v0, p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;-><init>(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_ac
    .catchall {:try_start_8a .. :try_end_ac} :catchall_cb

    .line 360
    .end local v3           #handler:Landroid/os/Handler;
    :cond_ac
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$002(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    goto :goto_36

    .line 335
    .restart local v2       #feed:Ljava/lang/String;
    :cond_b1
    const-string v6, "EsSyncAdapterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected feed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36

    .line 360
    .end local v2           #feed:Ljava/lang/String;
    :catchall_cb
    move-exception v6

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$002(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    throw v6
.end method

.method public onSyncCanceled()V
    .registers 2

    .prologue
    .line 369
    invoke-static {}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$000()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 370
    invoke-static {}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$000()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->cancel()V

    .line 372
    :cond_d
    return-void
.end method
