.class public Lcom/google/android/finsky/services/RestoreService;
.super Landroid/app/Service;
.source "RestoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;,
        Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    }
.end annotation


# instance fields
.field private mDebugCountAlreadyTracked:I

.field private mDebugCountInstalledOtherAccount:I

.field private mDebugCountLowerVersion:I

.field private mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    new-instance v0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCheckinAssetStoreListener()Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;-><init>(Lcom/google/android/finsky/services/RestoreService;Lcom/google/android/finsky/services/CheckinAssetStoreListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    .line 70
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadQueue;->addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/services/RestoreService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/services/RestoreService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/services/RestoreService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/services/RestoreService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/services/RestoreService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountLowerVersion:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/services/RestoreService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountLowerVersion:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/services/RestoreService;Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/services/RestoreService;->shouldRestore(Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/services/RestoreService;)Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)Z
    .registers 16
    .parameter "intent"

    .prologue
    .line 226
    const-string v10, "aid"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, aidString:Ljava/lang/String;
    if-nez v4, :cond_12

    .line 229
    const-string v10, "Expecting a non-null aid extra"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    const/4 v10, 0x0

    .line 271
    :goto_11
    return v10

    .line 236
    :cond_12
    sget-object v10, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_RECONSTRUCT_TIMESTAMP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v10}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_33

    .line 237
    const-string v10, "Putting off application restore because reconstruct hasn\'t yet completed."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    sget-object v10, Lcom/google/android/finsky/utils/VendingPreferences;->PENDING_RESTORE_AID:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v10, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 240
    const/4 v10, 0x0

    goto :goto_11

    .line 243
    :cond_33
    const-wide/16 v2, -0x1

    .line 246
    .local v2, aid:J
    const/16 v10, 0x10

    :try_start_37
    invoke-static {v4, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_3a} :catch_4f

    move-result-wide v2

    .line 252
    sget-object v10, Lcom/google/android/finsky/utils/VendingPreferences;->PENDING_RESTORE_ACCOUNT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v10}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 253
    .local v9, specificAccount:Ljava/lang/String;
    if-eqz v9, :cond_5a

    .line 255
    invoke-direct {p0, v2, v3, v9}, Lcom/google/android/finsky/services/RestoreService;->restore(JLjava/lang/String;)V

    .line 256
    sget-object v10, Lcom/google/android/finsky/utils/VendingPreferences;->PENDING_RESTORE_ACCOUNT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v10}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    .line 271
    :cond_4d
    const/4 v10, 0x1

    goto :goto_11

    .line 247
    .end local v9           #specificAccount:Ljava/lang/String;
    :catch_4f
    move-exception v6

    .line 248
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v10, "Provided aid can\'t be parsed as long"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    const/4 v10, 0x0

    goto :goto_11

    .line 259
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #specificAccount:Ljava/lang/String;
    :cond_5a
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 262
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v10, v1

    if-gtz v10, :cond_6b

    .line 263
    const-string v10, "RestoreService can\'t run - no accounts configured on device!"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    const/4 v10, 0x0

    goto :goto_11

    .line 267
    :cond_6b
    move-object v5, v1

    .local v5, arr$:[Landroid/accounts/Account;
    array-length v8, v5

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_6e
    if-ge v7, v8, :cond_4d

    aget-object v0, v5, v7

    .line 268
    .local v0, a:Landroid/accounts/Account;
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v10}, Lcom/google/android/finsky/services/RestoreService;->restore(JLjava/lang/String;)V

    .line 267
    add-int/lit8 v7, v7, 0x1

    goto :goto_6e
.end method

.method private restore(JLjava/lang/String;)V
    .registers 10
    .parameter "aid"
    .parameter "accountName"

    .prologue
    .line 333
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, aidString:Ljava/lang/String;
    const-string v3, "Start restore for aid:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    new-instance v3, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    invoke-direct {v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setBackupAndroidId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v3

    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setTosVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setDeviceConfiguration(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v2

    .line 342
    .local v2, request:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    .line 344
    .local v1, api:Lcom/google/android/vending/remoting/api/VendingApi;
    new-instance v3, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;

    invoke-direct {v3, p0, p3}, Lcom/google/android/finsky/services/RestoreService$RestoreResponseListener;-><init>(Lcom/google/android/finsky/services/RestoreService;Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/finsky/services/RestoreService$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/services/RestoreService$1;-><init>(Lcom/google/android/finsky/services/RestoreService;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/vending/remoting/api/VendingApi;->restoreApplications(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 355
    return-void
.end method

.method private shouldRestore(Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;)Z
    .registers 11
    .parameter "properties"
    .parameter "account"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 378
    iget-object v4, p0, Lcom/google/android/finsky/services/RestoreService;->mTracker:Lcom/google/android/finsky/services/RestoreService$RestoreTracker;

    iget-object v5, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->isTracked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 379
    iget v2, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountAlreadyTracked:I

    .line 380
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v4, "install.restoreSkip"

    iget-object v5, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    const-string v6, "is-tracked"

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_23
    return v3

    .line 387
    :cond_24
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v1

    .line 388
    .local v1, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-eqz v1, :cond_56

    invoke-interface {v1}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 389
    iget v2, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountInstalledOtherAccount:I

    .line 390
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v4, "install.restoreSkip"

    iget-object v5, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    const-string v6, "other-account"

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 396
    :cond_56
    iget-object v4, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-ne v4, v5, :cond_6a

    iget-object v4, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v4}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-eq v4, v5, :cond_8d

    .line 398
    :cond_6a
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v4

    if-nez v4, :cond_8d

    .line 399
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v4

    const-string v5, "install.restoreSkip"

    iget-object v6, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    const-string v7, "obb-storage"

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v4, "Skipping restore of %s because OBB required but no external storage"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23

    .line 408
    :cond_8d
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v0

    .line 410
    .local v0, installedVersionCode:I
    iget v4, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->versionCode:I

    if-lt v0, v4, :cond_b6

    .line 411
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v4

    const-string v5, "install.restoreSkip"

    iget-object v6, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    const-string v7, "older-version"

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget v4, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountLowerVersion:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/finsky/services/RestoreService;->mDebugCountLowerVersion:I

    .line 415
    :cond_b6
    iget v4, p1, Lcom/google/android/finsky/download/Download$PackageProperties;->versionCode:I

    if-ge v0, v4, :cond_bd

    :goto_ba
    move v3, v2

    goto/16 :goto_23

    :cond_bd
    move v2, v3

    goto :goto_ba
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    const-string v2, "aid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 66
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService;->handleIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 210
    const/4 v0, 0x3

    .line 214
    :goto_7
    return v0

    .line 213
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/services/RestoreService;->stopSelf()V

    .line 214
    const/4 v0, 0x2

    goto :goto_7
.end method
