.class public Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;
.super Ljava/lang/Object;
.source "InconsistentAssetRemoverRule.java"

# interfaces
.implements Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;


# instance fields
.field private final mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/services/CheckinAssetStoreListener;)V
    .registers 3
    .parameter "context"
    .parameter "checkinAssetStoreListener"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteAll(Lcom/google/android/finsky/local/AssetStore;Ljava/util/Collection;)V
    .registers 6
    .parameter "assetStore"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/local/AssetStore;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/LocalAsset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, assets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/LocalAsset;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/LocalAsset;

    .line 69
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/finsky/local/AssetStore;->deleteAsset(Ljava/lang/String;)Z

    goto :goto_4

    .line 71
    .end local v0           #asset:Lcom/google/android/finsky/local/LocalAsset;
    :cond_18
    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/finsky/local/AssetStore;)I
    .registers 10
    .parameter "assetStore"

    .prologue
    .line 36
    invoke-interface {p1}, Lcom/google/android/finsky/local/AssetStore;->getAssets()Ljava/util/Collection;

    move-result-object v1

    .line 38
    .local v1, assets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/LocalAsset;>;"
    invoke-interface {p1}, Lcom/google/android/finsky/local/AssetStore;->repairMappings()I

    move-result v3

    .line 39
    .local v3, mappingCorrections:I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/LocalAsset;

    .line 40
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->isConsistent()Z

    move-result v4

    if-nez v4, :cond_c

    .line 44
    const-string v4, "Detected an inconsistent LocalAsset. Deleting assets and reconstructing. PackageName [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v4, p0, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    const-string v5, "InconsistentAssetRemoverRule"

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->suspend(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;->deleteAll(Lcom/google/android/finsky/local/AssetStore;Ljava/util/Collection;)V

    .line 54
    iget-object v4, p0, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    const-string v5, "InconsistentAssetRemoverRule"

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->resume(Ljava/lang/String;)V

    .line 56
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule$1;-><init>(Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 64
    .end local v0           #asset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v3           #mappingCorrections:I
    :cond_56
    return v3
.end method
