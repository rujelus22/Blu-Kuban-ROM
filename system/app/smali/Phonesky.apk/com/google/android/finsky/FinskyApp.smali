.class public Lcom/google/android/finsky/FinskyApp;
.super Landroid/app/Application;
.source "FinskyApp.java"

# interfaces
.implements Lcom/google/android/finsky/api/DfeApiProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/FinskyApp$CrashHandler;
    }
.end annotation


# static fields
.field private static final RECEIVERS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/google/android/finsky/FinskyApp;


# instance fields
.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

.field private mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

.field private mBitmapCache:Lcom/android/volley/Cache;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

.field private mCache:Lcom/android/volley/Cache;

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

.field private mDfeNotificationManager:Lcom/google/android/finsky/api/DfeNotificationManager;

.field private mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

.field private mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

.field private mMarketMetadata:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

.field private mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

.field private mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

.field private mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

.field private final mPendingNotificationsHandler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mSelfUpdateScheduler:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

.field private mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/finsky/receivers/BootCompletedReceiver;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/finsky/receivers/PackageMonitorReceiver$RegisteredReceiver;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/google/android/finsky/receivers/AccountsChangedReceiver;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/FinskyApp;->RECEIVERS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 153
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    .line 777
    new-instance v0, Lcom/google/android/finsky/FinskyApp$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/FinskyApp$5;-><init>(Lcom/google/android/finsky/FinskyApp;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPendingNotificationsHandler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/FinskyApp;)Lcom/google/android/finsky/library/LibraryReplicators;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/FinskyApp;)Lcom/android/volley/Cache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/FinskyApp;)Lcom/android/volley/RequestQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method private checkForCrashOnLastRun(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 239
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "crashed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    .local v0, crashFile:Ljava/io/File;
    new-instance v1, Lcom/google/android/finsky/FinskyApp$CrashHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/FinskyApp$CrashHandler;-><init>(Lcom/google/android/finsky/FinskyApp;Ljava/io/File;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private cleanupOldFinsky()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 408
    iget-object v5, p0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    const-string v6, "com.google.android.finsky"

    invoke-interface {v5, v6}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v1

    .line 409
    .local v1, finskyPackage:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    if-nez v1, :cond_e

    .line 431
    :cond_d
    :goto_d
    return-void

    .line 413
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 414
    .local v3, pm:Landroid/content/pm/PackageManager;
    const-string v5, "com.google.android.finsky"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    .line 415
    .local v4, setting:I
    if-eq v4, v8, :cond_21

    .line 416
    const-string v5, "com.google.android.finsky"

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_21} :catch_4c

    .line 425
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #setting:I
    :cond_21
    :goto_21
    sget-object v5, Lcom/google/android/finsky/config/G;->tabskyMinVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 426
    .local v2, minVersion:I
    iget v5, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-ge v5, v2, :cond_d

    .line 427
    const-string v5, "Updating com.google.android.finsky from %d to %d"

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    const-string v5, "com.google.android.finsky"

    invoke-direct {p0, v5, v2}, Lcom/google/android/finsky/FinskyApp;->downloadSuicidalTabsky(Ljava/lang/String;I)V

    goto :goto_d

    .line 420
    .end local v2           #minVersion:I
    :catch_4c
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/SecurityException;
    const-string v5, "Unable to disable old finsky package."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21
.end method

.method public static createNetwork()Lcom/android/volley/Network;
    .registers 4

    .prologue
    .line 477
    sget-object v0, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->isBackgroundDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 478
    new-instance v1, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v2, Lcom/google/android/volley/GoogleHttpClientStack;

    sget-object v3, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    sget-object v0, Lcom/google/android/finsky/config/G;->enableSensitiveLogging:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/volley/GoogleHttpClientStack;-><init>(Landroid/content/Context;Z)V

    new-instance v3, Lcom/android/volley/toolbox/ByteArrayPool;

    sget-object v0, Lcom/google/android/finsky/config/G;->volleyBufferPoolSizeKb:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    invoke-direct {v3, v0}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    move-object v0, v1

    .line 482
    :goto_34
    return-object v0

    :cond_35
    new-instance v0, Lcom/google/android/finsky/utils/DenyAllNetwork;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/DenyAllNetwork;-><init>()V

    goto :goto_34
.end method

.method private downloadSuicidalTabsky(Ljava/lang/String;I)V
    .registers 14
    .parameter "packageName"
    .parameter "version"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 438
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v10

    .line 439
    .local v10, account:Landroid/accounts/Account;
    if-nez v10, :cond_10

    .line 440
    const-string v0, "No current account"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    :goto_f
    return-void

    .line 443
    :cond_10
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/receivers/Installer;->setMobileDataAllowed(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v0, p1, v8, v8}, Lcom/google/android/finsky/receivers/Installer;->setVisibility(Ljava/lang/String;ZZ)V

    .line 445
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v4, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const v1, 0x7f0700cd

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "suicidal_tabsky"

    move-object v1, p1

    move v2, p2

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v9}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_f
.end method

.method public static drain(Lcom/android/volley/RequestQueue;)V
    .registers 2
    .parameter "queue"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/FinskyApp;->drain(Lcom/android/volley/RequestQueue;I)V

    .line 188
    return-void
.end method

.method public static drain(Lcom/android/volley/RequestQueue;I)V
    .registers 3
    .parameter "queue"
    .parameter "seq"

    .prologue
    .line 191
    new-instance v0, Lcom/google/android/finsky/FinskyApp$1;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/FinskyApp$1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 212
    return-void
.end method

.method private enableReceivers()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 450
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 451
    .local v6, pm:Landroid/content/pm/PackageManager;
    sget-object v0, Lcom/google/android/finsky/FinskyApp;->RECEIVERS:[Ljava/lang/Class;

    .local v0, arr$:[Ljava/lang/Class;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_9
    if-ge v4, v5, :cond_30

    aget-object v1, v0, v4

    .line 453
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_d
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 454
    .local v2, component:Landroid/content/ComponentName;
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    .line 455
    .local v7, setting:I
    if-eq v7, v12, :cond_1d

    .line 456
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v2, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_1d} :catch_20

    .line 451
    .end local v2           #component:Landroid/content/ComponentName;
    .end local v7           #setting:I
    :cond_1d
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 460
    :catch_20
    move-exception v3

    .line 461
    .local v3, e:Ljava/lang/SecurityException;
    const-string v8, "Unable to enable %s"

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    .line 464
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #e:Ljava/lang/SecurityException;
    :cond_30
    return-void
.end method

.method public static get()Lcom/google/android/finsky/FinskyApp;
    .registers 1

    .prologue
    .line 487
    sget-object v0, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    return-object v0
.end method

.method public static getCacheDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "suffix"

    .prologue
    .line 471
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 472
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 473
    return-object v0
.end method

.method private setupAccountLibrariesAndReplicator(Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/finsky/library/Accounts;)V
    .registers 11
    .parameter "notificationHandler"
    .parameter "backgroundHandler"
    .parameter "accounts"

    .prologue
    .line 381
    new-instance v2, Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/library/SQLiteLibrary;-><init>(Landroid/content/Context;)V

    .line 382
    .local v2, sqLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;
    new-instance v0, Lcom/google/android/finsky/library/Libraries;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p3, v2, v1, p2}, Lcom/google/android/finsky/library/Libraries;-><init>(Lcom/google/android/finsky/library/Accounts;Lcom/google/android/finsky/library/SQLiteLibrary;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 384
    new-instance v0, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;

    iget-object v3, p0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    sget-object v1, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryReplicatorsImpl;-><init>(Lcom/google/android/finsky/api/DfeApiProvider;Lcom/google/android/finsky/library/SQLiteLibrary;Lcom/google/android/finsky/library/Libraries;Landroid/os/Handler;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    .line 386
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    new-instance v1, Lcom/google/android/finsky/FinskyApp$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/FinskyApp$3;-><init>(Lcom/google/android/finsky/FinskyApp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method private whoopsWeBrokeEverything()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 401
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 402
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/vending/AssetBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 405
    return-void
.end method


# virtual methods
.method public clearCacheAsync(Ljava/lang/Runnable;)V
    .registers 6
    .parameter "callback"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/ClearCacheRequest;

    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    new-instance v3, Lcom/google/android/finsky/FinskyApp$4;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/FinskyApp$4;-><init>(Lcom/google/android/finsky/FinskyApp;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2, v3}, Lcom/android/volley/toolbox/ClearCacheRequest;-><init>(Lcom/android/volley/Cache;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 619
    return-void
.end method

.method public drainAllRequests(I)V
    .registers 3
    .parameter "sequenceNumber"

    .prologue
    .line 180
    sget-object v0, Lcom/google/android/finsky/config/G;->explorerEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-static {v0, p1}, Lcom/google/android/finsky/FinskyApp;->drain(Lcom/android/volley/RequestQueue;I)V

    .line 182
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/utils/BitmapLoader;->drain(I)V

    .line 184
    :cond_1e
    return-void
.end method

.method public getAnalytics()Lcom/google/android/finsky/analytics/Analytics;
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    return-object v0
.end method

.method public getAnalytics(Ljava/lang/String;)Lcom/google/android/finsky/analytics/Analytics;
    .registers 5
    .parameter "accountName"

    .prologue
    .line 599
    new-instance v0, Lcom/google/android/finsky/analytics/DfeAnalytics;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/DfeAnalytics;-><init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V

    return-object v0
.end method

.method public getAppStates()Lcom/google/android/finsky/appstate/AppStates;
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-object v0
.end method

.method public getAppStatesReplicator()Lcom/google/android/finsky/appstate/AppStatesReplicator;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    return-object v0
.end method

.method public getBitmapCache()Lcom/android/volley/Cache;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    return-object v0
.end method

.method public getCache()Lcom/android/volley/Cache;
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getCurrentAccount()Landroid/accounts/Account;
    .registers 4

    .prologue
    .line 666
    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    if-nez v1, :cond_18

    .line 667
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->currentAccount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {p0, v1}, Lcom/google/android/finsky/api/AccountHandler;->getAccountFromPreferences(Landroid/content/Context;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;)Landroid/accounts/Account;

    move-result-object v0

    .line 669
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_16

    .line 670
    const-string v1, "No account configured on this device."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    const/4 v1, 0x0

    .line 675
    .end local v0           #account:Landroid/accounts/Account;
    :goto_15
    return-object v1

    .line 673
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_16
    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    .line 675
    .end local v0           #account:Landroid/accounts/Account;
    :cond_18
    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    goto :goto_15
.end method

.method public getCurrentAccountName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 684
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .registers 4

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 537
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_10

    .line 538
    const-string v1, "No account configured on this device."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    const/4 v1, 0x0

    .line 541
    :goto_f
    return-object v1

    :cond_10
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    goto :goto_f
.end method

.method public getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;
    .registers 11
    .parameter "accountName"

    .prologue
    .line 549
    iget-object v8, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    monitor-enter v8

    .line 550
    :try_start_3
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/DfeApi;

    .line 551
    .local v7, result:Lcom/google/android/finsky/api/DfeApi;
    if-nez v7, :cond_41

    .line 552
    invoke-static {p0}, Lcom/google/android/finsky/config/ContentLevel;->importFromSettings(Landroid/content/Context;)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/ContentLevel;->getDfeValue()I

    move-result v5

    .line 553
    .local v5, contentFilterLevel:I
    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/experiments/DfeExperiments;

    invoke-direct {v2}, Lcom/google/android/finsky/experiments/DfeExperiments;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/FinskyApp;->mDfeNotificationManager:Lcom/google/android/finsky/api/DfeNotificationManager;

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApiContext;->create(Landroid/content/Context;Lcom/android/volley/Cache;Lcom/google/android/finsky/experiments/Experiments;Lcom/google/android/finsky/api/DfeNotificationManager;Ljava/lang/String;I)Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v6

    .line 556
    .local v6, dfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_35

    .line 557
    const-string v0, "Created new context: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    :cond_35
    new-instance v7, Lcom/google/android/finsky/api/DfeApiImpl;

    .end local v7           #result:Lcom/google/android/finsky/api/DfeApi;
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v7, v0, v6}, Lcom/google/android/finsky/api/DfeApiImpl;-><init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/api/DfeApiContext;)V

    .line 560
    .restart local v7       #result:Lcom/google/android/finsky/api/DfeApi;
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .end local v5           #contentFilterLevel:I
    .end local v6           #dfeApiContext:Lcom/google/android/finsky/api/DfeApiContext;
    :cond_41
    monitor-exit v8

    return-object v7

    .line 563
    .end local v7           #result:Lcom/google/android/finsky/api/DfeApi;
    :catchall_43
    move-exception v0

    monitor-exit v8
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public getDfeNotificationManager()Lcom/google/android/finsky/api/DfeNotificationManager;
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mDfeNotificationManager:Lcom/google/android/finsky/api/DfeNotificationManager;

    return-object v0
.end method

.method public getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    return-object v0
.end method

.method public getInstaller()Lcom/google/android/finsky/receivers/Installer;
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    return-object v0
.end method

.method public getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    return-object v0
.end method

.method public getLibraries()Lcom/google/android/finsky/library/Libraries;
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-object v0
.end method

.method public getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    return-object v0
.end method

.method public getMarketMetadata()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mMarketMetadata:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    return-object v0
.end method

.method public getNotifier()Lcom/google/android/finsky/utils/Notifier;
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    return-object v0
.end method

.method public getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    return-object v0
.end method

.method public getPackageMonitorReceiver()Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    return-object v0
.end method

.method public getPendingNotificationsHandler()Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPendingNotificationsHandler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

    return-object v0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .registers 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getSelfUpdateScheduler()Lcom/google/android/finsky/utils/SelfUpdateScheduler;
    .registers 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mSelfUpdateScheduler:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    return-object v0
.end method

.method public getToc()Lcom/google/android/finsky/api/model/DfeToc;
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method public getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 570
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    .line 571
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_10

    .line 572
    const-string v1, "Fall back to primary account."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 575
    :cond_10
    if-nez v0, :cond_1b

    .line 576
    const-string v1, "No account configured on this device."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    const/4 v1, 0x0

    .line 579
    :goto_1a
    return-object v1

    :cond_1b
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    goto :goto_1a
.end method

.method public getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;
    .registers 3
    .parameter "accountName"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    invoke-virtual {v0, p1}, Lcom/google/android/vending/remoting/api/VendingApiFactory;->getApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .registers 3

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    invoke-virtual {p0}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v0

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    return v0
.end method

.method public isTablet()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 692
    :try_start_1
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 693
    const-string v2, "isVoiceCapable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 694
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 697
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

    .line 699
    :goto_26
    return v0

    :cond_27
    move v0, v1

    .line 697
    goto :goto_26

    .line 698
    :catch_29
    move-exception v0

    move v0, v1

    .line 699
    goto :goto_26
.end method

.method public onCreate()V
    .registers 23

    .prologue
    .line 248
    sput-object p0, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    .line 250
    sget-object v2, Lcom/google/android/finsky/config/G;->GSERVICES_KEY_PREFIXES:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/finsky/config/GservicesValue;->init(Landroid/content/Context;[Ljava/lang/String;)V

    .line 251
    invoke-static/range {p0 .. p0}, Lcom/google/android/finsky/config/PreferenceFile;->init(Landroid/content/Context;)V

    .line 254
    new-instance v4, Lcom/android/volley/toolbox/DiskBasedCache;

    const-string v2, "main"

    invoke-static {v2}, Lcom/google/android/finsky/FinskyApp;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    sget-object v2, Lcom/google/android/finsky/config/G;->mainCacheSizeMb:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    invoke-direct {v4, v5, v2}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/FinskyApp;->checkForCrashOnLastRun(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 259
    const-string v2, "Clearing cache due to crash on previous run."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    invoke-interface {v2}, Lcom/android/volley/Cache;->clear()V

    .line 264
    :cond_44
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->whoopsWeBrokeEverything()V

    .line 266
    new-instance v2, Lcom/android/volley/RequestQueue;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mCache:Lcom/android/volley/Cache;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->createNetwork()Lcom/android/volley/Network;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v2, v4, v5, v6}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->start()V

    .line 269
    new-instance v2, Lcom/google/android/vending/remoting/api/VendingApiFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/FinskyApp;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v2, v4, v5}, Lcom/google/android/vending/remoting/api/VendingApiFactory;-><init>(Landroid/content/Context;Lcom/android/volley/RequestQueue;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    .line 271
    new-instance v2, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-direct {v2}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    .line 274
    new-instance v4, Lcom/android/volley/toolbox/DiskBasedCache;

    const-string v2, "images"

    invoke-static {v2}, Lcom/google/android/finsky/FinskyApp;->getCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    sget-object v2, Lcom/google/android/finsky/config/G;->imageCacheSizeMb:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    invoke-direct {v4, v5, v2}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;

    .line 276
    new-instance v2, Lcom/android/volley/RequestQueue;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapCache:Lcom/android/volley/Cache;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->createNetwork()Lcom/android/volley/Network;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->start()V

    .line 278
    new-instance v2, Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-direct {v2, v4}, Lcom/google/android/finsky/utils/BitmapLoader;-><init>(Lcom/android/volley/RequestQueue;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 280
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->initSingleton()V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/VendingBackupAgent;->registerWithBackup(Landroid/content/Context;)V

    .line 285
    invoke-static {}, Lcom/google/android/finsky/download/obb/ObbFactory;->initialize()V

    .line 287
    new-instance v2, Lcom/google/android/finsky/utils/NotificationManager;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/finsky/utils/NotificationManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    .line 289
    new-instance v18, Lcom/google/android/finsky/download/DownloadManagerImpl;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/download/DownloadManagerImpl;-><init>(Landroid/content/Context;)V

    .line 291
    .local v18, downloadManager:Lcom/google/android/finsky/download/DownloadManager;
    new-instance v2, Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;-><init>(Landroid/content/Context;Lcom/google/android/finsky/download/DownloadManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-static {v2}, Lcom/google/android/finsky/receivers/RemoveAssetReceiver;->initialize(Lcom/google/android/finsky/utils/Notifier;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-static {v2}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->initialize(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    .line 295
    invoke-static/range {p0 .. p0}, Lcom/google/android/finsky/services/DailyHygiene;->goMakeHygieneIfDirty(Landroid/content/Context;)V

    .line 297
    new-instance v4, Lcom/google/android/finsky/appstate/PackageManagerRepository;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getPackageMonitorReceiver()Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-result-object v6

    const-string v2, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/finsky/appstate/PackageManagerRepository;-><init>(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;Landroid/app/admin/DevicePolicyManager;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v21

    .line 301
    .local v21, vendingPackage:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    new-instance v2, Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v0, v21

    iget v5, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-direct {v2, v4, v5}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;-><init>(Lcom/google/android/finsky/download/DownloadQueue;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mSelfUpdateScheduler:Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    new-instance v4, Lcom/google/android/finsky/download/obb/ObbPackageTracker;

    invoke-direct {v4}, Lcom/google/android/finsky/download/obb/ObbPackageTracker;-><init>()V

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 306
    new-instance v2, Landroid/provider/SearchRecentSuggestions;

    const-string v4, "com.google.android.finsky.RecentSuggestionsProvider"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->enableReceivers()V

    .line 312
    new-instance v17, Landroid/os/HandlerThread;

    const-string v2, "libraries-thread"

    const/16 v4, 0xa

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 314
    .local v17, backgroundThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->start()V

    .line 317
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 318
    .local v7, notificationHandler:Landroid/os/Handler;
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 320
    .local v20, librariesHandler:Landroid/os/Handler;
    new-instance v3, Lcom/google/android/finsky/FinskyApp$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/finsky/FinskyApp$2;-><init>(Lcom/google/android/finsky/FinskyApp;)V

    .line 331
    .local v3, accounts:Lcom/google/android/finsky/library/Accounts;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v7, v1, v3}, Lcom/google/android/finsky/FinskyApp;->setupAccountLibrariesAndReplicator(Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/finsky/library/Accounts;)V

    .line 332
    sget-object v2, Lcom/google/android/finsky/FinskyApp;->sInstance:Lcom/google/android/finsky/FinskyApp;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/finsky/widget/WidgetUtils;->registerLibraryMutationsListener(Landroid/content/Context;Lcom/google/android/finsky/library/LibraryReplicators;)V

    .line 335
    new-instance v8, Landroid/os/Handler;

    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 336
    .local v8, appStatehandler:Landroid/os/Handler;
    new-instance v19, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    new-instance v2, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;

    invoke-direct {v2}, Lcom/google/android/finsky/appstate/InMemoryInstallerDataStore;-><init>()V

    new-instance v4, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v4, v8, v7}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;-><init>(Lcom/google/android/finsky/appstate/InstallerDataStore;Lcom/google/android/finsky/appstate/InstallerDataStore;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 339
    .local v19, installerDataStore:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/FinskyApp;->mInstallerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;

    .line 342
    new-instance v2, Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mPackageStateRepository:Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v4}, Lcom/google/android/finsky/appstate/AppStates;-><init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Lcom/google/android/finsky/appstate/PackageStateRepository;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 345
    new-instance v2, Lcom/google/android/finsky/appstate/AppStatesReplicator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/FinskyApp;->mApiFactory:Lcom/google/android/vending/remoting/api/VendingApiFactory;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/finsky/appstate/AppStatesReplicator;-><init>(Lcom/google/android/finsky/library/Accounts;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/vending/remoting/api/VendingApiFactory;Landroid/os/Handler;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    invoke-static {v2, v4}, Lcom/google/android/finsky/services/ContentSyncService;->setupListeners(Lcom/google/android/finsky/library/LibraryReplicators;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V

    .line 350
    new-instance v2, Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {v2, v4, v5, v6, v9}, Lcom/google/android/finsky/installer/InstallPolicies;-><init>(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    .line 353
    new-instance v9, Lcom/google/android/finsky/receivers/InstallerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/FinskyApp;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueueImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/FinskyApp;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v16}, Lcom/google/android/finsky/receivers/InstallerImpl;-><init>(Landroid/content/Context;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/download/DownloadQueue;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v2}, Lcom/google/android/finsky/receivers/Installer;->start()V

    .line 358
    new-instance v9, Lcom/google/android/finsky/DfeNotificationManagerImpl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/FinskyApp;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/FinskyApp;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/FinskyApp;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    move-object/from16 v10, p0

    move-object v15, v3

    invoke-direct/range {v9 .. v15}, Lcom/google/android/finsky/DfeNotificationManagerImpl;-><init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/LibraryReplicators;Lcom/google/android/finsky/library/Accounts;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/finsky/FinskyApp;->mDfeNotificationManager:Lcom/google/android/finsky/api/DfeNotificationManager;

    .line 361
    new-instance v2, Lcom/google/android/finsky/utils/UninstallRefundTracker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5}, Lcom/google/android/finsky/utils/UninstallRefundTracker;-><init>(Landroid/content/Context;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V

    .line 362
    new-instance v2, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/FinskyApp;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/FinskyApp;->mPackageMonitorReceiver:Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5}, Lcom/google/android/finsky/utils/UninstallSubscriptionsTracker;-><init>(Landroid/content/Context;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V

    .line 364
    new-instance v2, Lcom/google/android/finsky/appstate/MigrationAsyncTask;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->cleanupOldFinsky()V

    .line 372
    sget-object v2, Lcom/google/android/finsky/config/G;->analyticsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_290

    .line 373
    new-instance v2, Lcom/google/android/finsky/analytics/DfeAnalytics;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/google/android/finsky/analytics/DfeAnalytics;-><init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 377
    :goto_28f
    return-void

    .line 375
    :cond_290
    new-instance v2, Lcom/google/android/finsky/analytics/StubAnalytics;

    invoke-direct {v2}, Lcom/google/android/finsky/analytics/StubAnalytics;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    goto :goto_28f
.end method

.method public setMarketMetadata(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .registers 2
    .parameter "marketMetadata"

    .prologue
    .line 774
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp;->mMarketMetadata:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 775
    return-void
.end method

.method public setToc(Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 2
    .parameter "toc"

    .prologue
    .line 709
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 710
    return-void
.end method

.method public switchCurrentAccount(Landroid/accounts/Account;)V
    .registers 5
    .parameter "newAccount"

    .prologue
    .line 644
    iget-object v2, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    monitor-enter v2

    .line 645
    :try_start_3
    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mDfeApis:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 646
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_31

    .line 648
    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    invoke-virtual {v1, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    :cond_15
    const/4 v0, 0x1

    .line 650
    .local v0, changed:Z
    :goto_16
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    .line 651
    if-eqz v0, :cond_30

    .line 652
    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mCurrentAccount:Landroid/accounts/Account;

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->currentAccount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v1, v2}, Lcom/google/android/finsky/api/AccountHandler;->saveAccountToPreferences(Landroid/accounts/Account;Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;)V

    .line 655
    iget-object v1, p0, Lcom/google/android/finsky/FinskyApp;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    invoke-interface {v1}, Lcom/google/android/finsky/analytics/Analytics;->reset()V

    .line 656
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.finsky.action.DFE_API_CONTEXT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/FinskyApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 658
    :cond_30
    return-void

    .line 646
    .end local v0           #changed:Z
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1

    .line 648
    :cond_34
    const/4 v0, 0x0

    goto :goto_16
.end method
