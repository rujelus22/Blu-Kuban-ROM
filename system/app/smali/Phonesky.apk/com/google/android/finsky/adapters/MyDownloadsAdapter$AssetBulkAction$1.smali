.class final enum Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$1;
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
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;-><init>(Ljava/lang/String;ILcom/google/android/finsky/adapters/MyDownloadsAdapter$1;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "context"

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabelId()I
    .registers 2

    .prologue
    .line 232
    const v0, 0x7f070157

    return v0
.end method

.method public isVisible(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Z
    .registers 6
    .parameter "downloadsAdapter"

    .prologue
    const/4 v2, 0x1

    .line 245
    #getter for: Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
    invoke-static {p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$900(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->getCount()I

    move-result v0

    .line 246
    .local v0, runningDownloads:I
    #getter for: Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
    invoke-static {p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$600(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 247
    .local v1, updatesCount:I
    if-nez v0, :cond_18

    if-le v1, v2, :cond_18

    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public isWaiting(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Z
    .registers 3
    .parameter "downloadsAdapter"

    .prologue
    .line 252
    #getter for: Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$800(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/receivers/Installer;->hasPendingAssetRequests()Z

    move-result v0

    return v0
.end method

.method public run(Landroid/content/Context;Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)V
    .registers 11
    .parameter "ctx"
    .parameter "downloadsAdapter"

    .prologue
    const/4 v7, 0x0

    .line 210
    #getter for: Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
    invoke-static {p2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$600(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;

    move-result-object v5

    #getter for: Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;
    invoke-static {v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->access$700(Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)Ljava/util/List;

    move-result-object v1

    .line 212
    .local v1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    #getter for: Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {p2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$800(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/finsky/receivers/Installer;->attemptInstallAssets(Ljava/util/List;)V

    .line 214
    const-string v4, "updateAll"

    .line 215
    .local v4, url:Ljava/lang/String;
    const/4 v3, 0x1

    .line 216
    .local v3, isFirstParam:Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/model/Asset;

    .line 217
    .local v0, asset:Lcom/google/android/vending/model/Asset;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 220
    if-eqz v3, :cond_4e

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?doc[]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    const/4 v3, 0x0

    goto :goto_17

    .line 224
    :cond_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&doc[]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    .line 227
    .end local v0           #asset:Lcom/google/android/vending/model/Asset;
    :cond_6a
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v5

    invoke-interface {v5, v7, v7, v4}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method
