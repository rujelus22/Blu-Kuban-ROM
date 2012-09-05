.class Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2$1;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2;->run(Landroid/content/Context;Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2$1;->this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 267
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v1

    .line 268
    .local v1, assetStore:Lcom/google/android/finsky/local/AssetStore;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v5

    .line 269
    .local v5, packageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    sget-object v7, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {v1, v7}, Lcom/google/android/finsky/local/AssetStore;->getAssetsByState(Lcom/google/android/finsky/local/AssetState;)Ljava/util/Collection;

    move-result-object v2

    .line 271
    .local v2, assetsToReset:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/LocalAsset;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/LocalAsset;

    .line 272
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {v5, v6}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v3

    .line 274
    .local v3, correctVersion:I
    invoke-interface {v0, v3}, Lcom/google/android/finsky/local/LocalAsset;->resetToInstalledVersion(I)V

    goto :goto_1a

    .line 276
    .end local v0           #asset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v3           #correctVersion:I
    .end local v6           #packageName:Ljava/lang/String;
    :cond_32
    return-void
.end method
