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


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 318
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->context:Landroid/content/Context;

    .line 319
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method private cleanup(Landroid/accounts/Account;)V
    .registers 7
    .parameter "account"

    .prologue
    .line 540
    const-string v1, "authority = ? AND feed = ? AND _sync_account_type = ?"

    .line 542
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

    .line 546
    .local v2, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 547
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/google/android/apps/plus/service/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "authority = ? AND feed = ? AND _sync_account_type = ?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 548
    return-void
.end method

.method private isSubscribed(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "account"
    .parameter "feed"
    .parameter "service"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 483
    const-string v7, "authority = ? AND feed = ? AND _sync_account = ? AND _sync_account_type = ? AND service = ?"

    .line 486
    .local v7, selection:Ljava/lang/String;
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    aput-object v1, v4, v8

    aput-object p2, v4, v3

    const/4 v1, 0x2

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x3

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x4

    aput-object p3, v4, v1

    .line 490
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/apps/plus/service/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "authority = ? AND feed = ? AND _sync_account = ? AND _sync_account_type = ? AND service = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 493
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_35

    move v1, v8

    .line 500
    :goto_34
    return v1

    .line 498
    :cond_35
    :try_start_35
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3d

    move-result v1

    .line 500
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :catchall_3d
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private resetIUSyncAdapters(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 327
    const-string v9, "sync"

    invoke-virtual {p1, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 329
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v9, "adapters_reset"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_45

    .line 330
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    const-string v10, "com.google"

    invoke-virtual {v9, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 332
    .local v2, googleAccounts:[Landroid/accounts/Account;
    if-eqz v2, :cond_38

    .line 333
    move-object v1, v2

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1f
    if-ge v3, v4, :cond_38

    aget-object v0, v1, v3

    .line 334
    .local v0, account:Landroid/accounts/Account;
    const-string v9, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {v0, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_36

    move v5, v7

    .line 336
    .local v5, plusSyncEnabled:Z
    :goto_2c
    if-nez v5, :cond_33

    .line 337
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService;->deactivateAccount(Ljava/lang/String;)V

    .line 333
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .end local v5           #plusSyncEnabled:Z
    :cond_36
    move v5, v8

    .line 334
    goto :goto_2c

    .line 342
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_38
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "adapters_reset"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    .end local v2           #googleAccounts:[Landroid/accounts/Account;
    :cond_45
    return-void
.end method

.method private subscribe(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "account"
    .parameter "feed"
    .parameter "service"

    .prologue
    .line 510
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 511
    const-string v0, "EsSyncAdapterService"

    const-string v1, "  --> Subscribe all feeds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {v0, p2, p1, v1, p3}, Lcom/google/android/apps/plus/service/SubscribedFeeds;->addFeed(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 516
    return-void
.end method

.method private unsubscribe(Landroid/accounts/Account;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 524
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 525
    const-string v0, "EsSyncAdapterService"

    const-string v1, "  --> Unsubscribe all feeds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {v0, p1, v1}, Lcom/google/android/apps/plus/service/SubscribedFeeds;->deleteFeeds(Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method private updateSubscribedFeeds(Landroid/accounts/Account;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 449
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {p1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v0, 0x1

    .line 452
    .local v0, isSyncEnabled:Z
    :goto_f
    if-eqz v0, :cond_4e

    .line 453
    const/4 v1, 0x1

    .line 454
    .local v1, needCleanup:Z
    const-string v2, "https://m.google.com/app/feed/notifications?authority=com.google.plus.notifications"

    const-string v3, "webupdates"

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->isSubscribed(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 455
    const-string v2, "https://m.google.com/app/feed/notifications?authority=com.google.plus.notifications"

    const-string v3, "webupdates"

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->subscribe(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v1, 0x0

    .line 459
    :cond_24
    const-string v2, "com.google.plus.events"

    const-string v3, "events"

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->isSubscribed(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 460
    const-string v2, "com.google.plus.events"

    const-string v3, "events"

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->subscribe(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/4 v1, 0x0

    .line 464
    :cond_36
    if-eqz v1, :cond_4b

    .line 465
    const-string v2, "EsSyncAdapterService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 466
    const-string v2, "EsSyncAdapterService"

    const-string v3, "  --> Already subscribed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_48
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->cleanup(Landroid/accounts/Account;)V

    .line 473
    .end local v1           #needCleanup:Z
    :cond_4b
    :goto_4b
    return-void

    .line 449
    .end local v0           #isSyncEnabled:Z
    :cond_4c
    const/4 v0, 0x0

    goto :goto_f

    .line 471
    .restart local v0       #isSyncEnabled:Z
    :cond_4e
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->unsubscribe(Landroid/accounts/Account;)V

    goto :goto_4b
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 18
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 352
    iget-object v9, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    .line 353
    .local v2, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v2, :cond_35

    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    const/4 v6, 0x1

    .line 356
    .local v6, isActiveAccount:Z
    :goto_15
    if-eqz p2, :cond_37

    const-string v9, "initialize"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_37

    const/4 v7, 0x1

    .line 358
    .local v7, isInitializationRequest:Z
    :goto_21
    if-eqz v7, :cond_3b

    .line 359
    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v10

    const-string v11, "com.google.android.apps.plus.content.EsProvider"

    if-eqz v6, :cond_39

    const/4 v9, 0x1

    :goto_2e
    invoke-static {v10, v11, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 361
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->updateSubscribedFeeds(Landroid/accounts/Account;)V

    .line 431
    :cond_34
    :goto_34
    return-void

    .line 353
    .end local v6           #isActiveAccount:Z
    .end local v7           #isInitializationRequest:Z
    :cond_35
    const/4 v6, 0x0

    goto :goto_15

    .line 356
    .restart local v6       #isActiveAccount:Z
    :cond_37
    const/4 v7, 0x0

    goto :goto_21

    .line 359
    .restart local v7       #isInitializationRequest:Z
    :cond_39
    const/4 v9, 0x0

    goto :goto_2e

    .line 367
    :cond_3b
    iget-object v9, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->context:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->resetIUSyncAdapters(Landroid/content/Context;)V

    .line 369
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->updateSubscribedFeeds(Landroid/accounts/Account;)V

    .line 371
    if-nez v6, :cond_71

    .line 372
    iget-object v9, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccountUnsafe(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 373
    .local v1, accountToUpgrade:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v1, :cond_34

    iget-object v9, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->context:Landroid/content/Context;

    invoke-static {v9, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->isAccountUpgradeRequired(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 376
    :try_start_55
    iget-object v9, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->context:Landroid/content/Context;

    invoke-static {v9, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->upgradeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_e6

    .line 381
    iget-object v9, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    .line 382
    if-eqz v2, :cond_f0

    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f0

    const/4 v6, 0x1

    .line 384
    :goto_6f
    if-eqz v6, :cond_34

    .line 392
    .end local v1           #accountToUpgrade:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_71
    if-eqz p2, :cond_b0

    const-string v9, "feed"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 393
    const-string v9, "feed"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, feed:Ljava/lang/String;
    const-string v9, "EsSyncAdapterService"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 395
    const-string v9, "EsSyncAdapterService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  --> Sync specific feed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_a2
    const-string v9, "https://m.google.com/app/feed/notifications?authority=com.google.plus.notifications"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f3

    .line 400
    const-string v9, "sync_what"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    .end local v4           #feed:Ljava/lang/String;
    :cond_b0
    :goto_b0
    iget-object v9, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->getAccountSyncState(Ljava/lang/String;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$002(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .line 412
    :try_start_b9
    iget-object v9, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->context:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$000()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v10

    move-object/from16 v0, p5

    #calls: Lcom/google/android/apps/plus/service/EsSyncAdapterService;->doSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Landroid/content/SyncResult;)V
    invoke-static {v9, v2, p2, v10, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$100(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Landroid/content/SyncResult;)V

    .line 413
    invoke-static {}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$000()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v9

    if-nez v9, :cond_e0

    .line 414
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 415
    .local v5, handler:Landroid/os/Handler;
    move-object v8, v2

    .line 416
    .local v8, theAccount:Lcom/google/android/apps/plus/content/EsAccount;
    new-instance v9, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;

    invoke-direct {v9, p0, v8, p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl$1;-><init>(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;)V

    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e0
    .catchall {:try_start_b9 .. :try_end_e0} :catchall_11c

    .line 429
    .end local v5           #handler:Landroid/os/Handler;
    .end local v8           #theAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_e0
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$002(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    goto/16 :goto_34

    .line 377
    .restart local v1       #accountToUpgrade:Lcom/google/android/apps/plus/content/EsAccount;
    :catch_e6
    move-exception v3

    .line 378
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "EsSyncAdapterService"

    const-string v10, "Failed to upgrade account"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 382
    .end local v3           #e:Ljava/lang/Exception;
    :cond_f0
    const/4 v6, 0x0

    goto/16 :goto_6f

    .line 401
    .end local v1           #accountToUpgrade:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v4       #feed:Ljava/lang/String;
    :cond_f3
    const-string v9, "com.google.plus.events"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_102

    .line 403
    const-string v9, "sync_what"

    const/4 v10, 0x2

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b0

    .line 405
    :cond_102
    const-string v9, "EsSyncAdapterService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected feed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 429
    .end local v4           #feed:Ljava/lang/String;
    :catchall_11c
    move-exception v9

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$002(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    throw v9
.end method

.method public onSyncCanceled()V
    .registers 2

    .prologue
    .line 438
    invoke-static {}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$000()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 439
    invoke-static {}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->access$000()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->cancel()V

    .line 441
    :cond_d
    return-void
.end method
