.class final enum Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2;
.super Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;-><init>(Ljava/lang/String;ILcom/google/android/finsky/adapters/MyDownloadsAdapter$1;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "context"

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabelId()I
    .registers 2

    .prologue
    .line 282
    const v0, 0x7f0700e2

    return v0
.end method

.method public isVisible(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Z
    .registers 7
    .parameter "downloadsAdapter"

    .prologue
    .line 293
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v1

    .line 294
    .local v1, assetStore:Lcom/google/android/finsky/local/AssetStore;
    #getter for: Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUnsortedAssets:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$1000(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/model/Asset;

    .line 295
    .local v0, asset:Lcom/google/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v3

    .line 296
    .local v3, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v3, :cond_10

    .line 299
    invoke-interface {v3}, Lcom/google/android/finsky/local/LocalAsset;->isDownloadingOrInstalling()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 300
    const/4 v4, 0x1

    .line 303
    .end local v0           #asset:Lcom/google/android/vending/model/Asset;
    .end local v3           #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    :goto_2d
    return v4

    :cond_2e
    const/4 v4, 0x0

    goto :goto_2d
.end method

.method public isWaiting(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Z
    .registers 3
    .parameter "downloadsAdapter"

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public run(Landroid/content/Context;Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)V
    .registers 5
    .parameter "ctx"
    .parameter "downloadsAdapter"

    .prologue
    .line 260
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/download/DownloadQueue;->cancelAll()V

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2$1;-><init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method
