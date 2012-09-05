.class public Lcom/google/android/finsky/receivers/Installer;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueueListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;,
        Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;
    }
.end annotation


# instance fields
.field private final mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAssetStore:Lcom/google/android/finsky/local/AssetStore;

.field private mMaxBytesOverMobile:J

.field private mMaxBytesOverMobileRecommended:J

.field private final mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackagesWithNotifications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingAssetPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/local/AssetStore;Landroid/content/pm/PackageManager;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/download/DownloadManager;Lcom/google/android/finsky/utils/PackageInfoCache;Landroid/content/ContentResolver;)V
    .registers 8
    .parameter "localAssetStore"
    .parameter "packageManager"
    .parameter "downloadQueue"
    .parameter "downloadManager"
    .parameter "packageInfoCache"
    .parameter "resolver"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/android/finsky/receivers/Installer;->mLocalAssetStore:Lcom/google/android/finsky/local/AssetStore;

    .line 93
    iput-object p2, p0, Lcom/google/android/finsky/receivers/Installer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 94
    iput-object p3, p0, Lcom/google/android/finsky/receivers/Installer;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    .line 95
    iput-object p4, p0, Lcom/google/android/finsky/receivers/Installer;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    .line 96
    iput-object p5, p0, Lcom/google/android/finsky/receivers/Installer;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    .line 97
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/Installer;->mPendingAssetPackageNames:Ljava/util/Set;

    .line 98
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/Installer;->mPackagesWithNotifications:Ljava/util/Set;

    .line 99
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/receivers/Installer;->mListeners:Ljava/util/List;

    .line 100
    invoke-direct {p0, p6}, Lcom/google/android/finsky/receivers/Installer;->setMobileDownloadThresholds(Landroid/content/ContentResolver;)V

    .line 101
    invoke-interface {p3, p0}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/Installer;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer;->mPendingAssetPackageNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/receivers/Installer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/Installer;->notifyListeners()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/receivers/Installer;)Lcom/google/android/finsky/download/DownloadManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    return-object v0
.end method

.method public static cleanObbDirectory(Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;Ljava/lang/String;)V
    .registers 14
    .parameter "mainObb"
    .parameter "patchObb"
    .parameter "packageName"

    .prologue
    .line 677
    const/4 v3, 0x0

    .line 678
    .local v3, mainObbFile:Ljava/io/File;
    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v8

    sget-object v9, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOADED:Lcom/google/android/finsky/download/obb/ObbState;

    if-ne v8, v9, :cond_f

    .line 679
    invoke-interface {p0}, Lcom/google/android/finsky/download/obb/Obb;->getFile()Ljava/io/File;

    move-result-object v3

    .line 681
    :cond_f
    const/4 v5, 0x0

    .line 682
    .local v5, patchObbFile:Ljava/io/File;
    if-eqz p1, :cond_1e

    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v8

    sget-object v9, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOADED:Lcom/google/android/finsky/download/obb/ObbState;

    if-ne v8, v9, :cond_1e

    .line 683
    invoke-interface {p1}, Lcom/google/android/finsky/download/obb/Obb;->getFile()Ljava/io/File;

    move-result-object v5

    .line 685
    :cond_1e
    invoke-static {p2}, Lcom/google/android/finsky/download/obb/ObbFactory;->getParentDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 686
    .local v4, obbDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 687
    .local v7, targets:[Ljava/io/File;
    if-nez v7, :cond_29

    .line 698
    :cond_28
    return-void

    .line 688
    :cond_29
    move-object v0, v7

    .local v0, arr$:[Ljava/io/File;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2c
    if-ge v1, v2, :cond_28

    aget-object v6, v0, v1

    .line 689
    .local v6, target:Ljava/io/File;
    if-eqz v3, :cond_3b

    invoke-virtual {v3, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 688
    :cond_38
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 692
    :cond_3b
    if-eqz v5, :cond_43

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_38

    .line 695
    :cond_43
    const-string v8, "OBB cleanup %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_38
.end method

.method private newSystemAppAvailable(Lcom/google/android/vending/model/Asset;)Z
    .registers 7
    .parameter "asset"

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/receivers/Installer;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->isSystemPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/google/android/finsky/receivers/Installer;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/google/android/finsky/receivers/Installer;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getVersionCode()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_25

    const/4 v1, 0x1

    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method private notifyListeners()V
    .registers 7

    .prologue
    .line 448
    iget-object v3, p0, Lcom/google/android/finsky/receivers/Installer;->mListeners:Ljava/util/List;

    .line 449
    .local v3, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;

    .line 451
    .local v2, listener:Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;
    :try_start_12
    invoke-interface {v2}, Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;->onUpdate()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 452
    :catch_16
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Exception caught while iterating through install listeners"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 456
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #listener:Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;
    :cond_20
    return-void
.end method

.method private onCancelObb(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 5
    .parameter "download"

    .prologue
    .line 609
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v1

    .line 610
    .local v1, obb:Lcom/google/android/finsky/download/obb/Obb;
    sget-object v2, Lcom/google/android/finsky/download/obb/ObbState;->NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/download/obb/Obb;->setState(Lcom/google/android/finsky/download/obb/ObbState;)V

    .line 611
    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->delete()V

    .line 613
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getNext()Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 614
    .local v0, next:Lcom/google/android/finsky/download/InternalDownload;
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 615
    iget-object v2, p0, Lcom/google/android/finsky/receivers/Installer;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v2, v0}, Lcom/google/android/finsky/download/DownloadQueue;->cancel(Lcom/google/android/finsky/download/Download;)V

    .line 617
    :cond_1d
    return-void
.end method

.method private onCompleteObb(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 8
    .parameter "download"

    .prologue
    .line 624
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v0

    .line 625
    .local v0, obb:Lcom/google/android/finsky/download/obb/Obb;
    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->finalizeTempFile()Z

    move-result v1

    if-nez v1, :cond_46

    .line 626
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.installerError"

    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->getPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obb-rename"

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v1, "Could not rename from obb temp file to real file name"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    iget-object v1, p0, Lcom/google/android/finsky/receivers/Installer;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v1}, Lcom/google/android/finsky/download/DownloadQueue;->getNotificationHelper()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    const v5, 0x7f0700a1

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/utils/Notifier;->showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 633
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/Installer;->onCancelObb(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 637
    :goto_45
    return-void

    .line 635
    :cond_46
    sget-object v1, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOADED:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/obb/Obb;->setState(Lcom/google/android/finsky/download/obb/ObbState;)V

    goto :goto_45
.end method

.method private onErrorObb(Lcom/google/android/finsky/download/InternalDownload;I)V
    .registers 7
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    .line 645
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v1

    .line 646
    .local v1, obb:Lcom/google/android/finsky/download/obb/Obb;
    sget-object v2, Lcom/google/android/finsky/download/obb/ObbState;->NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/download/obb/Obb;->setState(Lcom/google/android/finsky/download/obb/ObbState;)V

    .line 647
    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->delete()V

    .line 649
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getNext()Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 650
    .local v0, next:Lcom/google/android/finsky/download/InternalDownload;
    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 651
    iget-object v2, p0, Lcom/google/android/finsky/receivers/Installer;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    sget-object v3, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-interface {v2, v0, v3}, Lcom/google/android/finsky/download/DownloadQueue;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    .line 653
    :cond_1f
    return-void
.end method

.method private onStartObb(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 4
    .parameter "download"

    .prologue
    .line 660
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v0

    .line 661
    .local v0, obb:Lcom/google/android/finsky/download/obb/Obb;
    sget-object v1, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOADING:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/obb/Obb;->setState(Lcom/google/android/finsky/download/obb/ObbState;)V

    .line 662
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/obb/Obb;->setContentUri(Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method public static packagePropertiesFromResponseAsset(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;Ljava/lang/String;Z)Lcom/google/android/finsky/download/Download$PackageProperties;
    .registers 28
    .parameter "response"
    .parameter "account"
    .parameter "withRefundTimeout"

    .prologue
    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getInstallAsset()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;

    move-result-object v21

    .line 766
    .local v21, installAsset:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetPackage()Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v17

    .line 770
    .local v17, mainObb:Lcom/google/android/finsky/download/obb/Obb;
    const/4 v0, 0x1

    invoke-static {v0, v1}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v18

    .line 771
    .local v18, patchObb:Lcom/google/android/finsky/download/obb/Obb;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;->getAdditionalFileList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;

    .line 772
    .local v19, file:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getSize()J

    move-result-wide v4

    .line 773
    .local v4, size:J
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getVersionCode()I

    move-result v2

    .line 774
    .local v2, versionCode:I
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    .line 775
    .local v3, url:Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-lez v0, :cond_3a

    if-nez v3, :cond_57

    .line 776
    :cond_3a
    const-string v0, "Bad obb file from server! [%s] [%d] [%d] [%s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v3, v7, v8

    invoke-static {v0, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    .line 780
    :cond_57
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;->getFileType()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_72

    const/4 v0, 0x1

    :goto_5f
    sget-object v6, Lcom/google/android/finsky/download/obb/ObbState;->NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/download/obb/ObbFactory;->create(ZLjava/lang/String;ILjava/lang/String;JLcom/google/android/finsky/download/obb/ObbState;Ljava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v22

    .line 788
    .local v22, tempObb:Lcom/google/android/finsky/download/obb/Obb;
    invoke-interface/range {v22 .. v22}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    .line 789
    invoke-interface/range {v22 .. v22}, Lcom/google/android/finsky/download/obb/Obb;->isPatch()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 790
    move-object/from16 v18, v22

    goto :goto_1a

    .line 780
    .end local v22           #tempObb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_72
    const/4 v0, 0x0

    goto :goto_5f

    .line 792
    .restart local v22       #tempObb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_74
    move-object/from16 v17, v22

    goto :goto_1a

    .line 796
    .end local v2           #versionCode:I
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #size:J
    .end local v19           #file:Lcom/google/android/vending/remoting/protos/VendingProtos$FileMetadataProto;
    .end local v22           #tempObb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_77
    new-instance v6, Lcom/google/android/finsky/download/Download$PackageProperties;

    sget-object v8, Lcom/google/android/finsky/local/AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getVersionCode()I

    move-result v10

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getForwardLocked()Z

    move-result v12

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSize()J

    move-result-wide v13

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getAssetSignature()Ljava/lang/String;

    move-result-object v15

    if-eqz p2, :cond_a0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto$InstallAsset;->getRefundTimeoutMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    :goto_99
    move-object v7, v1

    move-object/from16 v9, p1

    invoke-direct/range {v6 .. v18}, Lcom/google/android/finsky/download/Download$PackageProperties;-><init>(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;ZJLjava/lang/String;Ljava/lang/Long;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V

    .line 808
    .local v6, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    return-object v6

    .line 796
    .end local v6           #properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    :cond_a0
    const/16 v16, 0x0

    goto :goto_99
.end method

.method private setMobileDownloadThresholds(Landroid/content/ContentResolver;)V
    .registers 9
    .parameter "resolver"

    .prologue
    const-wide/32 v5, 0x1900000

    const-wide/16 v3, 0x0

    .line 134
    iput-wide v5, p0, Lcom/google/android/finsky/receivers/Installer;->mMaxBytesOverMobile:J

    .line 135
    iput-wide v5, p0, Lcom/google/android/finsky/receivers/Installer;->mMaxBytesOverMobileRecommended:J

    .line 139
    :try_start_9
    const-string v2, "download_manager_max_bytes_over_mobile"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 141
    .local v0, newLimit:J
    cmp-long v2, v0, v3

    if-lez v2, :cond_15

    .line 142
    iput-wide v0, p0, Lcom/google/android/finsky/receivers/Installer;->mMaxBytesOverMobile:J
    :try_end_15
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_15} :catch_2e

    .line 147
    .end local v0           #newLimit:J
    :cond_15
    :goto_15
    :try_start_15
    const-string v2, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 149
    .restart local v0       #newLimit:J
    cmp-long v2, v0, v3

    if-lez v2, :cond_21

    .line 150
    iput-wide v0, p0, Lcom/google/android/finsky/receivers/Installer;->mMaxBytesOverMobileRecommended:J
    :try_end_21
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_15 .. :try_end_21} :catch_2c

    .line 155
    .end local v0           #newLimit:J
    :cond_21
    :goto_21
    iget-wide v2, p0, Lcom/google/android/finsky/receivers/Installer;->mMaxBytesOverMobileRecommended:J

    iget-wide v4, p0, Lcom/google/android/finsky/receivers/Installer;->mMaxBytesOverMobile:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/finsky/receivers/Installer;->mMaxBytesOverMobileRecommended:J

    .line 157
    return-void

    .line 152
    :catch_2c
    move-exception v2

    goto :goto_21

    .line 144
    :catch_2e
    move-exception v2

    goto :goto_15
.end method


# virtual methods
.method public addListener(Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    return-void
.end method

.method public addRecoveredDownload(Lcom/google/android/finsky/download/Download;)V
    .registers 5
    .parameter "download"

    .prologue
    .line 464
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v0

    .line 465
    .local v0, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-eqz v0, :cond_d

    .line 466
    iget-object v1, p0, Lcom/google/android/finsky/receivers/Installer;->mPackagesWithNotifications:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_d
    return-void
.end method

.method public attemptInstallAssets(Ljava/util/List;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, assetsToInstall:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/vending/model/Asset;

    .line 252
    .local v10, assetToInstall:Lcom/google/android/vending/model/Asset;
    invoke-virtual {v10}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, packageName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer;->mLocalAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v12

    .line 255
    .local v12, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v12, :cond_51

    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/PackageInfoCache;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 257
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, account:Ljava/lang/String;
    if-nez v3, :cond_3a

    .line 259
    const-string v0, "Current account unset; skipping update of [%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 262
    :cond_3a
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer;->mLocalAssetStore:Lcom/google/android/finsky/local/AssetStore;

    sget-object v2, Lcom/google/android/finsky/local/AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-virtual {v10}, Lcom/google/android/vending/model/Asset;->getVersionCode()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v10}, Lcom/google/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface/range {v0 .. v9}, Lcom/google/android/finsky/local/AssetStore;->insertAsset(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v12

    .line 272
    .end local v3           #account:Ljava/lang/String;
    :cond_51
    invoke-virtual {v10}, Lcom/google/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v12, v0}, Lcom/google/android/finsky/receivers/Installer;->fetchAsset(Lcom/google/android/finsky/local/LocalAsset;Ljava/lang/String;)V

    goto :goto_4

    .line 266
    :cond_59
    const-string v0, "Could not get localAsset for non-system asset [%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 277
    .end local v1           #packageName:Ljava/lang/String;
    .end local v10           #assetToInstall:Lcom/google/android/vending/model/Asset;
    .end local v12           #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    :cond_65
    invoke-direct {p0}, Lcom/google/android/finsky/receivers/Installer;->notifyListeners()V

    .line 278
    return-void
.end method

.method public downloadAndInstallAsset(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 23
    .parameter "url"
    .parameter "title"
    .parameter "properties"
    .parameter "cookieName"
    .parameter "cookieValue"
    .parameter "doNotifications"

    .prologue
    .line 165
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    .line 166
    .local v15, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->remove(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/Installer;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/google/android/finsky/download/DownloadQueue;->getDownloadByUrl(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 170
    const-string v2, "Ignoring download for application \'%s\' because the download already exists."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "install.abandonInstall"

    const-string v4, "url-already-in-queue"

    invoke-interface {v2, v3, v15, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_35
    :goto_35
    return-void

    .line 181
    :cond_36
    move-object/from16 v0, p3

    iget v13, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->versionCode:I

    .line 182
    .local v13, newVersionCode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/Installer;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v2, v15}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v14

    .line 183
    .local v14, oldVersionCode:I
    if-gt v13, v14, :cond_88

    .line 184
    const-string v2, "Skipping attempt to download %s version %d over version %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    const/4 v4, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "install.abandonInstall"

    const-string v4, "older-version"

    invoke-interface {v2, v3, v15, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    if-eqz p6, :cond_35

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/Installer;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v2}, Lcom/google/android/finsky/download/DownloadQueue;->getNotificationHelper()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const v4, 0x7f0700a2

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v15, v3, v4}, Lcom/google/android/finsky/utils/Notifier;->showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_35

    .line 198
    :cond_88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/Installer;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v2}, Lcom/google/android/finsky/download/DownloadQueue;->getAllDownloads()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_94
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/download/Download;

    .line 199
    .local v1, download:Lcom/google/android/finsky/download/Download;
    invoke-interface {v1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v11

    .line 200
    .local v11, downloadProperties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-eqz v11, :cond_94

    iget-object v2, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_94

    iget-object v2, v11, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 206
    const-string v2, "Skipping extraneous download for %s since the package is already downloading."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "install.abandonInstall"

    const-string v4, "package-already-in-queue"

    invoke-interface {v2, v3, v15, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 215
    .end local v1           #download:Lcom/google/android/finsky/download/Download;
    .end local v11           #downloadProperties:Lcom/google/android/finsky/download/Download$PackageProperties;
    :cond_ce
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v2

    if-nez v2, :cond_10a

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-ne v2, v3, :cond_ec

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v2}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-eq v2, v3, :cond_10a

    .line 218
    :cond_ec
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "install.abandonInstall"

    const-string v4, "obb-no-external-storage"

    invoke-interface {v2, v3, v15, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/Installer;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v2}, Lcom/google/android/finsky/download/DownloadQueue;->getNotificationHelper()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v15}, Lcom/google/android/finsky/utils/Notifier;->showExternalStorageMissing(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    .line 224
    :cond_10a
    const-string v2, "Downloading and installing %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    new-instance v1, Lcom/google/android/finsky/download/DownloadImpl;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/google/android/finsky/download/Download$PackageProperties;->size:J

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/android/finsky/download/DownloadImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLcom/google/android/finsky/download/obb/Obb;)V

    .line 228
    .local v1, download:Lcom/google/android/finsky/download/InternalDownload;
    if-eqz p6, :cond_133

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/Installer;->mPackagesWithNotifications:Ljava/util/Set;

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/receivers/Installer;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v2, v1}, Lcom/google/android/finsky/download/DownloadQueue;->add(Lcom/google/android/finsky/download/InternalDownload;)V

    goto/16 :goto_35
.end method

.method public fetchAsset(Lcom/google/android/finsky/local/LocalAsset;Ljava/lang/String;)V
    .registers 9
    .parameter "asset"
    .parameter "assetId"

    .prologue
    .line 292
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/receivers/Installer;->mPendingAssetPackageNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, account:Ljava/lang/String;
    if-nez p2, :cond_13

    .line 296
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object p2

    .line 298
    :cond_13
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v3

    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->DIRECT_DOWNLOAD_KEY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;-><init>(Lcom/google/android/finsky/receivers/Installer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/finsky/receivers/Installer$1;

    invoke-direct {v5, p0, v1}, Lcom/google/android/finsky/receivers/Installer$1;-><init>(Lcom/google/android/finsky/receivers/Installer;Ljava/lang/String;)V

    invoke-virtual {v3, v2, p2, v4, v5}, Lcom/google/android/vending/remoting/api/VendingApi;->getAsset(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 313
    return-void
.end method

.method public getAppsEligibleForAutoUpdate(Ljava/util/List;Z)Ljava/util/List;
    .registers 23
    .parameter
    .parameter "useAutoUpdateFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, assetsFromServer:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/receivers/Installer;->isMobileNetwork()Z

    move-result v16

    if-eqz v16, :cond_a0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/receivers/Installer;->getMaxBytesOverMobileRecommended()J

    move-result-wide v4

    .line 383
    .local v4, autoUpdateSizeLimit:J
    :goto_a
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 384
    .local v3, assetsToUpdate:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/vending/model/Asset;

    .line 385
    .local v2, asset:Lcom/google/android/vending/model/Asset;
    invoke-virtual {v2}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 386
    .local v14, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/Installer;->mLocalAssetStore:Lcom/google/android/finsky/local/AssetStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v13

    .line 387
    .local v13, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    const/4 v12, 0x0

    .line 388
    .local v12, isOutdated:Z
    const/4 v15, 0x0

    .line 389
    .local v15, shouldAutoUpdate:Z
    if-eqz v13, :cond_3e

    sget-object v16, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {v13}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/finsky/local/AssetState;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a7

    .line 390
    :cond_3e
    const-string v16, "Server thinks we have an asset that we don\'t have : %s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :cond_4f
    :goto_4f
    if-eqz v12, :cond_12

    .line 411
    invoke-virtual {v2}, Lcom/google/android/vending/model/Asset;->hasRequiredInstallationSize()Z

    move-result v16

    if-eqz v16, :cond_e0

    invoke-virtual {v2}, Lcom/google/android/vending/model/Asset;->getRequiredInstallationSize()J

    move-result-wide v10

    .line 414
    .local v10, installSize:J
    :goto_5b
    :try_start_5b
    invoke-virtual {v2}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/google/android/vending/model/Asset;->getPermissions()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/Installer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/google/android/finsky/local/AssetUtils;->containsDangerousNewPermissions(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageManager;)Z

    move-result v7

    .line 417
    .local v7, containsDangerousPermissions:Z
    if-nez v7, :cond_12

    if-eqz p2, :cond_73

    if-eqz v15, :cond_12

    :cond_73
    cmp-long v16, v10, v4

    if-gez v16, :cond_12

    .line 420
    const-string v16, "Market will auto-update %s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_8b} :catch_8c

    goto :goto_12

    .line 423
    .end local v7           #containsDangerousPermissions:Z
    :catch_8c
    move-exception v8

    .line 425
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v16, "Asset %s marked installed but not in pkg mgr"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 380
    .end local v2           #asset:Lcom/google/android/vending/model/Asset;
    .end local v3           #assetsToUpdate:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    .end local v4           #autoUpdateSizeLimit:J
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #installSize:J
    .end local v12           #isOutdated:Z
    .end local v13           #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #shouldAutoUpdate:Z
    :cond_a0
    const-wide v4, 0x7fffffffffffffffL

    goto/16 :goto_a

    .line 391
    .restart local v2       #asset:Lcom/google/android/vending/model/Asset;
    .restart local v3       #assetsToUpdate:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    .restart local v4       #autoUpdateSizeLimit:J
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v12       #isOutdated:Z
    .restart local v13       #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    .restart local v14       #packageName:Ljava/lang/String;
    .restart local v15       #shouldAutoUpdate:Z
    :cond_a7
    invoke-virtual {v2}, Lcom/google/android/vending/model/Asset;->getVersionCode()J

    move-result-wide v16

    invoke-interface {v13}, Lcom/google/android/finsky/local/LocalAsset;->getVersionCode()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_4f

    .line 392
    const/4 v12, 0x1

    .line 393
    invoke-interface {v13}, Lcom/google/android/finsky/local/LocalAsset;->getAutoUpdateState()Lcom/google/android/finsky/local/AutoUpdateState;

    move-result-object v6

    .line 394
    .local v6, autoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;
    sget-object v16, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 395
    sget-object v16, Lcom/google/android/finsky/local/AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/local/AutoUpdateState;

    move-object/from16 v0, v16

    if-eq v6, v0, :cond_4f

    .line 396
    invoke-interface {v13}, Lcom/google/android/finsky/local/LocalAsset;->getAutoUpdateState()Lcom/google/android/finsky/local/AutoUpdateState;

    move-result-object v16

    sget-object v17, Lcom/google/android/finsky/local/AutoUpdateState;->ENABLED:Lcom/google/android/finsky/local/AutoUpdateState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_de

    const/4 v15, 0x1

    :goto_dc
    goto/16 :goto_4f

    :cond_de
    const/4 v15, 0x0

    goto :goto_dc

    .line 411
    .end local v6           #autoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;
    :cond_e0
    const-wide/16 v10, 0x0

    goto/16 :goto_5b

    .line 430
    .end local v2           #asset:Lcom/google/android/vending/model/Asset;
    .end local v12           #isOutdated:Z
    .end local v13           #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #shouldAutoUpdate:Z
    :cond_e4
    return-object v3
.end method

.method public getAppsWithUpdates(Ljava/util/List;)Ljava/util/List;
    .registers 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 327
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 329
    .local v4, outdated:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/model/Asset;

    .line 330
    .local v0, asset:Lcom/google/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/finsky/receivers/Installer;->mLocalAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v8, v6}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v2

    .line 332
    .local v2, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v2, :cond_5d

    const/4 v3, -0x1

    .line 333
    .local v3, localAssetVersion:I
    :goto_23
    invoke-virtual {v0}, Lcom/google/android/vending/model/Asset;->getVersionCode()J

    move-result-wide v8

    long-to-int v7, v8

    .line 334
    .local v7, serverAssetVersion:I
    iget-object v8, p0, Lcom/google/android/finsky/receivers/Installer;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v8, v6}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v5

    .line 336
    .local v5, packageManagerVersion:I
    iget-object v8, p0, Lcom/google/android/finsky/receivers/Installer;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v8, v6}, Lcom/google/android/finsky/utils/PackageInfoCache;->isDisabledByUser(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 341
    if-gt v7, v5, :cond_62

    .line 344
    const-string v8, "Skip update of %s -- version inconsistency:"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v6, v9, v12

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    const-string v8, "  Server asset v=%d Local asset v=%d Package Mgr v=%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    const/4 v10, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 332
    .end local v3           #localAssetVersion:I
    .end local v5           #packageManagerVersion:I
    .end local v7           #serverAssetVersion:I
    :cond_5d
    invoke-interface {v2}, Lcom/google/android/finsky/local/LocalAsset;->getVersionCode()I

    move-result v3

    goto :goto_23

    .line 347
    .restart local v3       #localAssetVersion:I
    .restart local v5       #packageManagerVersion:I
    .restart local v7       #serverAssetVersion:I
    :cond_62
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/Installer;->newSystemAppAvailable(Lcom/google/android/vending/model/Asset;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 348
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 349
    :cond_6c
    if-eqz v2, :cond_7a

    sget-object v8, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {v2}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/local/AssetState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_84

    .line 350
    :cond_7a
    const-string v8, "Server thinks we have an asset that we don\'t have : %s"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v6, v9, v12

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 351
    :cond_84
    if-le v7, v3, :cond_a

    .line 352
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 355
    .end local v0           #asset:Lcom/google/android/vending/model/Asset;
    .end local v2           #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v3           #localAssetVersion:I
    .end local v5           #packageManagerVersion:I
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #serverAssetVersion:I
    :cond_8a
    return-object v4
.end method

.method public getMaxBytesOverMobile()J
    .registers 3

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/google/android/finsky/receivers/Installer;->mMaxBytesOverMobile:J

    return-wide v0
.end method

.method public getMaxBytesOverMobileRecommended()J
    .registers 3

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/android/finsky/receivers/Installer;->mMaxBytesOverMobileRecommended:J

    return-wide v0
.end method

.method public hasPendingAssetRequests()Z
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer;->mPendingAssetPackageNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMobileNetwork()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 112
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_19
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public onAdd(Lcom/google/android/finsky/download/Download;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 478
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.downloadQueued"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .registers 8
    .parameter "download"

    .prologue
    .line 573
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "install.downloadCancel"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 575
    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 576
    .local v0, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 577
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/Installer;->onCancelObb(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 585
    :cond_1e
    :goto_1e
    return-void

    .line 580
    :cond_1f
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v1

    .line 581
    .local v1, packageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-eqz v1, :cond_1e

    .line 583
    iget-object v2, p0, Lcom/google/android/finsky/receivers/Installer;->mPackagesWithNotifications:Ljava/util/Set;

    iget-object v3, v1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .registers 15
    .parameter "download"

    .prologue
    .line 514
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v6, "install.downloadComplete"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v1, v6, v11, v12}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, p1

    .line 517
    check-cast v8, Lcom/google/android/finsky/download/InternalDownload;

    .line 518
    .local v8, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v8}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 519
    invoke-direct {p0, v8}, Lcom/google/android/finsky/receivers/Installer;->onCompleteObb(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 563
    :cond_1e
    :goto_1e
    return-void

    .line 522
    :cond_1f
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v10

    .line 523
    .local v10, packageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-eqz v10, :cond_1e

    .line 527
    iget-object v9, v10, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    .line 531
    .local v9, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->remove(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/google/android/finsky/receivers/Installer;->mPackagesWithNotifications:Ljava/util/Set;

    invoke-interface {v1, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 535
    .local v5, doNotifications:Z
    iget-wide v2, v10, Lcom/google/android/finsky/download/Download$PackageProperties;->size:J

    .line 536
    .local v2, expectedSize:J
    iget-object v4, v10, Lcom/google/android/finsky/download/Download$PackageProperties;->signature:Ljava/lang/String;

    .line 537
    .local v4, expectedSignature:Ljava/lang/String;
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 539
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/finsky/receivers/Installer;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v1, v9}, Lcom/google/android/finsky/utils/PackageInfoCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    .line 541
    .local v7, isInstalled:Z
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getTitle()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/google/android/finsky/receivers/Installer$2;

    invoke-direct {v6, p0, v0, v9, v10}, Lcom/google/android/finsky/receivers/Installer$2;-><init>(Lcom/google/android/finsky/receivers/Installer;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/finsky/download/Download$PackageProperties;)V

    invoke-static/range {v0 .. v7}, Lcom/google/android/finsky/utils/PackageManagerHelper;->installPackage(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;Z)V

    goto :goto_1e
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .registers 9
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    .line 590
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "install.downloadError"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 592
    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 593
    .local v0, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 594
    invoke-direct {p0, v0, p2}, Lcom/google/android/finsky/receivers/Installer;->onErrorObb(Lcom/google/android/finsky/download/InternalDownload;I)V

    .line 602
    :cond_21
    :goto_21
    return-void

    .line 597
    :cond_22
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v1

    .line 598
    .local v1, packageProperties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-eqz v1, :cond_21

    .line 600
    iget-object v2, p0, Lcom/google/android/finsky/receivers/Installer;->mPackagesWithNotifications:Ljava/util/Set;

    iget-object v3, v1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_21
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .registers 7
    .parameter "download"

    .prologue
    const/4 v4, 0x0

    .line 485
    invoke-interface {p1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v2

    .line 486
    .local v2, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-nez v2, :cond_25

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarding notification click, no properties for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    :goto_24
    return-void

    .line 490
    :cond_25
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 493
    .local v0, context:Landroid/content/Context;
    iget-object v3, v2, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-static {v0, v3, v4, v4}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 495
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 496
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_24
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 3
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 568
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .registers 7
    .parameter "download"

    .prologue
    .line 502
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.downloadStarted"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 504
    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 505
    .local v0, internal:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 506
    invoke-direct {p0, v0}, Lcom/google/android/finsky/receivers/Installer;->onStartObb(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 509
    :cond_1e
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .prologue
    .line 473
    return-void
.end method

.method public removeListener(Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/finsky/receivers/Installer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method
