.class public Lcom/google/android/finsky/activities/MyDownloadsFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "MyDownloadsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/MyDownloadsFragment$10;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/PageFragment;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/model/AssetList;",
        ">;",
        "Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

.field private mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

.field private mAssetList:Lcom/google/android/vending/model/AssetList;

.field private mCurrentAsset:Lcom/google/android/vending/model/Asset;

.field private mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

.field mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mInstallerRequestListener:Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;

.field private mListView:Landroid/widget/ListView;

.field mMobileDataState:Z

.field mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNoAppsView:Landroid/view/View;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedListState:Landroid/os/Parcelable;

.field private mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    .line 573
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/MyDownloadsFragment;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->asyncRefreshAdapter()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->syncCurrentAsset()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/MyDownloadsFragment;Lcom/google/android/vending/model/Asset;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->goToPurchase(Lcom/google/android/vending/model/Asset;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/MyDownloadsFragment;Lcom/google/android/vending/model/Asset;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->goToAssetDetails(Lcom/google/android/vending/model/Asset;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/MyDownloadsFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->refundAsset(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/MyDownloadsFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/MyDownloadsFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/MyDownloadsFragment;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private asyncRefreshAdapter()V
    .registers 3

    .prologue
    .line 407
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/activities/MyDownloadsFragment$5;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment$5;-><init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method

.method private attachAssetChangeListener()V
    .registers 3

    .prologue
    .line 312
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    .line 313
    .local v0, assetStore:Lcom/google/android/finsky/local/AssetStore;
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    if-eqz v1, :cond_11

    .line 314
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/AssetStore;->removeListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V

    .line 317
    :cond_11
    new-instance v1, Lcom/google/android/finsky/activities/MyDownloadsFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment$2;-><init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    .line 340
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/AssetStore;->addListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V

    .line 341
    return-void
.end method

.method private attachDownloadQueueListener()V
    .registers 3

    .prologue
    .line 344
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v0

    .line 345
    .local v0, downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    if-eqz v1, :cond_11

    .line 346
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadQueue;->removeListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 349
    :cond_11
    new-instance v1, Lcom/google/android/finsky/activities/MyDownloadsFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment$3;-><init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    .line 384
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 385
    return-void
.end method

.method private attachInstallerRequestListener()V
    .registers 3

    .prologue
    .line 388
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    .line 389
    .local v0, installer:Lcom/google/android/finsky/receivers/Installer;
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mInstallerRequestListener:Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;

    if-eqz v1, :cond_11

    .line 390
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mInstallerRequestListener:Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;)V

    .line 393
    :cond_11
    new-instance v1, Lcom/google/android/finsky/activities/MyDownloadsFragment$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment$4;-><init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mInstallerRequestListener:Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;

    .line 399
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mInstallerRequestListener:Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;)V

    .line 400
    return-void
.end method

.method private clearAssetDetails()V
    .registers 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;

    if-eqz v0, :cond_a

    .line 436
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AssetView;->setVisibility(I)V

    .line 438
    :cond_a
    return-void
.end method

.method private configureNoAppsUi()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    .line 620
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    .line 622
    .local v5, toc:Lcom/google/android/finsky/api/model/DfeToc;
    iget-object v6, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNoAppsView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 624
    iget-object v6, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNoAppsView:Landroid/view/View;

    const v7, 0x7f080002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AccountSelectorView;

    .line 626
    .local v0, accountNameView:Lcom/google/android/finsky/layout/AccountSelectorView;
    iget-object v6, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/layout/AccountSelectorView;->configure(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V

    .line 629
    iget-object v6, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mDataView:Landroid/view/ViewGroup;

    const v7, 0x7f0800fa

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 630
    .local v1, appBrowsing:Landroid/view/View;
    if-nez v5, :cond_4c

    const/4 v2, 0x0

    .line 632
    .local v2, appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :goto_2a
    if-nez v2, :cond_52

    .line 633
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 645
    :goto_2f
    iget-object v6, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mDataView:Landroid/view/ViewGroup;

    const v7, 0x7f0800fb

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 646
    .local v3, gamesBrowsing:Landroid/view/View;
    sget-object v6, Lcom/google/android/finsky/config/G;->gamesBrowseUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 647
    .local v4, gamesUrl:Ljava/lang/String;
    if-eqz v5, :cond_48

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 648
    :cond_48
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 659
    :goto_4b
    return-void

    .line 630
    .end local v2           #appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v3           #gamesBrowsing:Landroid/view/View;
    .end local v4           #gamesUrl:Ljava/lang/String;
    :cond_4c
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v2

    goto :goto_2a

    .line 635
    .restart local v2       #appCorpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_52
    new-instance v6, Lcom/google/android/finsky/activities/MyDownloadsFragment$8;

    invoke-direct {v6, p0, v2, v5}, Lcom/google/android/finsky/activities/MyDownloadsFragment$8;-><init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;Lcom/google/android/finsky/api/model/DfeToc;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2f

    .line 650
    .restart local v3       #gamesBrowsing:Landroid/view/View;
    .restart local v4       #gamesUrl:Ljava/lang/String;
    :cond_5b
    new-instance v6, Lcom/google/android/finsky/activities/MyDownloadsFragment$9;

    invoke-direct {v6, p0, v4, v5}, Lcom/google/android/finsky/activities/MyDownloadsFragment$9;-><init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4b
.end method

.method private goToAssetDetails(Lcom/google/android/vending/model/Asset;)V
    .registers 6
    .parameter "asset"

    .prologue
    const/4 v3, 0x0

    .line 462
    invoke-static {p1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->makeDetailsUrl(Lcom/google/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, detailsUrl:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 466
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const-string v2, "myApps"

    invoke-virtual {v1, v0, v3, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method private goToPurchase(Lcom/google/android/vending/model/Asset;)V
    .registers 9
    .parameter "asset"

    .prologue
    const/4 v4, 0x0

    .line 580
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {p1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->makeDetailsUrl(Lcom/google/android/vending/model/Asset;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "myApps"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToPurchase(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method private isAdditionalInfoShowing()Z
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static makeDetailsUrl(Lcom/google/android/vending/model/Asset;)Ljava/lang/String;
    .registers 3
    .parameter "asset"

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/finsky/api/DfeApi;->createDetailsUrlFromId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/google/android/finsky/activities/MyDownloadsFragment;
    .registers 2

    .prologue
    .line 109
    new-instance v0, Lcom/google/android/finsky/activities/MyDownloadsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;-><init>()V

    .line 110
    .local v0, fragment:Lcom/google/android/finsky/activities/MyDownloadsFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 111
    return-object v0
.end method

.method private refundAsset(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 555
    new-instance v0, Lcom/google/android/finsky/activities/MyDownloadsFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/MyDownloadsFragment$7;-><init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/AssetSupport;->refund(Ljava/lang/String;Lcom/google/android/finsky/utils/AssetSupport$RefundListener;)V

    .line 577
    return-void
.end method

.method private selectFirstAsset()V
    .registers 8

    .prologue
    .line 260
    iget-object v5, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAssetList:Lcom/google/android/vending/model/AssetList;

    invoke-virtual {v5}, Lcom/google/android/vending/model/AssetList;->getAssets()Ljava/util/List;

    move-result-object v1

    .line 261
    .local v1, assets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_12

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->isAdditionalInfoShowing()Z

    move-result v5

    if-nez v5, :cond_13

    .line 288
    :cond_12
    :goto_12
    return-void

    .line 265
    :cond_13
    iget-object v5, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mCurrentAsset:Lcom/google/android/vending/model/Asset;

    if-eqz v5, :cond_38

    .line 267
    iget-object v5, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mCurrentAsset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, currPackageName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/model/Asset;

    .line 269
    .local v0, asset:Lcom/google/android/vending/model/Asset;
    invoke-virtual {v0}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_12

    .line 276
    .end local v0           #asset:Lcom/google/android/vending/model/Asset;
    .end local v2           #currPackageName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_38
    const/4 v4, 0x0

    .local v4, position:I
    :goto_39
    iget-object v5, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_60

    .line 277
    iget-object v5, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-virtual {v5, v4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->isAssetItem(I)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 278
    iget-object v5, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 279
    iget-object v5, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-virtual {v5, v4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/vending/model/Asset;

    iput-object v5, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mCurrentAsset:Lcom/google/android/vending/model/Asset;

    .line 280
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->syncCurrentAsset()V

    goto :goto_12

    .line 276
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 286
    :cond_60
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mCurrentAsset:Lcom/google/android/vending/model/Asset;

    .line 287
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->syncCurrentAsset()V

    goto :goto_12
.end method

.method private showAssetDetails(Lcom/google/android/vending/model/Asset;)V
    .registers 5
    .parameter "asset"

    .prologue
    .line 470
    if-nez p1, :cond_6

    .line 471
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->clearAssetDetails()V

    .line 524
    :cond_5
    :goto_5
    return-void

    .line 474
    :cond_6
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mCurrentAsset:Lcom/google/android/vending/model/Asset;

    .line 475
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;

    if-eqz v0, :cond_5

    .line 479
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/AssetView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;

    new-instance v1, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/activities/MyDownloadsFragment$6;-><init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;Lcom/google/android/vending/model/Asset;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/android/finsky/layout/AssetView;->bind(Landroid/support/v4/app/Fragment;Lcom/google/android/vending/model/Asset;Lcom/google/android/finsky/layout/AssetView$AssetActionHandler;Landroid/os/Bundle;)V

    goto :goto_5
.end method

.method private syncCurrentAsset()V
    .registers 6

    .prologue
    .line 417
    iget-object v3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mCurrentAsset:Lcom/google/android/vending/model/Asset;

    if-nez v3, :cond_8

    .line 418
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->clearAssetDetails()V

    .line 432
    :goto_7
    return-void

    .line 421
    :cond_8
    iget-object v3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mCurrentAsset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v3}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    iget-object v3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-virtual {v3}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3f

    .line 423
    iget-object v3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 424
    .local v1, item:Ljava/lang/Object;
    if-eqz v1, :cond_3c

    instance-of v3, v1, Lcom/google/android/vending/model/Asset;

    if-eqz v3, :cond_3c

    move-object v3, v1

    check-cast v3, Lcom/google/android/vending/model/Asset;

    invoke-virtual {v3}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 426
    iget-object v3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 427
    check-cast v1, Lcom/google/android/vending/model/Asset;

    .end local v1           #item:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->showAssetDetails(Lcom/google/android/vending/model/Asset;)V

    goto :goto_7

    .line 422
    .restart local v1       #item:Ljava/lang/Object;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 431
    .end local v1           #item:Ljava/lang/Object;
    :cond_3f
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->clearAssetDetails()V

    goto :goto_7
.end method


# virtual methods
.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 188
    const v0, 0x7f04008e

    return v0
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAssetList:Lcom/google/android/vending/model/AssetList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 119
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "myApps"

    invoke-interface {v1, v3, v3, v2}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz p1, :cond_2f

    .line 121
    const-string v1, "MyDownloadsFragment.ListPosition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 122
    const-string v1, "MyDownloadsFragment.ListPosition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 124
    :cond_25
    const-string v1, "MyDownloadsFragment.Asset"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/model/Asset;

    iput-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mCurrentAsset:Lcom/google/android/vending/model/Asset;

    .line 130
    :cond_2f
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 131
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer;->isMobileNetwork()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mMobileDataState:Z

    .line 132
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 133
    new-instance v1, Lcom/google/android/finsky/activities/MyDownloadsFragment$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment$1;-><init>(Lcom/google/android/finsky/activities/MyDownloadsFragment;)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    .line 150
    .local v0, notifier:Lcom/google/android/finsky/utils/Notifier;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForAccount(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->isDataReady()Z

    move-result v1

    if-nez v1, :cond_74

    .line 153
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->switchToLoading()V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->requestData()V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->rebindActionBar()V

    .line 159
    :goto_73
    return-void

    .line 157
    :cond_74
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->rebindViews()V

    goto :goto_73
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 586
    invoke-static {p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getViewAsset(Landroid/view/View;)Lcom/google/android/vending/model/Asset;

    move-result-object v0

    .line 587
    .local v0, asset:Lcom/google/android/vending/model/Asset;
    if-nez v0, :cond_7

    .line 617
    :cond_6
    :goto_6
    return-void

    .line 591
    :cond_7
    move-object v3, p1

    .line 593
    .local v3, v:Landroid/view/View;
    :goto_8
    if-eqz v3, :cond_6

    .line 596
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 597
    .local v1, parent:Landroid/view/ViewParent;
    iget-object v4, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    if-ne v1, v4, :cond_2b

    .line 607
    iget-object v4, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 608
    .local v2, position:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_21

    .line 609
    iget-object v4, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 612
    :cond_21
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->isAdditionalInfoShowing()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 613
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->showAssetDetails(Lcom/google/android/vending/model/Asset;)V

    goto :goto_6

    .line 601
    .end local v2           #position:I
    :cond_2b
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_6

    move-object v3, v1

    .line 604
    check-cast v3, Landroid/view/View;

    .line 605
    goto :goto_8

    .line 615
    .restart local v2       #position:I
    :cond_33
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->goToAssetDetails(Lcom/google/android/vending/model/Asset;)V

    goto :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, result:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f08013e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    .line 167
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f080143

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/AssetView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;

    .line 168
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mDataView:Landroid/view/ViewGroup;

    const v2, 0x7f0800f8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNoAppsView:Landroid/view/View;

    .line 170
    return-object v0
.end method

.method public onDestroyView()V
    .registers 5

    .prologue
    .line 442
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v1

    .line 443
    .local v1, downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    iget-object v3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    if-eqz v3, :cond_11

    .line 444
    iget-object v3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mDownloadQueueListener:Lcom/google/android/finsky/download/DownloadQueueListener;

    invoke-interface {v1, v3}, Lcom/google/android/finsky/download/DownloadQueue;->removeListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 446
    :cond_11
    iget-object v3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    if-eqz v3, :cond_22

    .line 447
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    .line 448
    .local v0, assetStore:Lcom/google/android/finsky/local/AssetStore;
    iget-object v3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAssetChangeListener:Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;

    invoke-interface {v0, v3}, Lcom/google/android/finsky/local/AssetStore;->removeListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V

    .line 450
    .end local v0           #assetStore:Lcom/google/android/finsky/local/AssetStore;
    :cond_22
    iget-object v3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mInstallerRequestListener:Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;

    if-eqz v3, :cond_33

    .line 451
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v2

    .line 452
    .local v2, installer:Lcom/google/android/finsky/receivers/Installer;
    iget-object v3, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mInstallerRequestListener:Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/receivers/Installer$InstallerRequestListener;)V

    .line 454
    .end local v2           #installer:Lcom/google/android/finsky/receivers/Installer;
    :cond_33
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    .line 455
    return-void
.end method

.method protected onInitViewBinders()V
    .registers 1

    .prologue
    .line 179
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 549
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 232
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onPause()V

    .line 233
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 7
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 531
    packed-switch p1, :pswitch_data_1e

    .line 538
    const-string v0, "Unexpected requestCode %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    :goto_12
    return-void

    .line 535
    :pswitch_13
    const-string v0, "package_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/AssetSupport;->uninstall(Ljava/lang/String;)V

    goto :goto_12

    .line 531
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13
    .end packed-switch
.end method

.method public onResponse(Lcom/google/android/vending/model/AssetList;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 257
    :goto_6
    return-void

    .line 254
    :cond_7
    iput-object p1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAssetList:Lcom/google/android/vending/model/AssetList;

    .line 255
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->onDataChanged()V

    .line 256
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->selectFirstAsset()V

    goto :goto_6
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Lcom/google/android/vending/model/AssetList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->onResponse(Lcom/google/android/vending/model/AssetList;)V

    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 226
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onResume()V

    .line 227
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_15

    .line 294
    const-string v0, "MyDownloadsFragment.ListPosition"

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 296
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mCurrentAsset:Lcom/google/android/vending/model/Asset;

    if-eqz v0, :cond_20

    .line 297
    const-string v0, "MyDownloadsFragment.Asset"

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mCurrentAsset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 299
    :cond_20
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;

    if-eqz v0, :cond_29

    .line 300
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/AssetView;->saveInstanceState(Landroid/os/Bundle;)V

    .line 303
    :cond_29
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 304
    return-void
.end method

.method public rebindActionBar()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 238
    invoke-static {v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, breadcrumbText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 241
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f070132

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_14
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v1, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 245
    return-void
.end method

.method protected rebindViews()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 194
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_8

    .line 222
    :goto_7
    return-void

    .line 198
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->rebindActionBar()V

    .line 200
    new-instance v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->isAdditionalInfoShowing()Z

    move-result v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Landroid/view/View$OnClickListener;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAssetList:Lcom/google/android/vending/model/AssetList;

    invoke-virtual {v1}, Lcom/google/android/vending/model/AssetList;->getAssets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->addAssets(Ljava/util/List;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSavedListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_42

    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSavedListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 209
    :cond_42
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->syncCurrentAsset()V

    .line 211
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mAdapter:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;

    if-eqz v0, :cond_5b

    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/activities/MyDownloadsFragment;->mSelectedAssetView:Lcom/google/android/finsky/layout/AssetView;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/AssetView;->setVisibility(I)V

    .line 216
    :cond_5b
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->configureNoAppsUi()V

    .line 219
    :cond_5e
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->attachDownloadQueueListener()V

    .line 220
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->attachAssetChangeListener()V

    .line 221
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MyDownloadsFragment;->attachInstallerRequestListener()V

    goto :goto_7
.end method

.method protected requestData()V
    .registers 2

    .prologue
    .line 183
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/google/android/vending/remoting/api/VendingApi;->getVendingHistory(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 184
    return-void
.end method
