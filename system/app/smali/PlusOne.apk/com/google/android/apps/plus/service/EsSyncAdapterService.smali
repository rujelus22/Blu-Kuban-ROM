.class public Lcom/google/android/apps/plus/service/EsSyncAdapterService;
.super Landroid/app/Service;
.source "EsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;,
        Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;,
        Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;,
        Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncOperationState;
    }
.end annotation


# static fields
.field private static sCurrentSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

.field private static sSyncAdapter:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

.field private static final sSyncAdapterLock:Ljava/lang/Object;

.field private static sSyncStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapter:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncStates:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 286
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sCurrentSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sCurrentSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Landroid/content/SyncResult;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->doSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Landroid/content/SyncResult;)V

    return-void
.end method

.method public static activateAccount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "accountName"

    .prologue
    const/4 v2, 0x1

    .line 609
    invoke-static {p1}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 610
    .local v0, account:Landroid/accounts/Account;
    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 611
    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 612
    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 613
    return-void
.end method

.method public static deactivateAccount(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "accountName"

    .prologue
    .line 622
    invoke-static {p1}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 623
    .local v0, account:Landroid/accounts/Account;
    const-string v2, "com.google.android.apps.plus.content.EsProvider"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 624
    const-string v2, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 625
    sget-object v2, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .line 626
    .local v1, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    if-eqz v1, :cond_1c

    .line 627
    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->cancel()V

    .line 629
    :cond_1c
    return-void
.end method

.method private static doFullSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Landroid/content/SyncResult;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "syncState"
    .parameter "syncResult"

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 508
    new-instance v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;

    invoke-direct {v3, p4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;-><init>(Landroid/content/SyncResult;)V

    .line 510
    .local v3, listener:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;
    #setter for: Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mFullSync:Z
    invoke-static {p3, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->access$202(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Z)Z

    .line 511
    const-string v0, "G+ sync"

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 512
    const/4 v8, 0x0

    .line 514
    .local v8, syncComplete:Z
    if-eqz p2, :cond_50

    :try_start_13
    const-string v0, "sync_what"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_50

    .line 515
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 516
    const-string v0, "EsSyncAdapterService"

    const-string v1, "onPerformSync: ====> Notifications Gsync begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_2c
    invoke-static {p0, p1, p3, v3}, Lcom/google/android/apps/plus/content/EsNotificationData;->syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_d2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2f} :catch_95
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2f} :catch_b3

    .line 563
    :goto_2f
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 564
    :goto_32
    #setter for: Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mFullSync:Z
    invoke-static {p3, v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->access$202(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Z)Z

    .line 567
    invoke-virtual {p4}, Landroid/content/SyncResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_da

    .line 568
    const-string v0, "EsSyncAdapterService"

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 569
    const-string v0, "EsSyncAdapterService"

    const-string v1, "onPerformSync: ====> Sync end with no errors."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_4a
    if-eqz v8, :cond_4f

    .line 573
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveLastSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 580
    :cond_4f
    :goto_4f
    return-void

    .line 521
    :cond_50
    :try_start_50
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 522
    const-string v0, "EsSyncAdapterService"

    const-string v1, "onPerformSync: ====> Full sync begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_60
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->queryNotificationPushEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 527
    new-instance v7, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v7, p0, p1, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 529
    .local v7, neo:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->enablePush()V

    .line 530
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 533
    .end local v7           #neo:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_73
    invoke-static {p0, p1, p3, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->syncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 534
    invoke-static {p0, p1, p3, v3}, Lcom/google/android/apps/plus/content/EsNotificationData;->syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 535
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZZ)V

    .line 537
    invoke-static {p0, p1, p3}, Lcom/google/android/apps/plus/content/EsAccountsData;->syncSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 540
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 542
    invoke-static {p0, p1, p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->syncPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 543
    invoke-static {p0, p1, p3}, Lcom/google/android/apps/plus/content/EsAvatarData;->syncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 546
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 548
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsProvider;->analyzeDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    :try_end_93
    .catchall {:try_start_50 .. :try_end_93} :catchall_d2
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_93} :catch_95
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_93} :catch_b3

    .line 550
    const/4 v8, 0x1

    goto :goto_2f

    .line 552
    :catch_95
    move-exception v6

    .line 553
    .local v6, e:Ljava/io/IOException;
    :try_start_96
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 554
    const-string v0, "EsSyncAdapterService"

    const-string v1, "Sync failure"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    :cond_a6
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_af
    .catchall {:try_start_96 .. :try_end_af} :catchall_d2

    .line 563
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto :goto_32

    .line 557
    .end local v6           #e:Ljava/io/IOException;
    :catch_b3
    move-exception v6

    .line 558
    .local v6, e:Ljava/lang/Exception;
    :try_start_b4
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 559
    const-string v0, "EsSyncAdapterService"

    const-string v1, "Sync failure"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    :cond_c4
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_cd
    .catchall {:try_start_b4 .. :try_end_cd} :catchall_d2

    .line 563
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    goto/16 :goto_32

    .end local v6           #e:Ljava/lang/Exception;
    :catchall_d2
    move-exception v0

    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 564
    #setter for: Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mFullSync:Z
    invoke-static {p3, v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->access$202(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Z)Z

    .line 563
    throw v0

    .line 576
    :cond_da
    const-string v0, "EsSyncAdapterService"

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 577
    const-string v0, "EsSyncAdapterService"

    const-string v1, "onPerformSync: ====> Sync end with error(s)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4f
.end method

.method private static doSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Landroid/content/SyncResult;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "syncState"
    .parameter "syncResult"

    .prologue
    .line 483
    invoke-virtual {p3, p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->requestAccountSync(Landroid/os/Bundle;)Z

    move-result v1

    .line 484
    .local v1, shouldRun:Z
    if-eqz v1, :cond_c

    .line 486
    :goto_6
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->pollAccountSyncRequest()Landroid/os/Bundle;

    move-result-object v0

    .line 487
    .local v0, parameters:Landroid/os/Bundle;
    if-nez v0, :cond_d

    .line 494
    .end local v0           #parameters:Landroid/os/Bundle;
    :cond_c
    return-void

    .line 491
    .restart local v0       #parameters:Landroid/os/Bundle;
    :cond_d
    invoke-static {p0, p1, v0, p3, p4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->doFullSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Landroid/content/SyncResult;)V

    goto :goto_6
.end method

.method public static getAccountSyncState(Ljava/lang/String;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    .registers 4
    .parameter "accountName"

    .prologue
    .line 228
    sget-object v2, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 229
    :try_start_3
    sget-object v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncStates:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .line 230
    .local v0, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    if-nez v0, :cond_17

    .line 231
    new-instance v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .end local v0           #syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    invoke-direct {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 232
    .restart local v0       #syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    sget-object v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncStates:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_17
    monitor-exit v2

    return-object v0

    .line 235
    .end local v0           #syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 599
    sget-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapter:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 587
    sget-object v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 588
    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapter:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_12

    .line 589
    new-instance v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapter:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    .line 591
    :cond_12
    monitor-exit v1

    .line 592
    return-void

    .line 591
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method
