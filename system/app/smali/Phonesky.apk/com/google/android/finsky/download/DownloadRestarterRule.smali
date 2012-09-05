.class public Lcom/google/android/finsky/download/DownloadRestarterRule;
.super Ljava/lang/Object;
.source "DownloadRestarterRule.java"

# interfaces
.implements Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/download/DownloadRestarterRule$1;,
        Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;,
        Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;,
        Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private final mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/download/DownloadManager;)V
    .registers 6
    .parameter "context"
    .parameter "downloadQueue"
    .parameter "packageInfoCache"
    .parameter "installer"
    .parameter "downloadManager"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadRestarterRule;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    .line 56
    iput-object p4, p0, Lcom/google/android/finsky/download/DownloadRestarterRule;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 57
    iput-object p5, p0, Lcom/google/android/finsky/download/DownloadRestarterRule;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    .line 58
    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadRestarterRule;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    .line 59
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/download/DownloadRestarterRule;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/utils/PackageInfoCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/download/DownloadManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/download/DownloadQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/receivers/Installer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    return-object v0
.end method


# virtual methods
.method public run(Lcom/google/android/finsky/local/AssetStore;)I
    .registers 9
    .parameter "assetStore"

    .prologue
    const/4 v6, 0x0

    .line 69
    sget-object v3, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {p1, v3}, Lcom/google/android/finsky/local/AssetStore;->getAssetsByState(Lcom/google/android/finsky/local/AssetState;)Ljava/util/Collection;

    move-result-object v1

    .line 70
    .local v1, pending:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/LocalAsset;>;"
    sget-object v3, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {p1, v3}, Lcom/google/android/finsky/local/AssetStore;->getAssetsByState(Lcom/google/android/finsky/local/AssetState;)Ljava/util/Collection;

    move-result-object v0

    .line 71
    .local v0, downloading:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/LocalAsset;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 73
    .local v2, toRestore:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/local/LocalAsset;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_24

    .line 77
    const-string v3, "Recovering from Market exit when restoring / downloading assets."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_24
    new-instance v3, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;-><init>(Lcom/google/android/finsky/download/DownloadRestarterRule;Ljava/util/Collection;Lcom/google/android/finsky/download/DownloadRestarterRule$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/finsky/download/DownloadManager;

    iget-object v5, p0, Lcom/google/android/finsky/download/DownloadRestarterRule;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    return v3
.end method
