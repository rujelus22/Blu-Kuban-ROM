.class Lcom/google/android/picasasync/PicasaSyncManager;
.super Ljava/lang/Object;
.source "PicasaSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;,
        Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;,
        Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/android/picasasync/PicasaSyncManager;


# instance fields
.field private mBackgroundData:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

.field private final mFacade:Lcom/google/android/picasasync/PicasaFacade;

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
            "Lcom/google/android/picasasync/SyncTaskProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncHandler:Landroid/os/Handler;

.field private final mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

.field private mSyncRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    .line 72
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    .line 74
    iput-boolean v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    .line 75
    iput-boolean v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    .line 76
    iput-boolean v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    .line 77
    iput-boolean v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    .line 105
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    .line 106
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    .line 108
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "picasa-sync-manager"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 110
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 111
    invoke-direct {p0, v1}, Lcom/google/android/picasasync/PicasaSyncManager;->initSyncHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    .line 113
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaSyncManager$1;-><init>(Lcom/google/android/picasasync/PicasaSyncManager;)V

    .line 126
    .local v0, accountListener:Landroid/accounts/OnAccountsUpdateListener;
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 127
    return-void
.end method

.method private acceptSyncTask(Lcom/google/android/picasasync/SyncTask;)Z
    .registers 8
    .parameter "task"

    .prologue
    const/4 v5, 0x6

    const/4 v1, 0x0

    .line 311
    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isAutoSync()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 312
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-nez v2, :cond_30

    .line 313
    const-string v2, "PicasaSyncManager"

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

    .line 314
    invoke-virtual {p1, v5}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    .line 369
    :goto_2f
    return v1

    .line 318
    :cond_30
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p1, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 321
    .local v0, doAutoSync:Z
    if-nez v0, :cond_67

    .line 322
    const-string v2, "PicasaSyncManager"

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

    .line 323
    invoke-virtual {p1, v5}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto :goto_2f

    .line 327
    .end local v0           #doAutoSync:Z
    :cond_67
    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    if-nez v2, :cond_95

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isBackgroundSync()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 328
    const-string v2, "PicasaSyncManager"

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

    .line 329
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto :goto_2f

    .line 332
    :cond_95
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->getMasterInfo()Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->enableDownSync:Z

    if-nez v2, :cond_c9

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isDownSync()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 333
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because downsync is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto/16 :goto_2f

    .line 337
    :cond_c9
    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    if-nez v2, :cond_f7

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isSyncOnBattery()Z

    move-result v2

    if-nez v2, :cond_f7

    .line 338
    const-string v2, "PicasaSyncManager"

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

    .line 339
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto/16 :goto_2f

    .line 342
    :cond_f7
    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    if-nez v2, :cond_153

    .line 343
    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isSyncOnWifiOnly()Z

    move-result v2

    if-eqz v2, :cond_125

    .line 344
    const-string v2, "PicasaSyncManager"

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

    .line 345
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto/16 :goto_2f

    .line 347
    :cond_125
    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    if-eqz v2, :cond_153

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isSyncOnRoaming()Z

    move-result v2

    if-nez v2, :cond_153

    .line 348
    const-string v2, "PicasaSyncManager"

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

    .line 349
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto/16 :goto_2f

    .line 354
    :cond_153
    invoke-static {}, Lcom/google/android/picasasync/PicasaSyncManager;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_184

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isSyncOnExternalStorageOnly()Z

    move-result v2

    if-eqz v2, :cond_184

    .line 355
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on external storage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/SyncTask;->onRejected(I)V

    goto/16 :goto_2f

    .line 360
    :cond_184
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v2

    .line 361
    :try_start_187
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    iget-object v4, p1, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 362
    const-string v3, "PicasaSyncManager"

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

    iget-object v5, p1, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    monitor-exit v2

    goto/16 :goto_2f

    .line 368
    :catchall_1bc
    move-exception v1

    monitor-exit v2
    :try_end_1be
    .catchall {:try_start_187 .. :try_end_1be} :catchall_1bc

    throw v1

    :cond_1bf
    :try_start_1bf
    monitor-exit v2
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1bc

    .line 369
    const/4 v1, 0x1

    goto/16 :goto_2f
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/PicasaSyncManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->setupTaskProviders()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->checkSyncRequests()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateEnvironment()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/picasasync/PicasaSyncManager;Ljava/lang/Boolean;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->updateBatteryState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasksInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/picasasync/PicasaSyncManager;)Lcom/google/android/picasasync/PicasaFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/picasasync/PicasaSyncManager;)Lcom/google/android/picasasync/PicasaSyncHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/picasasync/PicasaSyncManager;Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;

    move-result-object v0

    return-object v0
.end method

.method private checkSyncRequests()V
    .registers 11

    .prologue
    .line 209
    monitor-enter p0

    .line 210
    :try_start_1
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    .line 211
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    .line 212
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_49

    .line 213
    const/4 v6, 0x0

    .line 214
    .local v6, updated:Z
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v8}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 216
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 217
    .local v0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/UserEntry;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;

    .line 218
    .local v5, request:Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    iget-object v8, v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->account:Ljava/lang/String;

    if-nez v8, :cond_4c

    .line 219
    if-nez v0, :cond_2f

    .line 220
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v8}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    .line 222
    :cond_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/picasasync/UserEntry;

    .line 223
    .local v7, user:Lcom/google/android/picasasync/UserEntry;
    iget-object v8, v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->state:Lcom/google/android/picasasync/SyncState;

    iget-object v9, v7, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/google/android/picasasync/SyncState;->onSyncRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v6, v8

    goto :goto_33

    .line 212
    .end local v0           #accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/UserEntry;>;"
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;>;"
    .end local v5           #request:Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    .end local v6           #updated:Z
    .end local v7           #user:Lcom/google/android/picasasync/UserEntry;
    :catchall_49
    move-exception v8

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v8

    .line 226
    .restart local v0       #accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/UserEntry;>;"
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;>;"
    .restart local v5       #request:Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    .restart local v6       #updated:Z
    :cond_4c
    iget-object v8, v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->state:Lcom/google/android/picasasync/SyncState;

    iget-object v9, v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->account:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/google/android/picasasync/SyncState;->onSyncRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v6, v8

    goto :goto_17

    .line 229
    .end local v5           #request:Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    :cond_56
    if-eqz v6, :cond_5d

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v8, v9}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 230
    :cond_5d
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 97
    const-class v1, Lcom/google/android/picasasync/PicasaSyncManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncManager;->sInstance:Lcom/google/android/picasasync/PicasaSyncManager;

    if-nez v0, :cond_e

    .line 98
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncManager;->sInstance:Lcom/google/android/picasasync/PicasaSyncManager;

    .line 100
    :cond_e
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncManager;->sInstance:Lcom/google/android/picasasync/PicasaSyncManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNextSyncTask(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V
    .registers 7
    .parameter "session"

    .prologue
    .line 392
    const-string v3, "PicasaSyncManager.getNextSyncTask"

    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 393
    .local v2, statsId:I
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;

    invoke-direct {v3, p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;-><init>(Lcom/google/android/picasasync/PicasaSyncManager;Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 395
    .local v1, future:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    :try_start_15
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_1c

    .line 401
    :goto_18
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    .line 402
    return-void

    .line 398
    :catch_1c
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "PicasaSyncManager"

    const-string v4, "fail to get next task"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method private initSyncHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .registers 4
    .parameter "thread"

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/PicasaSyncManager$2;-><init>(Lcom/google/android/picasasync/PicasaSyncManager;Landroid/os/Looper;)V

    return-object v0
.end method

.method private static isExternalStorageMounted()Z
    .registers 2

    .prologue
    .line 247
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private isValidAccount(Landroid/accounts/Account;)Z
    .registers 9
    .parameter "account"

    .prologue
    .line 446
    iget-object v5, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 447
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

    .line 448
    .local v4, x:Landroid/accounts/Account;
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    .line 450
    .end local v4           #x:Landroid/accounts/Account;
    :goto_1d
    return v5

    .line 447
    .restart local v4       #x:Landroid/accounts/Account;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 450
    .end local v4           #x:Landroid/accounts/Account;
    :cond_21
    const/4 v5, 0x0

    goto :goto_1d
.end method

.method private static isWifiNetwork(I)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 233
    packed-switch p0, :pswitch_data_8

    .line 242
    :pswitch_3
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 240
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 233
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

.method private nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;
    .registers 10
    .parameter "account"

    .prologue
    .line 428
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v7, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_7
    if-ge v0, v2, :cond_44

    .line 429
    iget-object v7, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/SyncTaskProvider;

    .line 430
    .local v3, provider:Lcom/google/android/picasasync/SyncTaskProvider;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v6, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/SyncTask;>;"
    invoke-interface {v3, v6}, Lcom/google/android/picasasync/SyncTaskProvider;->collectTasks(Ljava/util/Collection;)V

    .line 432
    const/4 v4, 0x0

    .line 433
    .local v4, result:Lcom/google/android/picasasync/SyncTask;
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

    check-cast v5, Lcom/google/android/picasasync/SyncTask;

    .line 434
    .local v5, task:Lcom/google/android/picasasync/SyncTask;
    iput v0, v5, Lcom/google/android/picasasync/SyncTask;->mPriority:I

    .line 435
    invoke-direct {p0, v5}, Lcom/google/android/picasasync/PicasaSyncManager;->acceptSyncTask(Lcom/google/android/picasasync/SyncTask;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 436
    if-eqz v4, :cond_3c

    iget-object v7, v5, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 437
    :cond_3c
    move-object v4, v5

    goto :goto_1e

    .line 440
    .end local v5           #task:Lcom/google/android/picasasync/SyncTask;
    :cond_3e
    if-eqz v4, :cond_41

    .line 442
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #provider:Lcom/google/android/picasasync/SyncTaskProvider;
    .end local v4           #result:Lcom/google/android/picasasync/SyncTask;
    .end local v6           #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/SyncTask;>;"
    :goto_40
    return-object v4

    .line 428
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #provider:Lcom/google/android/picasasync/SyncTaskProvider;
    .restart local v4       #result:Lcom/google/android/picasasync/SyncTask;
    .restart local v6       #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/SyncTask;>;"
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 442
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #provider:Lcom/google/android/picasasync/SyncTaskProvider;
    .end local v4           #result:Lcom/google/android/picasasync/SyncTask;
    .end local v6           #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/SyncTask;>;"
    :cond_44
    const/4 v4, 0x0

    goto :goto_40
.end method

.method private onAccountInvalid(Ljava/lang/String;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 454
    const-string v0, "PicasaSyncManager"

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

    .line 455
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v1

    .line 456
    :try_start_25
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 457
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private performSyncInternal(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V
    .registers 10
    .parameter "session"

    .prologue
    const/4 v7, 0x0

    .line 532
    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    iget-object v1, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 534
    .local v1, syncStats:Landroid/content/SyncStats;
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->getNextSyncTask(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V

    .line 535
    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    if-eqz v3, :cond_18

    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->account:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    iget-object v4, v4, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 556
    :cond_18
    :goto_18
    return-void

    .line 538
    :cond_19
    :try_start_19
    const-string v3, "PicasaSyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perform sync task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    iget-object v4, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    invoke-virtual {v3, v4}, Lcom/google/android/picasasync/SyncTask;->performSync(Landroid/content/SyncResult;)V

    .line 540
    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    invoke-virtual {v3}, Landroid/content/SyncResult;->hasError()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 541
    const-string v3, "PicasaSyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync complete w error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_19 .. :try_end_5c} :catchall_8e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_5c} :catch_71
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_5c} :catch_83

    .line 549
    :cond_5c
    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    .line 552
    :goto_5e
    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 554
    const-string v3, "PicasaSyncManager"

    const-string v4, "stop sync session due to io error"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {p1}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->cancelSync()V

    goto :goto_18

    .line 543
    :catch_71
    move-exception v0

    .line 544
    .local v0, e:Ljava/io/IOException;
    :try_start_72
    const-string v3, "PicasaSyncManager"

    const-string v4, "perform sync fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_80
    .catchall {:try_start_72 .. :try_end_80} :catchall_8e

    .line 549
    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    goto :goto_5e

    .line 546
    .end local v0           #e:Ljava/io/IOException;
    :catch_83
    move-exception v2

    .line 547
    .local v2, t:Ljava/lang/Throwable;
    :try_start_84
    const-string v3, "PicasaSyncManager"

    const-string v4, "perform sync fail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_8e

    .line 549
    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    goto :goto_5e

    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_8e
    move-exception v3

    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    throw v3
.end method

.method private declared-synchronized requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V
    .registers 5
    .parameter "account"
    .parameter "state"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 187
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    :cond_f
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;

    invoke-direct {v1, p1, p2}, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;-><init>(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 190
    monitor-exit p0

    return-void

    .line 186
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setupTaskProviders()V
    .registers 5

    .prologue
    .line 133
    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/picasasync/MetadataSync;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/picasasync/MetadataSync;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/picasasync/MetadataSync;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/picasasync/MetadataSync;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/google/android/picasasync/PhotoPrefetch;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/android/picasasync/PhotoPrefetch;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/picasasync/PhotoPrefetch;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_44

    throw v0
.end method

.method private updateBatteryState(Ljava/lang/Boolean;)V
    .registers 8
    .parameter "plugged"

    .prologue
    const/4 v3, 0x1

    .line 286
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    if-nez p1, :cond_31

    .line 290
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 294
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_21

    .line 295
    const-string v3, "PicasaSyncManager"

    const-string v4, "there is no battery info yet"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_20
    :goto_20
    return-void

    .line 298
    .restart local v1       #filter:Landroid/content/IntentFilter;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_21
    const-string v4, "plugged"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 299
    .local v0, extra:I
    if-eq v0, v3, :cond_2d

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5b

    :cond_2d
    :goto_2d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 302
    .end local v0           #extra:I
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_31
    const-string v3, "PicasaSyncManager"

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

    .line 303
    iget-boolean v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_20

    .line 304
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    .line 305
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasksInternal()V

    goto :goto_20

    .line 299
    .restart local v0       #extra:I
    .restart local v1       #filter:Landroid/content/IntentFilter;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_5b
    const/4 v3, 0x0

    goto :goto_2d
.end method

.method private updateEnvironment()V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 253
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    const/4 v1, 0x0

    .line 257
    .local v1, environmentChanged:Z
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 260
    .local v5, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 261
    .local v3, info:Landroid/net/NetworkInfo;
    const-string v8, "PicasaSyncManager"

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

    .line 262
    if-eqz v3, :cond_7c

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/picasasync/PicasaSyncManager;->isWifiNetwork(I)Z

    move-result v8

    if-eqz v8, :cond_7c

    move v2, v6

    .line 263
    .local v2, hasWifiConnection:Z
    :goto_3c
    iget-boolean v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    if-eq v2, v8, :cond_43

    .line 264
    const/4 v1, 0x1

    .line 265
    iput-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    .line 268
    :cond_43
    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v8

    if-eqz v8, :cond_7e

    move v4, v6

    .line 269
    .local v4, isRoaming:Z
    :goto_4c
    iget-boolean v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    if-eq v4, v6, :cond_53

    .line 270
    const/4 v1, 0x1

    .line 271
    iput-boolean v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    .line 275
    :cond_53
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 276
    .local v0, backgroundData:Z
    const-string v6, "PicasaSyncManager"

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

    .line 277
    iget-boolean v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    if-eq v6, v0, :cond_76

    .line 278
    const/4 v1, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    .line 282
    :cond_76
    if-eqz v1, :cond_7b

    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasksInternal()V

    .line 283
    :cond_7b
    return-void

    .end local v0           #backgroundData:Z
    .end local v2           #hasWifiConnection:Z
    .end local v4           #isRoaming:Z
    :cond_7c
    move v2, v7

    .line 262
    goto :goto_3c

    .restart local v2       #hasWifiConnection:Z
    :cond_7e
    move v4, v7

    .line 268
    goto :goto_4c
.end method

.method private updateTasksInternal()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 462
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 463
    .local v4, session:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;
    :goto_3
    if-nez v4, :cond_5b

    .line 464
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/android/picasasync/PicasaSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;

    move-result-object v5

    .line 466
    .local v5, task:Lcom/google/android/picasasync/SyncTask;
    if-nez v5, :cond_13

    .line 500
    .end local v5           #task:Lcom/google/android/picasasync/SyncTask;
    :cond_12
    :goto_12
    return-void

    .line 468
    .restart local v5       #task:Lcom/google/android/picasasync/SyncTask;
    :cond_13
    new-instance v0, Landroid/accounts/Account;

    iget-object v6, v5, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-direct {v0, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->isValidAccount(Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 472
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v2, extras:Landroid/os/Bundle;
    const-string v6, "picasa-sync-manager-requested"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    const-string v6, "ignore_settings"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 475
    const-string v6, "PicasaSyncManager"

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

    .line 476
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_12

    .line 479
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_53
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/picasasync/PicasaSyncManager;->onAccountInvalid(Ljava/lang/String;)V

    .line 481
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 482
    goto :goto_3

    .line 484
    .end local v0           #account:Landroid/accounts/Account;
    .end local v5           #task:Lcom/google/android/picasasync/SyncTask;
    :cond_5b
    iget-object v1, v4, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    .line 485
    .local v1, current:Lcom/google/android/picasasync/SyncTask;
    if-eqz v1, :cond_12

    .line 488
    invoke-direct {p0, v1}, Lcom/google/android/picasasync/PicasaSyncManager;->acceptSyncTask(Lcom/google/android/picasasync/SyncTask;)Z

    move-result v6

    if-nez v6, :cond_87

    .line 489
    const-string v6, "PicasaSyncManager"

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
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncTask;->cancelSync()V

    goto :goto_12

    .line 495
    :cond_87
    iget-object v6, v4, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->account:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/picasasync/PicasaSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;

    move-result-object v3

    .line 496
    .local v3, next:Lcom/google/android/picasasync/SyncTask;
    if-eqz v3, :cond_12

    iget v6, v3, Lcom/google/android/picasasync/SyncTask;->mPriority:I

    iget v7, v1, Lcom/google/android/picasasync/SyncTask;->mPriority:I

    if-ge v6, v7, :cond_12

    .line 497
    const-string v6, "PicasaSyncManager"

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

    .line 498
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncTask;->cancelSync()V

    goto/16 :goto_12
.end method


# virtual methods
.method public createSession(Ljava/lang/String;Landroid/content/SyncResult;)Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;
    .registers 4
    .parameter "account"
    .parameter "result"

    .prologue
    .line 528
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-direct {v0, p1, p2}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;-><init>(Ljava/lang/String;Landroid/content/SyncResult;)V

    return-object v0
.end method

.method public declared-synchronized onAccountInitialized(Ljava/lang/String;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 406
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v2, p1}, Lcom/google/android/picasasync/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;

    move-result-object v1

    .line 407
    .local v1, user:Lcom/google/android/picasasync/UserEntry;
    if-nez v1, :cond_19

    .line 408
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 409
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/google/android/picasasync/UserEntry;

    .end local v1           #user:Lcom/google/android/picasasync/UserEntry;
    invoke-direct {v1, p1}, Lcom/google/android/picasasync/UserEntry;-><init>(Ljava/lang/String;)V

    .line 410
    .restart local v1       #user:Lcom/google/android/picasasync/UserEntry;
    sget-object v2, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 412
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_19
    monitor-exit p0

    return-void

    .line 406
    .end local v1           #user:Lcom/google/android/picasasync/UserEntry;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onBatteryStateChanged(Z)V
    .registers 6
    .parameter "plugged"

    .prologue
    .line 202
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    if-eqz p1, :cond_11

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    return-void

    .line 202
    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7
.end method

.method public onEnvironmentChanged()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    return-void
.end method

.method public performSync(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V
    .registers 5
    .parameter "session"

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 565
    :try_start_9
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->performSyncInternal(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 570
    monitor-enter p1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_20

    .line 571
    :try_start_10
    iget-boolean v0, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mSyncCancelled:Z

    if-nez v0, :cond_19

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 572
    :cond_19
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1d

    .line 574
    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 576
    return-void

    .line 572
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    .line 574
    :catchall_20
    move-exception v0

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    throw v0
.end method

.method public requestAccountSync()V
    .registers 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 591
    return-void
.end method

.method public requestMetadataSync(Z)V
    .registers 4
    .parameter "manual"

    .prologue
    .line 586
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    sget-object v0, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    :goto_5
    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 587
    return-void

    .line 586
    :cond_9
    sget-object v0, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    goto :goto_5
.end method

.method public requestPrefetchSync()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 579
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch;->onRequestSync(Landroid/content/Context;)V

    .line 580
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 581
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 582
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 583
    return-void
.end method

.method public resetSyncStates()V
    .registers 5

    .prologue
    .line 415
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v3

    .line 416
    :try_start_3
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 417
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_23

    .line 420
    monitor-enter p0

    .line 421
    :try_start_a
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/picasasync/SyncTaskProvider;

    .line 422
    .local v1, provider:Lcom/google/android/picasasync/SyncTaskProvider;
    invoke-interface {v1}, Lcom/google/android/picasasync/SyncTaskProvider;->resetSyncStates()V

    goto :goto_10

    .line 424
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #provider:Lcom/google/android/picasasync/SyncTaskProvider;
    :catchall_20
    move-exception v2

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v2

    .line 417
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2

    .line 424
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_20

    .line 425
    return-void
.end method

.method public updateTasks(J)V
    .registers 5
    .parameter "delay"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 195
    return-void
.end method
