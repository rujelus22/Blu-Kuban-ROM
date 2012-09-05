.class Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;
.super Landroid/os/AsyncTask;
.source "DownloadRestarterRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadRestarterRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadRestarter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/finsky/download/DownloadManager;",
        "Ljava/lang/Void;",
        "Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;",
        ">;"
    }
.end annotation


# instance fields
.field private final mToRestore:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/LocalAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final mUriUrlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/download/DownloadRestarterRule;Ljava/util/Collection;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/LocalAsset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, toRestore:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/LocalAsset;>;"
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 188
    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->mToRestore:Ljava/util/Collection;

    .line 191
    #getter for: Lcom/google/android/finsky/download/DownloadRestarterRule;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {p1}, Lcom/google/android/finsky/download/DownloadRestarterRule;->access$300(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/download/DownloadQueue;->getUriUrlMap()Lcom/google/android/finsky/download/DownloadUriUrlMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/download/DownloadUriUrlMap;->getGenericMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->mUriUrlMap:Ljava/util/Map;

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/download/DownloadRestarterRule;Ljava/util/Collection;Lcom/google/android/finsky/download/DownloadRestarterRule$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;-><init>(Lcom/google/android/finsky/download/DownloadRestarterRule;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->mUriUrlMap:Ljava/util/Map;

    return-object v0
.end method

.method private downloadedSuccessfully(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;)Z
    .registers 3
    .parameter "record"

    .prologue
    .line 262
    if-eqz p1, :cond_9

    .line 263
    iget v0, p1, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->status:I

    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusSuccess(I)Z

    move-result v0

    .line 265
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private getDownloadRecord(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Landroid/net/Uri;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
    .registers 4
    .parameter "records"
    .parameter "contentUri"

    .prologue
    .line 255
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 256
    :cond_c
    const/4 v0, 0x0

    .line 258
    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->getRecord(Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
    invoke-static {p1, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->access$700(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;

    move-result-object v0

    goto :goto_d
.end method

.method private getDownloadRecord(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
    .registers 4
    .parameter "records"
    .parameter "obb"

    .prologue
    .line 251
    invoke-interface {p2}, Lcom/google/android/finsky/download/obb/Obb;->getContentUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->getDownloadRecord(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Landroid/net/Uri;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;

    move-result-object v0

    return-object v0
.end method

.method private handleAssetResuming(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/local/LocalAsset;)Z
    .registers 16
    .parameter "records"
    .parameter "asset"

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 421
    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 422
    .local v3, contentUri:Landroid/net/Uri;
    invoke-direct {p0, p1, v3}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->getDownloadRecord(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Landroid/net/Uri;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;

    move-result-object v12

    .line 424
    .local v12, record:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
    invoke-direct {p0, v12}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->isDownloading(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 425
    iget-object v1, v12, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->sourceUrl:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->title:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->queueResumedDownload(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/Download;

    .line 474
    :goto_1a
    return v9

    .line 427
    :cond_1b
    invoke-direct {p0, v12}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->downloadedSuccessfully(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 428
    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/local/AssetState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 429
    const-string v1, "Inconsistent state while installing recovered download. Resetting."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {p2, v0}, Lcom/google/android/finsky/local/LocalAsset;->resetToState(Lcom/google/android/finsky/local/AssetState;)V

    .line 438
    :goto_39
    iget-object v0, v12, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->contentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v12, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->title:Ljava/lang/String;

    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->getSize()J

    move-result-wide v6

    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->getSignature()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$1;

    invoke-direct {v10, p0, p2}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$1;-><init>(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;Lcom/google/android/finsky/local/LocalAsset;)V

    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->isInstalled()Z

    move-result v11

    invoke-static/range {v4 .. v11}, Lcom/google/android/finsky/utils/PackageManagerHelper;->installPackage(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;Z)V

    .line 462
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    #getter for: Lcom/google/android/finsky/download/DownloadRestarterRule;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/finsky/download/DownloadRestarterRule;->access$1000(Lcom/google/android/finsky/download/DownloadRestarterRule;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$2;

    invoke-direct {v1, p0, v12}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$2;-><init>(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 433
    :cond_6d
    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->setStateInstalling()V

    goto :goto_39

    .line 470
    :cond_71
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    #getter for: Lcom/google/android/finsky/download/DownloadRestarterRule;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    invoke-static {v1}, Lcom/google/android/finsky/download/DownloadRestarterRule;->access$1100(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/utils/PackageInfoCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 471
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {p2, v0}, Lcom/google/android/finsky/local/LocalAsset;->resetToState(Lcom/google/android/finsky/local/AssetState;)V

    goto :goto_1a

    :cond_87
    move v9, v0

    .line 474
    goto :goto_1a
.end method

.method private handleObbResuming(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/obb/Obb;)Z
    .registers 11
    .parameter "record"
    .parameter "asset"
    .parameter "obb"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 356
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->isDownloading(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 357
    iget-object v1, p1, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->sourceUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->contentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->queueResumedDownload(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/Download;

    .line 360
    invoke-direct {p0, p2}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->restartAssetDownload(Lcom/google/android/finsky/local/LocalAsset;)V

    move v0, v6

    .line 379
    :cond_1c
    :goto_1c
    return v0

    .line 362
    :cond_1d
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->downloadedSuccessfully(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 363
    invoke-interface {p3}, Lcom/google/android/finsky/download/obb/Obb;->finalizeTempFile()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 364
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.installerError"

    invoke-interface {p3}, Lcom/google/android/finsky/download/obb/Obb;->getPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obb-rename"

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "Unable to rename obb download to completed file name."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-interface {p3}, Lcom/google/android/finsky/download/obb/Obb;->delete()V

    .line 368
    sget-object v0, Lcom/google/android/finsky/download/obb/ObbState;->NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-interface {p3, v0}, Lcom/google/android/finsky/download/obb/Obb;->setState(Lcom/google/android/finsky/download/obb/ObbState;)V

    .line 369
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    #getter for: Lcom/google/android/finsky/download/DownloadRestarterRule;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadRestarterRule;->access$300(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/download/DownloadQueue;->getNotificationHelper()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->title:Ljava/lang/String;

    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const v4, 0x7f0700a1

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/utils/Notifier;->showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v6

    .line 373
    goto :goto_1c

    .line 376
    :cond_6c
    invoke-direct {p0, p2}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->restartAssetDownload(Lcom/google/android/finsky/local/LocalAsset;)V

    move v0, v6

    .line 377
    goto :goto_1c
.end method

.method private handleObbResumingOrRestart(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/local/LocalAsset;)Z
    .registers 12
    .parameter "records"
    .parameter "asset"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 280
    invoke-interface {p2, v6}, Lcom/google/android/finsky/local/LocalAsset;->getObb(Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v0

    .line 281
    .local v0, mainObb:Lcom/google/android/finsky/download/obb/Obb;
    invoke-interface {p2, v7}, Lcom/google/android/finsky/local/LocalAsset;->getObb(Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v3

    .line 282
    .local v3, patchObb:Lcom/google/android/finsky/download/obb/Obb;
    const/4 v1, 0x0

    .line 283
    .local v1, mainRecord:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
    const/4 v4, 0x0

    .line 284
    .local v4, patchRecord:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v2

    .line 285
    .local v2, mainState:Lcom/google/android/finsky/download/obb/ObbState;
    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v5

    .line 288
    .local v5, patchState:Lcom/google/android/finsky/download/obb/ObbState;
    sget-object v8, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-ne v2, v8, :cond_24

    sget-object v8, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-ne v5, v8, :cond_24

    .line 289
    const-string v7, "No OBB\'s associated to this asset."

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    :cond_23
    :goto_23
    return v6

    .line 296
    :cond_24
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v8

    if-nez v8, :cond_32

    .line 298
    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->setStateDownloadFailed()V

    .line 300
    invoke-direct {p0, p1, p2, v0, v3}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->removeDownloadRecords(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V

    move v6, v7

    .line 304
    goto :goto_23

    .line 308
    :cond_32
    sget-object v8, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-eq v5, v8, :cond_68

    .line 310
    invoke-direct {p0, p1, v3}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->getDownloadRecord(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;

    move-result-object v4

    .line 312
    invoke-direct {p0, v4, p2, v3}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->handleObbResuming(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/obb/Obb;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 315
    const-string v8, "Handling downloading / finished patch obb followed by lone asset download."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 317
    goto :goto_23

    .line 322
    :cond_49
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->getDownloadRecord(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;

    move-result-object v1

    .line 323
    invoke-direct {p0, v1, p2, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->handleObbResuming(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/obb/Obb;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 324
    const-string v8, "Handling downloading / finished main obb, patch obb, and lone asset download."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 326
    goto :goto_23

    .line 328
    :cond_5c
    const-string v8, "Restarting full asset download with any associated obb\'s.(patch obb exists, and a main obb may exist)."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-direct {p0, p2}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->restartAssetDownload(Lcom/google/android/finsky/local/LocalAsset;)V

    move v6, v7

    .line 331
    goto :goto_23

    .line 336
    :cond_68
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->getDownloadRecord(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;

    move-result-object v1

    .line 337
    invoke-direct {p0, v1, p2, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->handleObbResuming(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/obb/Obb;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 338
    const-string v8, "Handling downloading / finished main obb followed by stripped asset download."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 340
    goto :goto_23
.end method

.method private handleUnexpectedCursor()V
    .registers 5

    .prologue
    .line 234
    const-string v2, "Can\'t resume repeat downloads since system DownloadManager failed to give us an appropriate Cursor. Market will reset interrupted downloads and risk a duplicate."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->mToRestore:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/LocalAsset;

    .line 239
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->restartAssetDownload(Lcom/google/android/finsky/local/LocalAsset;)V

    goto :goto_e

    .line 241
    .end local v0           #asset:Lcom/google/android/finsky/local/LocalAsset;
    :cond_1e
    return-void
.end method

.method private isDownloading(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;)Z
    .registers 3
    .parameter "record"

    .prologue
    .line 244
    if-eqz p1, :cond_9

    .line 245
    iget v0, p1, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->status:I

    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isStatusInformational(I)Z

    move-result v0

    .line 247
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private queueResumedDownload(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/download/Download;
    .registers 20
    .parameter "sourceUrl"
    .parameter "title"
    .parameter "contentUri"
    .parameter "asset"
    .parameter "obb"

    .prologue
    .line 385
    if-eqz p5, :cond_35

    const/4 v4, 0x0

    .line 399
    .local v4, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    :goto_3
    if-eqz p5, :cond_6e

    invoke-interface/range {p5 .. p5}, Lcom/google/android/finsky/download/obb/Obb;->getTempFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 401
    .local v7, fileUri:Landroid/net/Uri;
    :goto_d
    new-instance v1, Lcom/google/android/finsky/download/DownloadImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p4 .. p4}, Lcom/google/android/finsky/local/LocalAsset;->getSize()J

    move-result-wide v8

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLcom/google/android/finsky/download/obb/Obb;)V

    .line 410
    .local v1, download:Lcom/google/android/finsky/download/InternalDownload;
    move-object/from16 v0, p3

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/InternalDownload;->setContentUri(Landroid/net/Uri;)V

    .line 411
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    #getter for: Lcom/google/android/finsky/download/DownloadRestarterRule;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v2}, Lcom/google/android/finsky/download/DownloadRestarterRule;->access$300(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/finsky/download/DownloadQueue;->addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 412
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    #getter for: Lcom/google/android/finsky/download/DownloadRestarterRule;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {v2}, Lcom/google/android/finsky/download/DownloadRestarterRule;->access$800(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/receivers/Installer;->addRecoveredDownload(Lcom/google/android/finsky/download/Download;)V

    .line 414
    return-object v1

    .line 385
    .end local v1           #download:Lcom/google/android/finsky/download/InternalDownload;
    .end local v4           #properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    .end local v7           #fileUri:Landroid/net/Uri;
    :cond_35
    new-instance v1, Lcom/google/android/finsky/download/Download$PackageProperties;

    invoke-interface/range {p4 .. p4}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Lcom/google/android/finsky/local/LocalAsset;->getAutoUpdateState()Lcom/google/android/finsky/local/AutoUpdateState;

    move-result-object v3

    invoke-interface/range {p4 .. p4}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p4 .. p4}, Lcom/google/android/finsky/local/LocalAsset;->getVersionCode()I

    move-result v5

    invoke-interface/range {p4 .. p4}, Lcom/google/android/finsky/local/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Lcom/google/android/finsky/local/LocalAsset;->isForwardLocked()Z

    move-result v7

    invoke-interface/range {p4 .. p4}, Lcom/google/android/finsky/local/LocalAsset;->getSize()J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/android/finsky/local/LocalAsset;->getSignature()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {p4 .. p4}, Lcom/google/android/finsky/local/LocalAsset;->getRefundPeriodEndTime()Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lcom/google/android/finsky/local/LocalAsset;->getObb(Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Lcom/google/android/finsky/local/LocalAsset;->getObb(Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v13

    invoke-direct/range {v1 .. v13}, Lcom/google/android/finsky/download/Download$PackageProperties;-><init>(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;ZJLjava/lang/String;Ljava/lang/Long;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V

    move-object v4, v1

    goto :goto_3

    .line 399
    .restart local v4       #properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    :cond_6e
    const/4 v7, 0x0

    goto :goto_d
.end method

.method private removeDownloadRecords(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V
    .registers 14
    .parameter "records"
    .parameter "asset"
    .parameter "mainObb"
    .parameter "patchObb"

    .prologue
    .line 491
    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 492
    .local v0, apkUri:Landroid/net/Uri;
    if-eqz v0, :cond_18

    .line 493
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, apkUriString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 495
    #calls: Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->removeRecord(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->access$1200(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Ljava/lang/String;)V

    .line 496
    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->mUriUrlMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .end local v1           #apkUriString:Ljava/lang/String;
    :cond_18
    const/4 v2, 0x0

    .line 501
    .local v2, mainObbUri:Landroid/net/Uri;
    if-eqz p3, :cond_31

    .line 502
    invoke-interface {p3}, Lcom/google/android/finsky/download/obb/Obb;->getContentUri()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, mainObbUriString:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 504
    #calls: Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->removeRecord(Ljava/lang/String;)V
    invoke-static {p1, v3}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->access$1200(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Ljava/lang/String;)V

    .line 505
    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->mUriUrlMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 510
    .end local v3           #mainObbUriString:Ljava/lang/String;
    :cond_31
    const/4 v4, 0x0

    .line 511
    .local v4, patchObbUri:Landroid/net/Uri;
    if-eqz p4, :cond_4a

    .line 512
    invoke-interface {p4}, Lcom/google/android/finsky/download/obb/Obb;->getContentUri()Ljava/lang/String;

    move-result-object v5

    .line 513
    .local v5, patchObbUriString:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 514
    #calls: Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->removeRecord(Ljava/lang/String;)V
    invoke-static {p1, v5}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->access$1200(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Ljava/lang/String;)V

    .line 515
    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->mUriUrlMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 520
    .end local v5           #patchObbUriString:Ljava/lang/String;
    :cond_4a
    new-instance v6, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$3;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$3;-><init>(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;)V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/net/Uri;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 535
    return-void
.end method

.method private restartAssetDownload(Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 6
    .parameter "asset"

    .prologue
    .line 478
    const-string v0, "Restarting asset download : %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {p1, v0}, Lcom/google/android/finsky/local/LocalAsset;->resetToState(Lcom/google/android/finsky/local/AssetState;)V

    .line 480
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    #getter for: Lcom/google/android/finsky/download/DownloadRestarterRule;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadRestarterRule;->access$800(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/finsky/receivers/Installer;->fetchAsset(Lcom/google/android/finsky/local/LocalAsset;Ljava/lang/String;)V

    .line 481
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/finsky/download/DownloadManager;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;
    .registers 6
    .parameter "downloadManager"

    .prologue
    const/4 v2, 0x0

    .line 196
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-interface {v3}, Lcom/google/android/finsky/download/DownloadManager;->queryAllDownloads()Landroid/database/Cursor;

    move-result-object v0

    .line 197
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_c

    move-object v1, v2

    .line 205
    :goto_b
    return-object v1

    .line 201
    :cond_c
    new-instance v1, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;

    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    invoke-direct {v1, v3, v2}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;-><init>(Lcom/google/android/finsky/download/DownloadRestarterRule;Lcom/google/android/finsky/download/DownloadRestarterRule$1;)V

    .line 203
    .local v1, records:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->mUriUrlMap:Ljava/util/Map;

    #calls: Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->initializeAndPrune(Landroid/database/Cursor;Ljava/util/Map;)Z
    invoke-static {v1, v0, v2}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->access$500(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Landroid/database/Cursor;Ljava/util/Map;)Z

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 180
    check-cast p1, [Lcom/google/android/finsky/download/DownloadManager;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->doInBackground([Lcom/google/android/finsky/download/DownloadManager;)Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;)V
    .registers 9
    .parameter "records"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 210
    if-eqz p1, :cond_a

    #calls: Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->isInitialized()Z
    invoke-static {p1}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;->access$600(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 211
    :cond_a
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->handleUnexpectedCursor()V

    .line 231
    :cond_d
    return-void

    .line 215
    :cond_e
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->mToRestore:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/LocalAsset;

    .line 216
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    const-string v2, "Recovering restore of %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->handleObbResumingOrRestart(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/local/LocalAsset;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 219
    const-string v2, "Handled obb resuming / restart for asset : %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    .line 224
    :cond_41
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->handleAssetResuming(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/local/LocalAsset;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 225
    const-string v2, "Resumed asset download : %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    .line 228
    :cond_55
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->restartAssetDownload(Lcom/google/android/finsky/local/LocalAsset;)V

    goto :goto_14
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 180
    check-cast p1, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->onPostExecute(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;)V

    return-void
.end method
