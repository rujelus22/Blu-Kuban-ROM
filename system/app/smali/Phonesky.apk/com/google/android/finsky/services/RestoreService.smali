.class public Lcom/google/android/finsky/services/RestoreService;
.super Landroid/app/Service;
.source "RestoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/services/RestoreService$3;,
        Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;,
        Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    }
.end annotation


# instance fields
.field private mDebugCountAlreadyInstalled:I

.field private mDebugCountAlreadyTracked:I

.field private mDebugCountInstalledOtherAccount:I

.field private mServiceStartId:I

.field private mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;-><init>(Lcom/google/android/finsky/services/RestoreService;Lcom/google/android/finsky/services/RestoreService$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    .line 80
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/services/RestoreService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/services/RestoreService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/services/RestoreService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/services/RestoreService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/services/RestoreService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/services/RestoreService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/services/RestoreService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/services/RestoreService;->shouldRestore(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/services/RestoreService;->doRestore(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doRestore(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "aid"
    .parameter "accountName"

    .prologue
    .line 401
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setBackupAndroidId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v2

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setTosVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setDeviceConfiguration(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v1

    .line 408
    .local v1, request:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    .line 410
    .local v0, api:Lcom/google/android/vending/remoting/api/VendingApi;
    new-instance v2, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;

    invoke-direct {v2, p0, p2}, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;-><init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/finsky/services/RestoreService$2;

    invoke-direct {v3, p0, p2}, Lcom/google/android/finsky/services/RestoreService$2;-><init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/vending/remoting/api/VendingApi;->restoreApplications(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 422
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)Z
    .registers 15
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 240
    const-string v11, "kick_installer"

    invoke-virtual {p1, v11, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 242
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/finsky/receivers/Installer;->startDeferredInstalls()V

    .line 282
    :goto_15
    return v9

    .line 245
    :cond_16
    const-string v11, "aid"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, aidString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 248
    const-string v10, "Expecting a non-empty aid extra"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 253
    :cond_2a
    const/16 v11, 0x10

    :try_start_2c
    invoke-static {v2, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2f} :catch_4f

    .line 259
    const-string v11, "authAccount"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, specificAccount:Ljava/lang/String;
    if-eqz v8, :cond_5d

    .line 262
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v7

    .line 263
    .local v7, restoreAccount:Landroid/accounts/Account;
    if-nez v7, :cond_58

    .line 264
    const-string v11, "Can\'t find restore acct:%s"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v9

    invoke-static {v11, v10}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 254
    .end local v7           #restoreAccount:Landroid/accounts/Account;
    .end local v8           #specificAccount:Ljava/lang/String;
    :catch_4f
    move-exception v4

    .line 255
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v10, "Provided aid can\'t be parsed as long"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 267
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #restoreAccount:Landroid/accounts/Account;
    .restart local v8       #specificAccount:Ljava/lang/String;
    :cond_58
    invoke-direct {p0, v2, v7}, Lcom/google/android/finsky/services/RestoreService;->restore(Ljava/lang/String;Landroid/accounts/Account;)V

    .end local v7           #restoreAccount:Landroid/accounts/Account;
    :cond_5b
    move v9, v10

    .line 282
    goto :goto_15

    .line 270
    :cond_5d
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 273
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v11, v1

    if-gtz v11, :cond_6c

    .line 274
    const-string v10, "RestoreService can\'t run - no accounts configured on device!"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 278
    :cond_6c
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_6f
    if-ge v5, v6, :cond_5b

    aget-object v0, v3, v5

    .line 279
    .local v0, a:Landroid/accounts/Account;
    invoke-direct {p0, v2, v0}, Lcom/google/android/finsky/services/RestoreService;->restore(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 278
    add-int/lit8 v5, v5, 0x1

    goto :goto_6f
.end method

.method private restore(Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 9
    .parameter "aid"
    .parameter "account"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 374
    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->isAccountInFlight(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 375
    const-string v1, "Skip restore acct:%s already started"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    :goto_1b
    return-void

    .line 379
    :cond_1c
    const-string v1, "Start restore aid:%s acct:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->startAccount(Ljava/lang/String;)V

    .line 383
    new-instance v0, Lcom/google/android/finsky/services/RestoreService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/services/RestoreService$1;-><init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 393
    .local v0, continueRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    .line 394
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    sget-object v3, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "restore-service"

    invoke-interface {v1, p2, v2, v0, v3}, Lcom/google/android/finsky/library/LibraryReplicators;->replicateAccount(Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    goto :goto_1b
.end method

.method private shouldRestore(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;)Z
    .registers 15
    .parameter "packageName"
    .parameter "packageVersion"
    .parameter "deliveryData"
    .parameter "account"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 448
    iget-object v7, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-virtual {v7, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->isTracked(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 449
    iget v7, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    .line 450
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v7

    const-string v8, "install.restoreSkip"

    const-string v9, "is-tracked"

    invoke-interface {v7, v8, p1, v9}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v7, "Skipping restore of %s because already restoring"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v7, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    :goto_28
    return v5

    .line 457
    :cond_29
    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getAdditionalFileCount()I

    move-result v7

    if-lez v7, :cond_5a

    .line 458
    invoke-static {p3, p1, v5}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v2

    .line 459
    .local v2, mainObb:Lcom/google/android/finsky/download/obb/Obb;
    invoke-static {p3, p1, v6}, Lcom/google/android/finsky/local/AssetUtils;->extractObb(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v4

    .line 460
    .local v4, patchObb:Lcom/google/android/finsky/download/obb/Obb;
    if-eqz v2, :cond_5a

    if-eqz v4, :cond_5a

    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v7

    if-nez v7, :cond_5a

    .line 461
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v7

    const-string v8, "install.restoreSkip"

    const-string v9, "obb-storage"

    invoke-interface {v7, v8, p1, v9}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v7, "Skipping restore of %s because OBB required but no external storage"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v7, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_28

    .line 470
    .end local v2           #mainObb:Lcom/google/android/finsky/download/obb/Obb;
    .end local v4           #patchObb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_5a
    const/4 v1, -0x1

    .line 471
    .local v1, installedVersionCode:I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v3

    .line 472
    .local v3, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    if-eqz v3, :cond_6b

    .line 473
    iget v1, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 475
    :cond_6b
    if-lt v1, p2, :cond_9a

    .line 476
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v7

    const-string v8, "install.restoreSkip"

    const-string v9, "older-version"

    invoke-interface {v7, v8, p1, v9}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v7, "Skipping restore of %s v:%d because v:%d is installed"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    iget v6, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyInstalled:I

    goto :goto_28

    .line 486
    :cond_9a
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 487
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_d8

    iget-object v7, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v7, :cond_d8

    iget-object v7, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d8

    .line 489
    iget v7, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I

    .line 490
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v7

    const-string v8, "install.restoreSkip"

    const-string v9, "other-account"

    invoke-interface {v7, v8, p1, v9}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v7, "Skipping restore of %s because tracked by another account"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v7, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 496
    :cond_d8
    const-string v7, "Should attempt restore of %s"

    new-array v8, v6, [Ljava/lang/Object;

    aput-object p1, v8, v5

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v6

    .line 497
    goto/16 :goto_28
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v2, "aid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v2, "authAccount"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 216
    iput p3, p0, Lcom/google/android/finsky/services/RestoreService;->mServiceStartId:I

    .line 217
    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    const/4 v0, 0x3

    .line 223
    :goto_9
    return v0

    .line 222
    :cond_a
    invoke-virtual {p0, p3}, Lcom/google/android/finsky/services/RestoreService;->stopSelf(I)V

    .line 223
    const/4 v0, 0x2

    goto :goto_9
.end method
