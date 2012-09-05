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
.field private static final PROJECTION_ENABLE_ACCOUNT:[Ljava/lang/String;

.field private static sInstance:Lcom/google/android/picasasync/PicasaSyncManager;


# instance fields
.field private final mAlbumCoverPrefetch:Lcom/google/android/picasasync/SyncTaskProvider;

.field private mBackgroundData:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

.field private final mFacade:Lcom/google/android/picasasync/PicasaFacade;

.field private final mFullImagePrefetch:Lcom/google/android/picasasync/SyncTaskProvider;

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

.field private final mManualMetadataSync:Lcom/google/android/picasasync/SyncTaskProvider;

.field private final mMetadataSync:Lcom/google/android/picasasync/SyncTaskProvider;

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

.field private final mScreenImagePrefetch:Lcom/google/android/picasasync/SyncTaskProvider;

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

.field private final mUrgentUploads:Lcom/google/android/picasasync/SyncTaskProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "auto_upload_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "auto_upload_account_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncManager;->PROJECTION_ENABLE_ACCOUNT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    .line 74
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    .line 76
    iput-boolean v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    .line 77
    iput-boolean v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    .line 78
    iput-boolean v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    .line 79
    iput-boolean v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    .line 114
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    .line 115
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    .line 117
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "picasa-sync-manager"

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 119
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 120
    invoke-direct {p0, v1}, Lcom/google/android/picasasync/PicasaSyncManager;->initSyncHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    .line 123
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v2

    .line 125
    .local v2, uploads:Lcom/google/android/picasasync/UploadsManager;
    new-instance v3, Lcom/google/android/picasasync/MetadataSync;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v7}, Lcom/google/android/picasasync/MetadataSync;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mManualMetadataSync:Lcom/google/android/picasasync/SyncTaskProvider;

    .line 126
    new-instance v3, Lcom/google/android/picasasync/MetadataSync;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v6}, Lcom/google/android/picasasync/MetadataSync;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mMetadataSync:Lcom/google/android/picasasync/SyncTaskProvider;

    .line 127
    new-instance v3, Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/picasasync/PhotoPrefetch;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mAlbumCoverPrefetch:Lcom/google/android/picasasync/SyncTaskProvider;

    .line 128
    new-instance v3, Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v8}, Lcom/google/android/picasasync/PhotoPrefetch;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFullImagePrefetch:Lcom/google/android/picasasync/SyncTaskProvider;

    .line 129
    new-instance v3, Lcom/google/android/picasasync/PhotoPrefetch;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v7}, Lcom/google/android/picasasync/PhotoPrefetch;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mScreenImagePrefetch:Lcom/google/android/picasasync/SyncTaskProvider;

    .line 130
    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadsManager;->getUrgentUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mUrgentUploads:Lcom/google/android/picasasync/SyncTaskProvider;

    .line 132
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mManualMetadataSync:Lcom/google/android/picasasync/SyncTaskProvider;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mUrgentUploads:Lcom/google/android/picasasync/SyncTaskProvider;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadsManager;->getNewPhotoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadsManager;->getNewVideoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadsManager;->getExistingPhotoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadsManager;->getExistingVideoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mMetadataSync:Lcom/google/android/picasasync/SyncTaskProvider;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFullImagePrefetch:Lcom/google/android/picasasync/SyncTaskProvider;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mAlbumCoverPrefetch:Lcom/google/android/picasasync/SyncTaskProvider;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mScreenImagePrefetch:Lcom/google/android/picasasync/SyncTaskProvider;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaSyncManager$1;-><init>(Lcom/google/android/picasasync/PicasaSyncManager;)V

    .line 155
    .local v0, accountListener:Landroid/accounts/OnAccountsUpdateListener;
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v6}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 156
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    return-void
.end method

.method private acceptSyncTask(Lcom/google/android/picasasync/SyncTask;)Z
    .registers 8
    .parameter "task"

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    if-nez v2, :cond_34

    .line 339
    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isSyncOnWifiOnly()Z

    move-result v2

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    if-eqz v2, :cond_34

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isSyncOnRoaming()Z

    move-result v2

    if-nez v2, :cond_34

    .line 340
    :cond_15
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for wifi connection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_33
    return v1

    .line 344
    :cond_34
    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    if-nez v2, :cond_5d

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isBackgroundSync()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 345
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for background data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 348
    :cond_5d
    iget-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    if-nez v2, :cond_86

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isSyncOnBattery()Z

    move-result v2

    if-nez v2, :cond_86

    .line 349
    const-string v2, "PicasaSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for battery"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 353
    :cond_86
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v2

    .line 354
    :try_start_89
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    iget-object v4, p1, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 355
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

    .line 357
    monitor-exit v2

    goto/16 :goto_33

    .line 359
    :catchall_be
    move-exception v1

    monitor-exit v2
    :try_end_c0
    .catchall {:try_start_89 .. :try_end_c0} :catchall_be

    throw v1

    :cond_c1
    :try_start_c1
    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_be

    .line 361
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p1, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 364
    .local v0, doAutoSync:Z
    if-nez v0, :cond_fd

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isAutoSync()Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 365
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

    goto/16 :goto_33

    .line 369
    :cond_fd
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->getMasterInfo()Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->enableDownSync:Z

    if-nez v2, :cond_12d

    invoke-virtual {p1}, Lcom/google/android/picasasync/SyncTask;->isDownSync()Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 370
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

    goto/16 :goto_33

    .line 374
    :cond_12d
    const/4 v1, 0x1

    goto/16 :goto_33
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/PicasaSyncManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->checkSyncRequests()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateEnvironment()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/picasasync/PicasaSyncManager;Ljava/lang/Boolean;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->updateBatteryState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasksInternal()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/picasasync/PicasaSyncManager;)Lcom/google/android/picasasync/PicasaFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/picasasync/PicasaSyncManager;)Lcom/google/android/picasasync/PicasaSyncHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/picasasync/PicasaSyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->verifySyncAccountSetting()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/picasasync/PicasaSyncManager;Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;

    move-result-object v0

    return-object v0
.end method

.method private checkSyncRequests()V
    .registers 11

    .prologue
    .line 244
    monitor-enter p0

    .line 245
    :try_start_1
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    .line 246
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    .line 247
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_49

    .line 248
    const/4 v6, 0x0

    .line 249
    .local v6, updated:Z
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v8}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 251
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 252
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

    .line 253
    .local v5, request:Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    iget-object v8, v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->account:Ljava/lang/String;

    if-nez v8, :cond_4c

    .line 254
    if-nez v0, :cond_2f

    .line 255
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v8}, Lcom/google/android/picasasync/PicasaSyncHelper;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    .line 257
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

    .line 258
    .local v7, user:Lcom/google/android/picasasync/UserEntry;
    iget-object v8, v5, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;->state:Lcom/google/android/picasasync/SyncState;

    iget-object v9, v7, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/google/android/picasasync/SyncState;->onSyncRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v6, v8

    goto :goto_33

    .line 247
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

    .line 261
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

    .line 264
    .end local v5           #request:Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;
    :cond_56
    if-eqz v6, :cond_5d

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v8, v9}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 265
    :cond_5d
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 106
    const-class v1, Lcom/google/android/picasasync/PicasaSyncManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncManager;->sInstance:Lcom/google/android/picasasync/PicasaSyncManager;

    if-nez v0, :cond_e

    .line 107
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PicasaSyncManager;->sInstance:Lcom/google/android/picasasync/PicasaSyncManager;

    .line 109
    :cond_e
    sget-object v0, Lcom/google/android/picasasync/PicasaSyncManager;->sInstance:Lcom/google/android/picasasync/PicasaSyncManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 106
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNextSyncTask(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V
    .registers 7
    .parameter "session"

    .prologue
    .line 397
    const-string v3, "PicasaSyncManager.getNextSyncTask"

    invoke-static {v3}, Lcom/google/android/picasasync/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 398
    .local v2, statsId:I
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;

    invoke-direct {v3, p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager$GetNextSyncTask;-><init>(Lcom/google/android/picasasync/PicasaSyncManager;Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 400
    .local v1, future:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    :try_start_15
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_1c

    .line 406
    :goto_18
    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    .line 407
    return-void

    .line 403
    :catch_1c
    move-exception v0

    .line 404
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
    .line 162
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/PicasaSyncManager$2;-><init>(Lcom/google/android/picasasync/PicasaSyncManager;Landroid/os/Looper;)V

    return-object v0
.end method

.method private isValidAccount(Landroid/accounts/Account;)Z
    .registers 9
    .parameter "account"

    .prologue
    .line 453
    iget-object v5, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 454
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

    .line 455
    .local v4, x:Landroid/accounts/Account;
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    .line 457
    .end local v4           #x:Landroid/accounts/Account;
    :goto_1d
    return v5

    .line 454
    .restart local v4       #x:Landroid/accounts/Account;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 457
    .end local v4           #x:Landroid/accounts/Account;
    :cond_21
    const/4 v5, 0x0

    goto :goto_1d
.end method

.method private static isWifiNetwork(I)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 268
    packed-switch p0, :pswitch_data_8

    .line 277
    :pswitch_3
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 275
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 268
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
    .line 435
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v7, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_7
    if-ge v0, v2, :cond_44

    .line 436
    iget-object v7, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/picasasync/SyncTaskProvider;

    .line 437
    .local v3, provider:Lcom/google/android/picasasync/SyncTaskProvider;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v6, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/SyncTask;>;"
    invoke-interface {v3, v6}, Lcom/google/android/picasasync/SyncTaskProvider;->collectTasks(Ljava/util/Collection;)V

    .line 439
    const/4 v4, 0x0

    .line 440
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

    .line 441
    .local v5, task:Lcom/google/android/picasasync/SyncTask;
    iput v0, v5, Lcom/google/android/picasasync/SyncTask;->mPriority:I

    .line 442
    invoke-direct {p0, v5}, Lcom/google/android/picasasync/PicasaSyncManager;->acceptSyncTask(Lcom/google/android/picasasync/SyncTask;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 443
    if-eqz v4, :cond_3c

    iget-object v7, v5, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 444
    :cond_3c
    move-object v4, v5

    goto :goto_1e

    .line 447
    .end local v5           #task:Lcom/google/android/picasasync/SyncTask;
    :cond_3e
    if-eqz v4, :cond_41

    .line 449
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #provider:Lcom/google/android/picasasync/SyncTaskProvider;
    .end local v4           #result:Lcom/google/android/picasasync/SyncTask;
    .end local v6           #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/SyncTask;>;"
    :goto_40
    return-object v4

    .line 435
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #provider:Lcom/google/android/picasasync/SyncTaskProvider;
    .restart local v4       #result:Lcom/google/android/picasasync/SyncTask;
    .restart local v6       #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/SyncTask;>;"
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 449
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
    .line 461
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

    .line 462
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v1

    .line 463
    :try_start_25
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 464
    monitor-exit v1

    .line 465
    return-void

    .line 464
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

    .line 539
    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    iget-object v1, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 541
    .local v1, syncStats:Landroid/content/SyncStats;
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->getNextSyncTask(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V

    .line 542
    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    if-eqz v3, :cond_18

    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->account:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    iget-object v4, v4, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 561
    :cond_18
    :goto_18
    return-void

    .line 545
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

    .line 546
    iget-object v3, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    iget-object v4, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    invoke-virtual {v3, v4}, Lcom/google/android/picasasync/SyncTask;->performSync(Landroid/content/SyncResult;)V

    .line 547
    const-string v3, "PicasaSyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_19 .. :try_end_54} :catchall_86
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_54} :catch_69
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_54} :catch_7b

    .line 554
    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    .line 557
    :goto_56
    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 559
    const-string v3, "PicasaSyncManager"

    const-string v4, "stop sync session due to io error"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {p1}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->cancelSync()V

    goto :goto_18

    .line 548
    :catch_69
    move-exception v0

    .line 549
    .local v0, e:Ljava/io/IOException;
    :try_start_6a
    const-string v3, "PicasaSyncManager"

    const-string v4, "perform sync fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    iget-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_78
    .catchall {:try_start_6a .. :try_end_78} :catchall_86

    .line 554
    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    goto :goto_56

    .line 551
    .end local v0           #e:Ljava/io/IOException;
    :catch_7b
    move-exception v2

    .line 552
    .local v2, t:Ljava/lang/Throwable;
    :try_start_7c
    const-string v3, "PicasaSyncManager"

    const-string v4, "perform sync fail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_86

    .line 554
    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    goto :goto_56

    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_86
    move-exception v3

    iput-object v7, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    throw v3
.end method

.method private declared-synchronized requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V
    .registers 5
    .parameter "account"
    .parameter "state"

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 222
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    :cond_f
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncRequests:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;

    invoke-direct {v1, p1, p2}, Lcom/google/android/picasasync/PicasaSyncManager$SyncRequest;-><init>(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 225
    monitor-exit p0

    return-void

    .line 221
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateBatteryState(Ljava/lang/Boolean;)V
    .registers 8
    .parameter "plugged"

    .prologue
    const/4 v3, 0x1

    .line 315
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    if-nez p1, :cond_31

    .line 319
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 323
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_21

    .line 324
    const-string v3, "PicasaSyncManager"

    const-string v4, "there is no battery info yet"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_20
    :goto_20
    return-void

    .line 327
    .restart local v1       #filter:Landroid/content/IntentFilter;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_21
    const-string v4, "plugged"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 328
    .local v0, extra:I
    if-eq v0, v3, :cond_2d

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5b

    :cond_2d
    :goto_2d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 331
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

    .line 332
    iget-boolean v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_20

    .line 333
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsPlugged:Z

    .line 334
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasksInternal()V

    goto :goto_20

    .line 328
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

    .line 282
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    const/4 v1, 0x0

    .line 286
    .local v1, environmentChanged:Z
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 289
    .local v5, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 290
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

    .line 291
    if-eqz v3, :cond_7c

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/picasasync/PicasaSyncManager;->isWifiNetwork(I)Z

    move-result v8

    if-eqz v8, :cond_7c

    move v2, v6

    .line 292
    .local v2, hasWifiConnection:Z
    :goto_3c
    iget-boolean v8, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    if-eq v2, v8, :cond_43

    .line 293
    const/4 v1, 0x1

    .line 294
    iput-boolean v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mHasWifiConnectivity:Z

    .line 297
    :cond_43
    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v8

    if-eqz v8, :cond_7e

    move v4, v6

    .line 298
    .local v4, isRoaming:Z
    :goto_4c
    iget-boolean v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    if-eq v4, v6, :cond_53

    .line 299
    const/4 v1, 0x1

    .line 300
    iput-boolean v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mIsRoaming:Z

    .line 304
    :cond_53
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 305
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

    .line 306
    iget-boolean v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    if-eq v6, v0, :cond_76

    .line 307
    const/4 v1, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mBackgroundData:Z

    .line 311
    :cond_76
    if-eqz v1, :cond_7b

    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasksInternal()V

    .line 312
    :cond_7b
    return-void

    .end local v0           #backgroundData:Z
    .end local v2           #hasWifiConnection:Z
    .end local v4           #isRoaming:Z
    :cond_7c
    move v2, v7

    .line 291
    goto :goto_3c

    .restart local v2       #hasWifiConnection:Z
    :cond_7e
    move v4, v7

    .line 297
    goto :goto_4c
.end method

.method private updateTasksInternal()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 469
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 470
    .local v4, session:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;
    :goto_3
    if-nez v4, :cond_5b

    .line 471
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/android/picasasync/PicasaSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;

    move-result-object v5

    .line 473
    .local v5, task:Lcom/google/android/picasasync/SyncTask;
    if-nez v5, :cond_13

    .line 507
    .end local v5           #task:Lcom/google/android/picasasync/SyncTask;
    :cond_12
    :goto_12
    return-void

    .line 475
    .restart local v5       #task:Lcom/google/android/picasasync/SyncTask;
    :cond_13
    new-instance v0, Landroid/accounts/Account;

    iget-object v6, v5, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-direct {v0, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->isValidAccount(Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 479
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 480
    .local v2, extras:Landroid/os/Bundle;
    const-string v6, "picasa-sync-manager-requested"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 481
    const-string v6, "ignore_settings"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 482
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

    .line 483
    iget-object v6, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_12

    .line 486
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_53
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/picasasync/PicasaSyncManager;->onAccountInvalid(Ljava/lang/String;)V

    .line 488
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 489
    goto :goto_3

    .line 491
    .end local v0           #account:Landroid/accounts/Account;
    .end local v5           #task:Lcom/google/android/picasasync/SyncTask;
    :cond_5b
    iget-object v1, v4, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/picasasync/SyncTask;

    .line 492
    .local v1, current:Lcom/google/android/picasasync/SyncTask;
    if-eqz v1, :cond_12

    .line 495
    invoke-direct {p0, v1}, Lcom/google/android/picasasync/PicasaSyncManager;->acceptSyncTask(Lcom/google/android/picasasync/SyncTask;)Z

    move-result v6

    if-nez v6, :cond_87

    .line 496
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

    .line 497
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncTask;->cancelSync()V

    goto :goto_12

    .line 502
    :cond_87
    iget-object v6, v4, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->account:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/picasasync/PicasaSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/picasasync/SyncTask;

    move-result-object v3

    .line 503
    .local v3, next:Lcom/google/android/picasasync/SyncTask;
    if-eqz v3, :cond_12

    iget v6, v3, Lcom/google/android/picasasync/SyncTask;->mPriority:I

    iget v7, v1, Lcom/google/android/picasasync/SyncTask;->mPriority:I

    if-ge v6, v7, :cond_12

    .line 504
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

    .line 505
    invoke-virtual {v1}, Lcom/google/android/picasasync/SyncTask;->cancelSync()V

    goto/16 :goto_12
.end method

.method private verifySyncAccountSetting()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 196
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/picasasync/PicasaSyncManager;->PROJECTION_ENABLE_ACCOUNT:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 198
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_21

    .line 199
    const-string v0, "PicasaSyncManager"

    const-string v1, "failed to query system settings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_20
    return-void

    .line 203
    :cond_21
    :try_start_21
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_32

    .line 204
    const-string v0, "PicasaSyncManager"

    const-string v1, "failed to query system settings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_82

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_20

    .line 207
    :cond_32
    const/4 v0, 0x0

    :try_start_33
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_80

    .line 208
    .local v6, autoUploadEnabled:Z
    :goto_39
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 209
    .local v8, syncAccount:Ljava/lang/String;
    if-eqz v6, :cond_7c

    if-eqz v8, :cond_7c

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, v8, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->isValidAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 211
    const-string v0, "PicasaSyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove sync account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_33 .. :try_end_7c} :catchall_82

    .line 215
    :cond_7c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_20

    .end local v6           #autoUploadEnabled:Z
    .end local v8           #syncAccount:Ljava/lang/String;
    :cond_80
    move v6, v9

    .line 207
    goto :goto_39

    .line 215
    :catchall_82
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public createSession(Ljava/lang/String;Landroid/content/SyncResult;)Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;
    .registers 4
    .parameter "account"
    .parameter "result"

    .prologue
    .line 535
    new-instance v0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-direct {v0, p1, p2}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;-><init>(Ljava/lang/String;Landroid/content/SyncResult;)V

    return-object v0
.end method

.method public declared-synchronized onAccountInitialized(Ljava/lang/String;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 411
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v2, p1}, Lcom/google/android/picasasync/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;

    move-result-object v1

    .line 412
    .local v1, user:Lcom/google/android/picasasync/UserEntry;
    if-nez v1, :cond_19

    .line 413
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 414
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/google/android/picasasync/UserEntry;

    .end local v1           #user:Lcom/google/android/picasasync/UserEntry;
    invoke-direct {v1, p1}, Lcom/google/android/picasasync/UserEntry;-><init>(Ljava/lang/String;)V

    .line 415
    .restart local v1       #user:Lcom/google/android/picasasync/UserEntry;
    sget-object v2, Lcom/google/android/picasasync/UserEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2, v0, v1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 417
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_19
    monitor-exit p0

    return-void

    .line 411
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
    .line 237
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    if-eqz p1, :cond_11

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 239
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    return-void

    .line 237
    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7
.end method

.method public onEnvironmentChanged()V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    return-void
.end method

.method public onSyncStart()V
    .registers 4

    .prologue
    .line 431
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/picasasync/SyncTaskProvider;

    .local v1, provider:Lcom/google/android/picasasync/SyncTaskProvider;
    invoke-interface {v1}, Lcom/google/android/picasasync/SyncTaskProvider;->onSyncStart()V

    goto :goto_6

    .line 432
    .end local v1           #provider:Lcom/google/android/picasasync/SyncTaskProvider;
    :cond_16
    return-void
.end method

.method public performSync(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V
    .registers 5
    .parameter "session"

    .prologue
    const/4 v2, 0x0

    .line 568
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 570
    :try_start_9
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncManager;->performSyncInternal(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 575
    monitor-enter p1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_20

    .line 576
    :try_start_10
    iget-boolean v0, p1, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->mSyncCancelled:Z

    if-nez v0, :cond_19

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 577
    :cond_19
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1d

    .line 579
    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 581
    return-void

    .line 577
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

    .line 579
    :catchall_20
    move-exception v0

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mCurrentSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    throw v0
.end method

.method public requestAccountSync()V
    .registers 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 596
    return-void
.end method

.method public requestMetadataSync(Z)V
    .registers 4
    .parameter "manual"

    .prologue
    .line 591
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    sget-object v0, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    :goto_5
    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 592
    return-void

    .line 591
    :cond_9
    sget-object v0, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    goto :goto_5
.end method

.method public requestPrefetchSync()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 584
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PhotoPrefetch;->onRequestSync(Landroid/content/Context;)V

    .line 585
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_FULL_IMAGE:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 586
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_SCREEN_NAIL:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 587
    sget-object v0, Lcom/google/android/picasasync/SyncState;->PREFETCH_ALBUM_COVER:Lcom/google/android/picasasync/SyncState;

    invoke-direct {p0, v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->requestSync(Ljava/lang/String;Lcom/google/android/picasasync/SyncState;)V

    .line 588
    return-void
.end method

.method public resetSyncStates()V
    .registers 5

    .prologue
    .line 420
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    monitor-enter v3

    .line 421
    :try_start_3
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mInvalidAccounts:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 422
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    .line 423
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/picasasync/SyncTaskProvider;

    .line 424
    .local v1, provider:Lcom/google/android/picasasync/SyncTaskProvider;
    invoke-interface {v1}, Lcom/google/android/picasasync/SyncTaskProvider;->resetSyncStates()V

    goto :goto_f

    .line 422
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #provider:Lcom/google/android/picasasync/SyncTaskProvider;
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v2

    .line 426
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_22
    return-void
.end method

.method public updateTasks(J)V
    .registers 5
    .parameter "delay"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 230
    return-void
.end method
