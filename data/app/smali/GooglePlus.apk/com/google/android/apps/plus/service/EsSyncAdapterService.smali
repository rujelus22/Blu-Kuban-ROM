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
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapter:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncStates:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 307
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sCurrentSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
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
    .line 52
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->doSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Landroid/content/SyncResult;)V

    return-void
.end method

.method public static activateAccount(Ljava/lang/String;)V
    .registers 4
    .parameter "accountName"

    .prologue
    const/4 v2, 0x1

    .line 710
    invoke-static {p0}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 711
    .local v0, account:Landroid/accounts/Account;
    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 712
    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 713
    const-string v1, "com.google.android.apps.plus.content.EsProvider"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 714
    return-void
.end method

.method public static deactivateAccount(Ljava/lang/String;)V
    .registers 5
    .parameter "accountName"

    .prologue
    .line 722
    invoke-static {p0}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 723
    .local v0, account:Landroid/accounts/Account;
    const-string v2, "com.google.android.apps.plus.content.EsProvider"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 724
    const-string v2, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 725
    sget-object v2, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncStates:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .line 726
    .local v1, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    if-eqz v1, :cond_1c

    .line 727
    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->cancel()V

    .line 729
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

    .line 587
    new-instance v3, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;

    invoke-direct {v3, p4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;-><init>(Landroid/content/SyncResult;)V

    .line 589
    .local v3, listener:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;
    #setter for: Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mFullSync:Z
    invoke-static {p3, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->access$302(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Z)Z

    .line 590
    const-string v0, "G+ sync"

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncStart(Ljava/lang/String;)V

    .line 591
    const/4 v8, 0x0

    .line 593
    .local v8, syncComplete:Z
    if-eqz p2, :cond_50

    :try_start_13
    const-string v0, "sync_what"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_50

    .line 594
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 595
    const-string v0, "EsSyncAdapterService"

    const-string v1, "onPerformSync: ====> Notifications Gsync begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_2c
    invoke-static {p0, p1, p3, v3}, Lcom/google/android/apps/plus/content/EsNotificationData;->syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_102
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2f} :catch_70
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2f} :catch_e0

    .line 653
    :goto_2f
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 654
    #setter for: Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mFullSync:Z
    invoke-static {p3, v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->access$302(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Z)Z

    .line 657
    :goto_35
    invoke-virtual {p4}, Landroid/content/SyncResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 658
    const-string v0, "EsSyncAdapterService"

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 659
    const-string v0, "EsSyncAdapterService"

    const-string v1, "onPerformSync: ====> Sync end with no errors."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_4a
    if-eqz v8, :cond_4f

    .line 663
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveLastSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 670
    :cond_4f
    :goto_4f
    return-void

    .line 599
    :cond_50
    if-eqz p2, :cond_91

    :try_start_52
    const-string v0, "sync_what"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_91

    .line 600
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 601
    const-string v0, "EsSyncAdapterService"

    const-string v1, "onPerformSync: ====> Events Gsync begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_6c
    invoke-static {p0, p1, p3, v3}, Lcom/google/android/apps/plus/content/EsEventData;->syncCurrentEvents(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    :try_end_6f
    .catchall {:try_start_52 .. :try_end_6f} :catchall_102
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_6f} :catch_70
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6f} :catch_e0

    goto :goto_2f

    .line 642
    :catch_70
    move-exception v6

    .line 643
    .local v6, e:Ljava/io/IOException;
    :try_start_71
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 644
    const-string v0, "EsSyncAdapterService"

    const-string v1, "Sync failure"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    :cond_81
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_8a
    .catchall {:try_start_71 .. :try_end_8a} :catchall_102

    .line 653
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 654
    #setter for: Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mFullSync:Z
    invoke-static {p3, v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->access$302(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Z)Z

    goto :goto_35

    .line 606
    .end local v6           #e:Ljava/io/IOException;
    :cond_91
    :try_start_91
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 607
    const-string v0, "EsSyncAdapterService"

    const-string v1, "onPerformSync: ====> Full sync begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_a1
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->queryNotificationPushEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 612
    new-instance v7, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v7, p0, p1, v0, v1}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 614
    .local v7, neo:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->enablePush()V

    .line 615
    invoke-virtual {v7}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 618
    .end local v7           #neo:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_b4
    invoke-static {p0, p1, p3, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->syncActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 619
    invoke-static {p0, p1, p3, v3}, Lcom/google/android/apps/plus/content/EsNotificationData;->syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 620
    invoke-static {p0, p1, p3, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncMyProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 621
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->syncPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZZ)V

    .line 623
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->uploadChangedSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 624
    invoke-static {p0, p1, p3}, Lcom/google/android/apps/plus/content/EsAccountsData;->syncSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 627
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 629
    invoke-static {p0, p1, p3}, Lcom/google/android/apps/plus/content/EsPhotosData;->syncPhotos(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 630
    invoke-static {p0, p1, p3}, Lcom/google/android/apps/plus/content/EsAvatarData;->syncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 633
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;)V

    .line 635
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsProvider;->analyzeDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 638
    invoke-static {p0, p1, p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->syncContactsStatsIfNecessary(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    :try_end_dd
    .catchall {:try_start_91 .. :try_end_dd} :catchall_102
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_dd} :catch_70
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_dd} :catch_e0

    .line 640
    const/4 v8, 0x1

    goto/16 :goto_2f

    .line 647
    :catch_e0
    move-exception v6

    .line 648
    .local v6, e:Ljava/lang/Exception;
    :try_start_e1
    const-string v0, "EsSyncAdapterService"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 649
    const-string v0, "EsSyncAdapterService"

    const-string v1, "Sync failure"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    :cond_f1
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_fa
    .catchall {:try_start_e1 .. :try_end_fa} :catchall_102

    .line 653
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 654
    #setter for: Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mFullSync:Z
    invoke-static {p3, v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->access$302(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Z)Z

    goto/16 :goto_35

    .line 653
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_102
    move-exception v0

    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onSyncFinish()V

    .line 654
    #setter for: Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->mFullSync:Z
    invoke-static {p3, v9}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->access$302(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Z)Z

    throw v0

    .line 666
    :cond_10a
    const-string v0, "EsSyncAdapterService"

    invoke-static {v0, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 667
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
    .line 562
    invoke-virtual {p3, p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->requestAccountSync(Landroid/os/Bundle;)Z

    move-result v1

    .line 563
    .local v1, shouldRun:Z
    if-eqz v1, :cond_c

    .line 565
    :goto_6
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->pollAccountSyncRequest()Landroid/os/Bundle;

    move-result-object v0

    .line 566
    .local v0, parameters:Landroid/os/Bundle;
    if-nez v0, :cond_d

    .line 573
    .end local v0           #parameters:Landroid/os/Bundle;
    :cond_c
    return-void

    .line 570
    .restart local v0       #parameters:Landroid/os/Bundle;
    :cond_d
    invoke-static {p0, p1, v0, p3, p4}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->doFullSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Landroid/content/SyncResult;)V

    goto :goto_6
.end method

.method public static getAccountSyncState(Ljava/lang/String;)Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    .registers 4
    .parameter "accountName"

    .prologue
    .line 249
    sget-object v2, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 250
    :try_start_3
    sget-object v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncStates:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .line 251
    .local v0, syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    if-nez v0, :cond_17

    .line 252
    new-instance v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .end local v0           #syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    invoke-direct {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    .line 253
    .restart local v0       #syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    sget-object v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncStates:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_17
    monitor-exit v2

    return-object v0

    .line 256
    .end local v0           #syncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private static syncContactsStatsIfNecessary(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 674
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsStatsSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 675
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->queryLastStatsSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v0

    .line 677
    .local v0, lastStatsSyncTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1f

    .line 679
    :cond_1c
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/ContactsStatsSync;->sync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 682
    .end local v0           #lastStatsSyncTime:J
    :cond_1f
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 701
    sget-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapter:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 689
    sget-object v1, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 690
    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapter:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    if-nez v0, :cond_12

    .line 691
    new-instance v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService;->sSyncAdapter:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncAdapterImpl;

    .line 693
    :cond_12
    monitor-exit v1

    .line 694
    return-void

    .line 693
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method
