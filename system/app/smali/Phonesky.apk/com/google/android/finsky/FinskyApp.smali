.class public Lcom/google/android/finsky/FinskyApp;
.super Landroid/app/Application;
.source "FinskyApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/FinskyApp$CrashHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/android/finsky/FinskyApp;


# instance fields
.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

.field private mAssetStore:Lcom/google/android/finsky/local/AssetStore;

.field private mAssetStoreUpdater:Lcom/google/android/finsky/utils/AssetStoreUpdater;

.field private mBitmapCache:Lcom/android/volley/Cache;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

.field private mCache:Lcom/android/volley/Cache;

.field private mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

.field private mCurrentAccount:Landroid/accounts/Account;

.field private final mDfeApis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/DfeApi;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

.field private mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mMarketMetadata:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

.field private mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

.field private mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

.field private mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

.field private final mPendingNotificationsHandler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

.field private mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mSelfUpdateScheduler:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

.field private mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 134
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    .line 628
    new-instance v0, Lcom/google/android/finsky/FinskyApp$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/FinskyApp$3;-><init>(Lcom/google/android/finsky/FinskyApp;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPendingNotificationsHandler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/FinskyApp;)Lcom/android/volley/Cache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/FinskyApp;)Lcom/android/volley/RequestQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method private checkForCrashOnLastRun(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 188
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "crashed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    .local v0, crashFile:Ljava/io/File;
    new-instance v1, Lcom/google/android/finsky/FinskyApp$CrashHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/FinskyApp$CrashHandler;-><init>(Lcom/google/android/finsky/FinskyApp;Ljava/io/File;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private cleanupOldFinsky()V
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 312
    iget-object v4, p0, Lcom/google/android/finsky/FinskyApp;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    const-string v5, "com.google.android.finsky"

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/utils/PackageInfoCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 335
    :cond_c
    :goto_c
    return-void

    .line 315
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 317
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_11
    const-string v4, "com.google.android.finsky"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    .line 318
    .local v3, setting:I
    if-eq v3, v6, :cond_20

    .line 319
    const-string v4, "com.google.android.finsky"

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_20} :catch_57

    .line 327
    .end local v3           #setting:I
    :cond_20
    :goto_20
    :try_start_20
    const-string v4, "com.google.android.finsky"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 328
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sget-object v4, Lcom/google/android/finsky/config/G;->tabskyMinVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v5, v4, :cond_c

    .line 329
    const-string v4, "Updating com.google.android.finsky from %d to %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/google/android/finsky/config/G;->tabskyMinVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    invoke-direct {p0}, Lcom/google/android/finsky/FinskyApp;->downloadSuicidalTabsky()V
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_54} :catch_55

    goto :goto_c

    .line 333
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :catch_55
    move-exception v4

    goto :goto_c

    .line 323
    :catch_57
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "Unable to disable old finsky package."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20
.end method

.method private createNetwork()Lcom/android/volley/Network;
    .registers 4

    .prologue
    .line 387
    invoke-static {p0}, Lcom/google/android/finsky/utils/Utils;->isBackgroundDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 388
    new-instance v1, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v2, Lcom/google/android/volley/GoogleHttpClientStack;

    sget-object v0, Lcom/google/android/finsky/config/G;->enableSensitiveLogging:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, p0, v0}, Lcom/google/android/volley/GoogleHttpClientStack;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v1, v2}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    move-object v0, v1

    .line 391
    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Lcom/google/android/finsky/utils/DenyAllNetwork;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/DenyAllNetwork;-><init>()V

    goto :goto_1d
.end method

.method private downloadSuicidalTabsky()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 338
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 339
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_f

    .line 340
    const-string v2, "Couldn\'t get first account"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    :goto_e
    return-void

    .line 343
    :cond_f
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    .line 344
    .local v1, vendingApi:Lcom/google/android/vending/remoting/api/VendingApi;
    if-nez v1, :cond_1f

    .line 345
    const-string v2, "Can\'t get api for current account"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 348
    :cond_1f
    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->DIRECT_DOWNLOAD_KEY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v2:com.google.android.finsky:1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/config/G;->tabskyMinVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google.android.finsky"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/finsky/receivers/Installer$DownloadAndInstallGetAssetListener;-><init>(Lcom/google/android/finsky/receivers/Installer;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v5, Lcom/google/android/finsky/FinskyApp$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/FinskyApp$1;-><init>(Lcom/google/android/finsky/FinskyApp;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/vending/remoting/api/VendingApi;->getAsset(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_e
.end method

.method private enableBootReceiver()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 366
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.google.android.finsky.billing.iab.BootCompletedReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 368
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 369
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    .line 370
    .local v3, setting:I
    if-eq v3, v6, :cond_31

    .line 371
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_31} :catch_32

    .line 378
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #setting:I
    :cond_31
    :goto_31
    return-void

    .line 375
    :catch_32
    move-exception v1

    .line 376
    .local v1, e:Ljava/lang/SecurityException;
    const-string v4, "Unable to enable the boot receiver."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_31
.end method

.method public static get()Lcom/google/android/finsky/FinskyApp;
    .registers 1

    .prologue
    .line 396
    sget-object v0, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    return-object v0
.end method

.method private getCacheDir(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter "suffix"

    .prologue
    .line 381
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 383
    return-object v0
.end method

.method private wasMarketUpgraded(I)Z
    .registers 3
    .parameter "versionCode"

    .prologue
    .line 565
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->RECONCILED_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->RECONCILED_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private whoopsWeBrokeEverything()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 305
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 306
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/vending/AssetBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 309
    return-void
.end method


# virtual methods
.method public clearCacheAsync(Ljava/lang/Runnable;)V
    .registers 6
    .parameter "callback"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/ClearCacheRequest;

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    new-instance v3, Lcom/google/android/finsky/FinskyApp$2;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/FinskyApp$2;-><init>(Lcom/google/android/finsky/FinskyApp;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/ClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 477
    return-void
.end method

.method public drainAllRequests(I)V
    .registers 3
    .parameter "sequenceNumber"

    .prologue
    .line 156
    sget-object v0, Lcom/google/android/finsky/config/G;->explorerEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_24

    .line 157
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->drain(I)V

    .line 158
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/utils/BitmapLoader;->drain(I)V

    .line 160
    :cond_24
    return-void
.end method

.method public getAnalytics()Lcom/google/android/finsky/analytics/Analytics;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    return-object v0
.end method

.method public getAssetStore()Lcom/google/android/finsky/local/AssetStore;
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    return-object v0
.end method

.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    return-object v0
.end method

.method public getCache()Lcom/android/volley/Cache;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getCheckinAssetStoreListener()Lcom/google/android/finsky/services/CheckinAssetStoreListener;
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    return-object v0
.end method

.method public getCurrentAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getCurrentAccountName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_5
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;
    .registers 8
    .parameter "accountName"

    .prologue
    .line 417
    iget-object v3, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    monitor-enter v3

    .line 418
    :try_start_3
    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/DfeApi;

    .line 419
    .local v1, result:Lcom/google/android/finsky/api/DfeApi;
    if-nez v1, :cond_2c

    .line 420
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeApiContext;->create(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    .line 421
    .local v0, dfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;
    sget-boolean v2, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v2, :cond_20

    .line 422
    const-string v2, "Created new context: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    :cond_20
    new-instance v1, Lcom/google/android/finsky/api/DfeApi;

    .end local v1           #result:Lcom/google/android/finsky/api/DfeApi;
    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v1, v2, v0}, Lcom/google/android/finsky/api/DfeApi;-><init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/api/DfeApiContext;)V

    .line 425
    .restart local v1       #result:Lcom/google/android/finsky/api/DfeApi;
    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .end local v0           #dfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;
    :cond_2c
    monitor-exit v3

    return-object v1

    .line 428
    .end local v1           #result:Lcom/google/android/finsky/api/DfeApi;
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    return-object v0
.end method

.method public getInstaller()Lcom/google/android/finsky/receivers/Installer;
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    return-object v0
.end method

.method public getMarketMetadata()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mMarketMetadata:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    return-object v0
.end method

.method public getNotifier()Lcom/google/android/finsky/utils/Notifier;
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    return-object v0
.end method

.method public getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    return-object v0
.end method

.method public getPackageMonitorReceiver()Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    return-object v0
.end method

.method public getPendingNotificationsHandler()Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;
    .registers 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPendingNotificationsHandler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

    return-object v0
.end method

.method public getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    return-object v0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getSelfUpdateScheduler()Lcom/google/android/finsky/utils/SelfUpdateScheduler;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mSelfUpdateScheduler:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    return-object v0
.end method

.method public getToc()Lcom/google/android/finsky/api/model/DfeToc;
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method public getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    return-object v0
.end method

.method public getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;
    .registers 3
    .parameter "accountName"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    invoke-virtual {v0, p1}, Lcom/google/android/vending/remoting/api/VendingApiFactory;->getApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .registers 3

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isTablet()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 528
    :try_start_1
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 529
    const-string v2, "isVoiceCapable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 530
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 533
    if-eqz v0, :cond_25

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_29

    move-result v0

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x1

    .line 535
    :goto_26
    return v0

    :cond_27
    move v0, v1

    .line 533
    goto :goto_26

    .line 534
    :catch_29
    move-exception v0

    move v0, v1

    .line 535
    goto :goto_26
.end method

.method public onCreate()V
    .registers 16

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v7, 0x0

    .line 197
    sput-object p0, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    .line 199
    invoke-static {p0}, Lcom/google/android/finsky/config/GservicesValue;->init(Landroid/content/Context;)V

    .line 200
    invoke-static {p0}, Lcom/google/android/finsky/config/PreferenceFile;->init(Landroid/content/Context;)V

    .line 203
    new-instance v0, Lcom/android/volley/toolbox/DiskBasedCache;

    const-string v1, "main"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/FinskyApp;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/high16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    .line 206
    invoke-direct {p0, p0}, Lcom/google/android/finsky/FinskyApp;->checkForCrashOnLastRun(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 207
    const-string v0, "Clearing cache due to crash on previous run."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    invoke-interface {v0}, Lcom/android/volley/Cache;->clear()V

    .line 212
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/finsky/FinskyApp;->whoopsWeBrokeEverything()V

    .line 214
    new-instance v0, Lcom/android/volley/RequestQueue;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    invoke-direct {p0}, Lcom/google/android/finsky/FinskyApp;->createNetwork()Lcom/android/volley/Network;

    move-result-object v2

    invoke-direct {v0, v1, v2, v14}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 215
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 217
    new-instance v0, Lcom/google/android/vending/remoting/api/VendingApiFactory;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/remoting/api/VendingApiFactory;-><init>(Landroid/content/Context;Lcom/android/volley/RequestQueue;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    .line 219
    new-instance v0, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-direct {v0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    .line 221
    new-instance v0, Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/PackageInfoCache;-><init>(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    .line 224
    new-instance v0, Lcom/android/volley/toolbox/DiskBasedCache;

    const-string v1, "images"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/FinskyApp;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;

    .line 225
    new-instance v0, Lcom/android/volley/RequestQueue;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;

    invoke-direct {p0}, Lcom/google/android/finsky/FinskyApp;->createNetwork()Lcom/android/volley/Network;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    .line 226
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 227
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/BitmapLoader;-><init>(Lcom/android/volley/RequestQueue;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 229
    sget-object v0, Lcom/google/android/finsky/config/G;->analyticsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 230
    new-instance v0, Lcom/google/android/finsky/analytics/DfeAnalytics;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/google/android/finsky/analytics/DfeAnalytics;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 236
    :goto_aa
    new-instance v0, Lcom/google/android/finsky/model/PurchaseStatusTracker;

    invoke-direct {v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    .line 238
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->initSingleton()V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/VendingBackupAgent;->registerWithBackup(Landroid/content/Context;)V

    .line 243
    new-instance v0, Lcom/google/android/finsky/local/AssetStoreFactory;

    invoke-direct {v0}, Lcom/google/android/finsky/local/AssetStoreFactory;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/local/AssetStoreFactory;->makeAssetStore(Landroid/content/Context;)Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    .line 245
    new-instance v0, Lcom/google/android/finsky/utils/NotificationManager;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/utils/NotificationManager;-><init>(Landroid/content/Context;Lcom/google/android/finsky/local/AssetStore;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    .line 247
    new-instance v4, Lcom/google/android/finsky/download/DownloadManagerImpl;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/download/DownloadManagerImpl;-><init>(Landroid/content/Context;)V

    .line 249
    .local v4, downloadManager:Lcom/google/android/finsky/download/DownloadManager;
    new-instance v12, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    new-instance v0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;

    const-string v1, "uri_url_map"

    invoke-virtual {p0, v1, v7}, Lcom/google/android/finsky/FinskyApp;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "market_download_data"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v12, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;-><init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V

    .line 252
    .local v12, store:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;
    invoke-virtual {v12}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->forceSynchronousLoad()V

    .line 254
    new-instance v0, Lcom/google/android/finsky/download/DownloadQueueImpl;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    new-instance v2, Lcom/google/android/finsky/download/DownloadUriUrlMap;

    invoke-direct {v2, v12}, Lcom/google/android/finsky/download/DownloadUriUrlMap;-><init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V

    invoke-direct {v0, p0, v1, v4, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/download/DownloadManager;Lcom/google/android/finsky/download/DownloadUriUrlMap;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    .line 257
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-static {v0}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->initialize(Lcom/google/android/finsky/utils/Notifier;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->initialize(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-static {v0}, Lcom/google/android/finsky/utils/PurchaseInitiator;->initialize(Lcom/google/android/finsky/utils/Notifier;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-static {v0}, Lcom/google/android/finsky/receivers/ServerNotificationReceiver;->initialize(Lcom/google/android/finsky/utils/Notifier;)V

    .line 261
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/PurchaseErrorSurfacer;->initialize(Lcom/google/android/finsky/model/PurchaseStatusTracker;)V

    .line 262
    invoke-static {p0}, Lcom/google/android/finsky/receivers/UpdateCheckReceiver;->initialize(Landroid/content/Context;)V

    .line 264
    new-instance v0, Lcom/google/android/finsky/receivers/Installer;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    iget-object v5, p0, Lcom/google/android/finsky/FinskyApp;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/receivers/Installer;-><init>(Lcom/google/android/finsky/local/AssetStore;Landroid/content/pm/PackageManager;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/download/DownloadManager;Lcom/google/android/finsky/utils/PackageInfoCache;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 267
    new-instance v0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->get()Lcom/google/android/finsky/services/ContentSyncService$Facade;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;-><init>(Landroid/content/Context;Lcom/google/android/finsky/services/ContentSyncService$Facade;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    .line 269
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/AssetStore;->addListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V

    .line 271
    new-instance v0, Lcom/google/android/finsky/utils/AssetStoreUpdater;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    iget-object v3, p0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    iget-object v5, p0, Lcom/google/android/finsky/FinskyApp;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/finsky/utils/AssetStoreUpdater;-><init>(Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/services/CheckinAssetStoreListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAssetStoreUpdater:Lcom/google/android/finsky/utils/AssetStoreUpdater;

    .line 274
    new-instance v0, Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;-><init>(Lcom/google/android/finsky/download/DownloadQueue;I)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mSelfUpdateScheduler:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    .line 277
    new-instance v0, Lcom/google/android/finsky/utils/UninstallRefundTracker;

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/finsky/utils/UninstallRefundTracker;-><init>(Landroid/content/Context;Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V

    .line 279
    new-instance v11, Lcom/google/android/finsky/local/checker/SanityChecker;

    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;

    new-instance v2, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;

    iget-object v3, p0, Lcom/google/android/finsky/FinskyApp;->mCheckinAssetStoreListener:Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    invoke-direct {v2, p0, v3}, Lcom/google/android/finsky/local/InconsistentAssetRemoverRule;-><init>(Landroid/content/Context;Lcom/google/android/finsky/services/CheckinAssetStoreListener;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;

    iget-object v3, p0, Lcom/google/android/finsky/FinskyApp;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-direct {v2, p0, v3}, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/PackageInfoCache;)V

    aput-object v2, v1, v13

    new-instance v5, Lcom/google/android/finsky/download/DownloadRestarterRule;

    iget-object v7, p0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    iget-object v8, p0, Lcom/google/android/finsky/FinskyApp;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    iget-object v9, p0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    move-object v6, p0

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/android/finsky/download/DownloadRestarterRule;-><init>(Landroid/content/Context;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/download/DownloadManager;)V

    aput-object v5, v1, v14

    invoke-direct {v11, v0, v1}, Lcom/google/android/finsky/local/checker/SanityChecker;-><init>(Lcom/google/android/finsky/local/AssetStore;[Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;)V

    .line 285
    .local v11, sanityChecker:Lcom/google/android/finsky/local/checker/SanityChecker;
    invoke-virtual {v11}, Lcom/google/android/finsky/local/checker/SanityChecker;->run()V

    .line 287
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    new-instance v1, Lcom/google/android/finsky/download/obb/ObbPackageTracker;

    invoke-direct {v1}, Lcom/google/android/finsky/download/obb/ObbPackageTracker;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 289
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getVersionCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/FinskyApp;->wasMarketUpgraded(I)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 291
    invoke-interface {v4}, Lcom/google/android/finsky/download/DownloadManager;->removeAll()V

    .line 294
    :cond_1ac
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "com.google.android.finsky.RecentSuggestionsProvider"

    invoke-direct {v0, p0, v1, v13}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    .line 299
    invoke-direct {p0}, Lcom/google/android/finsky/FinskyApp;->cleanupOldFinsky()V

    .line 301
    invoke-direct {p0}, Lcom/google/android/finsky/FinskyApp;->enableBootReceiver()V

    .line 302
    return-void

    .line 232
    .end local v4           #downloadManager:Lcom/google/android/finsky/download/DownloadManager;
    .end local v11           #sanityChecker:Lcom/google/android/finsky/local/checker/SanityChecker;
    .end local v12           #store:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;
    :cond_1bc
    new-instance v0, Lcom/google/android/finsky/analytics/StubAnalytics;

    invoke-direct {v0}, Lcom/google/android/finsky/analytics/StubAnalytics;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    goto/16 :goto_aa
.end method

.method public setCurrentAccount(Landroid/accounts/Account;)V
    .registers 4
    .parameter "currentAccount"

    .prologue
    .line 499
    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    monitor-enter v1

    .line 500
    :try_start_3
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 501
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    .line 502
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    .line 503
    if-eqz p1, :cond_1c

    .line 504
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    invoke-interface {v0}, Lcom/google/android/finsky/analytics/Analytics;->reset()V

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.action.DFE_API_CONTEXT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/FinskyApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 507
    :cond_1c
    return-void

    .line 501
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public setMarketMetadata(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .registers 2
    .parameter "marketMetadata"

    .prologue
    .line 617
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp;->mMarketMetadata:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 618
    return-void
.end method

.method public setToc(Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 2
    .parameter "toc"

    .prologue
    .line 545
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 546
    return-void
.end method
