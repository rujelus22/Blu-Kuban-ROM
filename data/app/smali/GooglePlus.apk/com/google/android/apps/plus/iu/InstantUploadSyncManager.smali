.class Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;
.super Ljava/lang/Object;
.source "InstantUploadSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;,
        Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;
    }
.end annotation


# static fields
.field private static final PROJECTION_ENABLE_ACCOUNT:[Ljava/lang/String;

.field private static sInstance:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;


# instance fields
.field private mBackgroundData:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

.field private mHasWifiConnectivity:Z

.field private final mInvalidAccounts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPlugged:Z

.field private mIsRoaming:Z

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/iu/SyncTaskProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncHandler:Landroid/os/Handler;

.field private final mSyncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "auto_upload_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "auto_upload_account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "instant_share_eventid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "instant_share_endtime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->PROJECTION_ENABLE_ACCOUNT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    .line 55
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    .line 57
    iput-boolean v4, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mHasWifiConnectivity:Z

    .line 58
    iput-boolean v4, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mIsRoaming:Z

    .line 59
    iput-boolean v4, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mIsPlugged:Z

    .line 60
    iput-boolean v4, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mBackgroundData:Z

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mContext:Landroid/content/Context;

    .line 76
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    .line 78
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "picasa-sync-manager"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 81
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->initSyncHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    .line 83
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    new-instance v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$1;-><init>(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)V

    .line 97
    .local v0, accountListener:Landroid/accounts/OnAccountsUpdateListener;
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 98
    return-void
.end method

.method private acceptSyncTask(Lcom/google/android/apps/plus/iu/SyncTask;)Z
    .registers 9
    .parameter "task"

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x0

    const/4 v5, 0x3

    .line 300
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/SyncTask;->isAutoSync()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 301
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-nez v2, :cond_39

    .line 302
    const-string v2, "InstantUploadSyncMgr"

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 303
    const-string v2, "InstantUploadSyncMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because master auto sync is off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_35
    invoke-virtual {p1, v6}, Lcom/google/android/apps/plus/iu/SyncTask;->onRejected(I)V

    .line 363
    :goto_38
    return v1

    .line 309
    :cond_39
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p1, Lcom/google/android/apps/plus/iu/SyncTask;->syncAccount:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 312
    .local v0, doAutoSync:Z
    if-nez v0, :cond_74

    .line 313
    const-string v2, "InstantUploadSyncMgr"

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 314
    const-string v2, "InstantUploadSyncMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because auto sync is off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_70
    invoke-virtual {p1, v6}, Lcom/google/android/apps/plus/iu/SyncTask;->onRejected(I)V

    goto :goto_38

    .line 321
    .end local v0           #doAutoSync:Z
    :cond_74
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v2

    .line 322
    :try_start_77
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    iget-object v4, p1, Lcom/google/android/apps/plus/iu/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 323
    const-string v3, "InstantUploadSyncMgr"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 324
    const-string v3, "InstantUploadSyncMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reject "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for invalid account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/apps/plus/iu/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_b2
    monitor-exit v2

    goto :goto_38

    .line 331
    :catchall_b4
    move-exception v1

    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_77 .. :try_end_b6} :catchall_b4

    throw v1

    :cond_b7
    :try_start_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b4

    .line 333
    iget-boolean v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mBackgroundData:Z

    if-nez v2, :cond_ef

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/SyncTask;->isBackgroundSync()Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 334
    const-string v2, "InstantUploadSyncMgr"

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 335
    const-string v2, "InstantUploadSyncMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for disabled background data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_e8
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/iu/SyncTask;->onRejected(I)V

    goto/16 :goto_38

    .line 340
    :cond_ef
    iget-boolean v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mIsPlugged:Z

    if-nez v2, :cond_125

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/SyncTask;->isSyncOnBattery()Z

    move-result v2

    if-nez v2, :cond_125

    .line 341
    const-string v2, "InstantUploadSyncMgr"

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 342
    const-string v2, "InstantUploadSyncMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on battery"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_11f
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/iu/SyncTask;->onRejected(I)V

    goto/16 :goto_38

    .line 347
    :cond_125
    iget-boolean v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mHasWifiConnectivity:Z

    if-nez v2, :cond_190

    .line 348
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/SyncTask;->isSyncOnWifiOnly()Z

    move-result v2

    if-eqz v2, :cond_15b

    .line 349
    const-string v2, "InstantUploadSyncMgr"

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_155

    .line 350
    const-string v2, "InstantUploadSyncMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for non-wifi connection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_155
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/iu/SyncTask;->onRejected(I)V

    goto/16 :goto_38

    .line 354
    :cond_15b
    iget-boolean v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mIsRoaming:Z

    if-eqz v2, :cond_190

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/SyncTask;->isSyncOnRoaming()Z

    move-result v2

    if-nez v2, :cond_190

    .line 355
    const-string v2, "InstantUploadSyncMgr"

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18b

    .line 356
    const-string v2, "InstantUploadSyncMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_18b
    invoke-virtual {p1, v5}, Lcom/google/android/apps/plus/iu/SyncTask;->onRejected(I)V

    goto/16 :goto_38

    .line 363
    :cond_190
    const/4 v1, 0x1

    goto/16 :goto_38
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->setupTaskProviders()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateEnvironment()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;Ljava/lang/Boolean;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateBatteryState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateTasksInternal()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)Lcom/google/android/apps/plus/iu/PicasaSyncHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->verifySyncAccountSetting()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/SyncTask;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/SyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 68
    const-class v1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->sInstance:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    if-nez v0, :cond_e

    .line 69
    new-instance v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->sInstance:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    .line 71
    :cond_e
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->sInstance:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNextSyncTask(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;)V
    .registers 7
    .parameter "session"

    .prologue
    .line 388
    const-string v3, "InstantUploadSyncManager.getNextSyncTask"

    invoke-static {v3}, Lcom/google/android/apps/plus/iu/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 389
    .local v2, statsId:I
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;

    invoke-direct {v3, p0, p1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;-><init>(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 391
    .local v1, future:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 393
    :try_start_15
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_1c

    .line 399
    :cond_18
    :goto_18
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    .line 400
    return-void

    .line 394
    :catch_1c
    move-exception v0

    .line 395
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "InstantUploadSyncMgr"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 396
    const-string v3, "InstantUploadSyncMgr"

    const-string v4, "fail to get next task"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method private initSyncHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .registers 4
    .parameter "thread"

    .prologue
    .line 130
    new-instance v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$2;-><init>(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;Landroid/os/Looper;)V

    return-object v0
.end method

.method private isValidAccount(Landroid/accounts/Account;)Z
    .registers 9
    .parameter "account"

    .prologue
    .line 435
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 436
    .local v3, manager:Landroid/accounts/AccountManager;
    const-string v5, "com.google"

    invoke-virtual {v3, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_e
    if-ge v1, v2, :cond_21

    aget-object v4, v0, v1

    .line 437
    .local v4, x:Landroid/accounts/Account;
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 438
    const/4 v5, 0x1

    .line 441
    .end local v4           #x:Landroid/accounts/Account;
    :goto_1d
    return v5

    .line 436
    .restart local v4       #x:Landroid/accounts/Account;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 441
    .end local v4           #x:Landroid/accounts/Account;
    :cond_21
    const/4 v5, 0x0

    goto :goto_1d
.end method

.method private static isWifiNetwork(I)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 216
    packed-switch p0, :pswitch_data_8

    .line 225
    :pswitch_3
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 223
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 216
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/SyncTask;
    .registers 10
    .parameter "account"

    .prologue
    .line 413
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v7, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_7
    if-ge v0, v2, :cond_44

    .line 414
    iget-object v7, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/iu/SyncTaskProvider;

    .line 415
    .local v3, provider:Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v6, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/SyncTask;>;"
    invoke-interface {v3, v6}, Lcom/google/android/apps/plus/iu/SyncTaskProvider;->collectTasks(Ljava/util/Collection;)V

    .line 417
    const/4 v4, 0x0

    .line 418
    .local v4, result:Lcom/google/android/apps/plus/iu/SyncTask;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/iu/SyncTask;

    .line 419
    .local v5, task:Lcom/google/android/apps/plus/iu/SyncTask;
    iput v0, v5, Lcom/google/android/apps/plus/iu/SyncTask;->mPriority:I

    .line 420
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->acceptSyncTask(Lcom/google/android/apps/plus/iu/SyncTask;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 423
    if-eqz v4, :cond_3c

    iget-object v7, v5, Lcom/google/android/apps/plus/iu/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 424
    :cond_3c
    move-object v4, v5

    goto :goto_1e

    .line 427
    .end local v5           #task:Lcom/google/android/apps/plus/iu/SyncTask;
    :cond_3e
    if-eqz v4, :cond_41

    .line 431
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #provider:Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    .end local v4           #result:Lcom/google/android/apps/plus/iu/SyncTask;
    .end local v6           #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/SyncTask;>;"
    :goto_40
    return-object v4

    .line 413
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #provider:Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    .restart local v4       #result:Lcom/google/android/apps/plus/iu/SyncTask;
    .restart local v6       #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/SyncTask;>;"
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 431
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #provider:Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    .end local v4           #result:Lcom/google/android/apps/plus/iu/SyncTask;
    .end local v6           #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/SyncTask;>;"
    :cond_44
    const/4 v4, 0x0

    goto :goto_40
.end method

.method private onAccountInvalid(Ljava/lang/String;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 445
    const-string v0, "InstantUploadSyncMgr"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 446
    const-string v0, "InstantUploadSyncMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed ?!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2b
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v1

    .line 449
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 450
    monitor-exit v1

    .line 451
    return-void

    .line 450
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw v0
.end method

.method private performSyncInternal(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;)V
    .registers 11
    .parameter "session"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 534
    iget-object v3, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    iget-object v1, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 536
    .local v1, syncStats:Landroid/content/SyncStats;
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->getNextSyncTask(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;)V

    .line 537
    iget-object v3, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    if-eqz v3, :cond_19

    iget-object v3, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->account:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    iget-object v4, v4, Lcom/google/android/apps/plus/iu/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 568
    :cond_19
    :goto_19
    return-void

    .line 542
    :cond_1a
    :try_start_1a
    const-string v3, "InstantUploadSyncMgr"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 543
    const-string v3, "InstantUploadSyncMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perform sync task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_3d
    iget-object v3, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    iget-object v4, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/iu/SyncTask;->performSync(Landroid/content/SyncResult;)V

    .line 546
    const-string v3, "InstantUploadSyncMgr"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 547
    const-string v3, "InstantUploadSyncMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_1a .. :try_end_67} :catchall_b3
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_67} :catch_84
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_67} :catch_9f

    .line 559
    :cond_67
    iput-object v7, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    .line 562
    :goto_69
    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 564
    const-string v3, "InstantUploadSyncMgr"

    invoke-static {v3, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 565
    const-string v3, "InstantUploadSyncMgr"

    const-string v4, "stop sync session due to io error"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_80
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->cancelSync()V

    goto :goto_19

    .line 549
    :catch_84
    move-exception v0

    .line 550
    .local v0, e:Ljava/io/IOException;
    :try_start_85
    const-string v3, "InstantUploadSyncMgr"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 551
    const-string v3, "InstantUploadSyncMgr"

    const-string v4, "perform sync fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    :cond_95
    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_9c
    .catchall {:try_start_85 .. :try_end_9c} :catchall_b3

    .line 559
    iput-object v7, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    goto :goto_69

    .line 554
    .end local v0           #e:Ljava/io/IOException;
    :catch_9f
    move-exception v2

    .line 555
    .local v2, t:Ljava/lang/Throwable;
    :try_start_a0
    const-string v3, "InstantUploadSyncMgr"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 556
    const-string v3, "InstantUploadSyncMgr"

    const-string v4, "perform sync fail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catchall {:try_start_a0 .. :try_end_b0} :catchall_b3

    .line 559
    :cond_b0
    iput-object v7, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    goto :goto_69

    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_b3
    move-exception v3

    iput-object v7, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    throw v3
.end method

.method private setupTaskProviders()V
    .registers 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;

    move-result-object v0

    .line 106
    .local v0, uploads:Lcom/google/android/apps/plus/iu/UploadsManager;
    monitor-enter p0

    .line 108
    :try_start_7
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getManualPhotoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getManualVideoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstantSharePhotoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstantShareVideoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getNewPhotoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getExistingPhotoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getNewVideoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->getExistingVideoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 126
    :catchall_51
    move-exception v1

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_51

    throw v1
.end method

.method private updateBatteryState(Ljava/lang/Boolean;)V
    .registers 9
    .parameter "plugged"

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x1

    .line 269
    iget-object v4, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    if-nez p1, :cond_39

    .line 273
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 277
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_29

    .line 278
    const-string v3, "InstantUploadSyncMgr"

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 279
    const-string v3, "InstantUploadSyncMgr"

    const-string v4, "there is no battery info yet"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_28
    :goto_28
    return-void

    .line 283
    .restart local v1       #filter:Landroid/content/IntentFilter;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_29
    const-string v4, "plugged"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 284
    .local v0, extra:I
    if-eq v0, v3, :cond_35

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6c

    :cond_35
    :goto_35
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 287
    .end local v0           #extra:I
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_39
    const-string v3, "InstantUploadSyncMgr"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 288
    const-string v3, "InstantUploadSyncMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "battery info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_5a
    iget-boolean v3, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mIsPlugged:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_28

    .line 293
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mIsPlugged:Z

    .line 294
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateTasksInternal()V

    goto :goto_28

    .line 284
    .restart local v0       #extra:I
    .restart local v1       #filter:Landroid/content/IntentFilter;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_6c
    const/4 v3, 0x0

    goto :goto_35
.end method

.method private updateEnvironment()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 230
    iget-object v8, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, environmentChanged:Z
    iget-object v8, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 237
    .local v5, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 238
    .local v3, info:Landroid/net/NetworkInfo;
    const-string v8, "InstantUploadSyncMgr"

    invoke-static {v8, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 239
    const-string v8, "InstantUploadSyncMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "active network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_38
    if-eqz v3, :cond_8d

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->isWifiNetwork(I)Z

    move-result v8

    if-eqz v8, :cond_8d

    move v2, v6

    .line 242
    .local v2, hasWifiConnection:Z
    :goto_45
    iget-boolean v8, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mHasWifiConnectivity:Z

    if-eq v2, v8, :cond_4c

    .line 243
    const/4 v1, 0x1

    .line 244
    iput-boolean v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mHasWifiConnectivity:Z

    .line 247
    :cond_4c
    if-eqz v3, :cond_8f

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v8

    if-eqz v8, :cond_8f

    move v4, v6

    .line 248
    .local v4, isRoaming:Z
    :goto_55
    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mIsRoaming:Z

    if-eq v4, v6, :cond_5c

    .line 249
    const/4 v1, 0x1

    .line 250
    iput-boolean v4, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mIsRoaming:Z

    .line 254
    :cond_5c
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 255
    .local v0, backgroundData:Z
    const-string v6, "InstantUploadSyncMgr"

    invoke-static {v6, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 256
    const-string v6, "InstantUploadSyncMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "background data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_80
    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mBackgroundData:Z

    if-eq v6, v0, :cond_87

    .line 259
    const/4 v1, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mBackgroundData:Z

    .line 263
    :cond_87
    if-eqz v1, :cond_8c

    .line 264
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateTasksInternal()V

    .line 266
    :cond_8c
    return-void

    .end local v0           #backgroundData:Z
    .end local v2           #hasWifiConnection:Z
    .end local v4           #isRoaming:Z
    :cond_8d
    move v2, v7

    .line 241
    goto :goto_45

    .restart local v2       #hasWifiConnection:Z
    :cond_8f
    move v4, v7

    .line 247
    goto :goto_55
.end method

.method private updateTasksInternal()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    .line 455
    iget-object v4, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mCurrentSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    .line 456
    .local v4, session:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;
    :goto_3
    if-nez v4, :cond_5a

    .line 457
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/SyncTask;

    move-result-object v5

    .line 459
    .local v5, task:Lcom/google/android/apps/plus/iu/SyncTask;
    if-nez v5, :cond_12

    .line 502
    .end local v5           #task:Lcom/google/android/apps/plus/iu/SyncTask;
    :cond_11
    :goto_11
    return-void

    .line 463
    .restart local v5       #task:Lcom/google/android/apps/plus/iu/SyncTask;
    :cond_12
    new-instance v0, Landroid/accounts/Account;

    iget-object v6, v5, Lcom/google/android/apps/plus/iu/SyncTask;->syncAccount:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-direct {v0, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->isValidAccount(Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 467
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 468
    .local v2, extras:Landroid/os/Bundle;
    const-string v6, "ignore_settings"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 469
    const-string v6, "InstantUploadSyncMgr"

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 470
    const-string v6, "InstantUploadSyncMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request sync for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_4c
    const-string v6, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    invoke-static {v0, v6, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_11

    .line 475
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_52
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->onAccountInvalid(Ljava/lang/String;)V

    .line 477
    iget-object v4, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mCurrentSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    .line 478
    goto :goto_3

    .line 480
    .end local v0           #account:Landroid/accounts/Account;
    .end local v5           #task:Lcom/google/android/apps/plus/iu/SyncTask;
    :cond_5a
    iget-object v1, v4, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    .line 481
    .local v1, current:Lcom/google/android/apps/plus/iu/SyncTask;
    if-eqz v1, :cond_11

    .line 486
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->acceptSyncTask(Lcom/google/android/apps/plus/iu/SyncTask;)Z

    move-result v6

    if-nez v6, :cond_8e

    .line 487
    const-string v6, "InstantUploadSyncMgr"

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 488
    const-string v6, "InstantUploadSyncMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stop task: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " due to environment change"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_8a
    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/SyncTask;->cancelSync()V

    goto :goto_11

    .line 495
    :cond_8e
    iget-object v6, v4, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->account:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/SyncTask;

    move-result-object v3

    .line 496
    .local v3, next:Lcom/google/android/apps/plus/iu/SyncTask;
    if-eqz v3, :cond_11

    iget v6, v3, Lcom/google/android/apps/plus/iu/SyncTask;->mPriority:I

    iget v7, v1, Lcom/google/android/apps/plus/iu/SyncTask;->mPriority:I

    if-ge v6, v7, :cond_11

    .line 497
    const-string v6, "InstantUploadSyncMgr"

    invoke-static {v6, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 498
    const-string v6, "InstantUploadSyncMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancel task: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_c6
    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/SyncTask;->cancelSync()V

    goto/16 :goto_11
.end method

.method private verifySyncAccountSetting()V
    .registers 15

    .prologue
    const/4 v13, 0x6

    const/4 v8, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->PROJECTION_ENABLE_ACCOUNT:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 170
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_26

    .line 171
    const-string v0, "InstantUploadSyncMgr"

    invoke-static {v0, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 172
    const-string v0, "InstantUploadSyncMgr"

    const-string v1, "failed to query system settings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_25
    :goto_25
    return-void

    .line 177
    :cond_26
    :try_start_26
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_40

    .line 178
    const-string v0, "InstantUploadSyncMgr"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 179
    const-string v0, "InstantUploadSyncMgr"

    const-string v1, "failed to query system settings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_af

    .line 196
    :cond_3c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_25

    .line 183
    :cond_40
    const/4 v0, 0x0

    :try_start_41
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_ab

    move v6, v8

    .line 184
    .local v6, autoUploadEnabled:Z
    :goto_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 185
    .local v9, now:J
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ad

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-gtz v0, :cond_ad

    .line 186
    .local v8, instantShareEnabled:Z
    :goto_5c
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 187
    .local v11, syncAccount:Ljava/lang/String;
    if-nez v6, :cond_65

    if-eqz v8, :cond_a6

    :cond_65
    if-eqz v11, :cond_a6

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, v11, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->isValidAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 190
    const-string v0, "InstantUploadSyncMgr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 191
    const-string v0, "InstantUploadSyncMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove sync account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_99
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_41 .. :try_end_a6} :catchall_af

    .line 196
    :cond_a6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_25

    .end local v6           #autoUploadEnabled:Z
    .end local v8           #instantShareEnabled:Z
    .end local v9           #now:J
    .end local v11           #syncAccount:Ljava/lang/String;
    :cond_ab
    move v6, v12

    .line 183
    goto :goto_48

    .restart local v6       #autoUploadEnabled:Z
    .restart local v9       #now:J
    :cond_ad
    move v8, v12

    .line 185
    goto :goto_5c

    .line 196
    .end local v6           #autoUploadEnabled:Z
    .end local v9           #now:J
    :catchall_af
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public createSession(Ljava/lang/String;Landroid/content/SyncResult;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;
    .registers 4
    .parameter "account"
    .parameter "result"

    .prologue
    .line 530
    new-instance v0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;-><init>(Ljava/lang/String;Landroid/content/SyncResult;)V

    return-object v0
.end method

.method public declared-synchronized onAccountInitialized(Ljava/lang/String;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UserEntry;

    move-result-object v1

    .line 405
    .local v1, user:Lcom/google/android/apps/plus/iu/UserEntry;
    if-nez v1, :cond_19

    .line 406
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 407
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/google/android/apps/plus/iu/UserEntry;

    .end local v1           #user:Lcom/google/android/apps/plus/iu/UserEntry;
    invoke-direct {v1, p1}, Lcom/google/android/apps/plus/iu/UserEntry;-><init>(Ljava/lang/String;)V

    .line 408
    .restart local v1       #user:Lcom/google/android/apps/plus/iu/UserEntry;
    sget-object v2, Lcom/google/android/apps/plus/iu/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 410
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_19
    monitor-exit p0

    return-void

    .line 404
    .end local v1           #user:Lcom/google/android/apps/plus/iu/UserEntry;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onBatteryStateChanged(Z)V
    .registers 6
    .parameter "plugged"

    .prologue
    .line 210
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    if-eqz p1, :cond_11

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 212
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    return-void

    .line 210
    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7
.end method

.method public onEnvironmentChanged()V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    return-void
.end method

.method public performSync(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;)V
    .registers 7
    .parameter "session"

    .prologue
    const/4 v4, 0x0

    .line 575
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mCurrentSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    .line 577
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v3

    .line 578
    :try_start_c
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 579
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_2c

    .line 584
    monitor-enter p0

    .line 585
    :try_start_13
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/iu/SyncTaskProvider;

    .line 586
    .local v1, provider:Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    invoke-interface {v1}, Lcom/google/android/apps/plus/iu/SyncTaskProvider;->onSyncStart()V

    goto :goto_19

    .line 588
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #provider:Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    :catchall_29
    move-exception v2

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_29

    throw v2

    .line 579
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2

    .line 588
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_29

    .line 591
    :try_start_30
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->performSyncInternal(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;)V

    .line 593
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mCurrentSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    .line 596
    monitor-enter p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_47

    .line 597
    :try_start_37
    iget-boolean v2, p1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mSyncCancelled:Z

    if-nez v2, :cond_40

    .line 598
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateTasks(J)V

    .line 600
    :cond_40
    monitor-exit p1
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_44

    .line 602
    iput-object v4, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mCurrentSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    .line 604
    return-void

    .line 600
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 602
    :catchall_47
    move-exception v2

    iput-object v4, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mCurrentSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    throw v2
.end method

.method public requestAccountSync()V
    .registers 3

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 608
    return-void
.end method

.method public updateTasks(J)V
    .registers 5
    .parameter "delay"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 203
    return-void
.end method
