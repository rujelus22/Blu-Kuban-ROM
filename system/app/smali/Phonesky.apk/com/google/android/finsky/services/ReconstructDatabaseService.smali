.class public Lcom/google/android/finsky/services/ReconstructDatabaseService;
.super Landroid/app/Service;
.source "ReconstructDatabaseService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/services/ReconstructDatabaseService;Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/download/DownloadQueue;Ljava/util/List;Ljava/lang/String;)I
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->updateFromReconstruct(Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/download/DownloadQueue;Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/services/ReconstructDatabaseService;Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->initiateReconstruct(Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V

    return-void
.end method

.method public static forceReconstruct(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 143
    invoke-static {}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->resetDatabaseSyncStatus()V

    .line 144
    invoke-static {p0}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->reconstructIfNecessary(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method public static handledDatabaseSync()V
    .registers 2

    .prologue
    .line 166
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->RECONCILED_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method private initiateReconstruct(Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V
    .registers 5
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/services/CombinedResponseListener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, listener:Lcom/google/android/finsky/services/CombinedResponseListener;,"Lcom/google/android/finsky/services/CombinedResponseListener<Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;>;"
    new-instance v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    invoke-direct {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;-><init>()V

    .line 128
    .local v0, request:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;->setRetrieveFullHistory(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    .line 130
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p2}, Lcom/google/android/vending/remoting/api/VendingApi;->reconstructDatabase(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 131
    return-void
.end method

.method public static isDatabaseSyncNecessary()Z
    .registers 2

    .prologue
    .line 174
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->RECONCILED_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->RECONCILED_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getVersionCode()I

    move-result v1

    if-eq v0, v1, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static reconstructIfNecessary(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 148
    invoke-static {}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->isDatabaseSyncNecessary()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RUN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    const-class v1, Lcom/google/android/finsky/services/ReconstructDatabaseService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 153
    :cond_15
    return-void
.end method

.method public static resetDatabaseSyncStatus()V
    .registers 2

    .prologue
    .line 184
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->RECONCILED_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method private updateFromReconstruct(Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/download/DownloadQueue;Ljava/util/List;Ljava/lang/String;)I
    .registers 9
    .parameter "packageInfoCache"
    .parameter "assetStore"
    .parameter "downloadQueue"
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/utils/PackageInfoCache;",
            "Lcom/google/android/finsky/local/AssetStore;",
            "Lcom/google/android/finsky/download/DownloadQueue;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 135
    .local p4, assets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;>;"
    new-instance v1, Lcom/google/android/finsky/services/Reconstructor;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/finsky/services/Reconstructor;-><init>(Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/download/DownloadQueue;Ljava/util/List;)V

    invoke-virtual {v1, p5}, Lcom/google/android/finsky/services/Reconstructor;->reconstruct(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, numLocalChanges:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reconstruct finished for account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changes to the local database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return v0
.end method


# virtual methods
.method protected handleIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 38
    if-nez p1, :cond_4

    .line 123
    :cond_3
    :goto_3
    return-void

    .line 42
    :cond_4
    invoke-static {}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->isDatabaseSyncNecessary()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 48
    .local v0, accounts:[Landroid/accounts/Account;
    new-instance v1, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/services/ReconstructDatabaseService$1;-><init>(Lcom/google/android/finsky/services/ReconstructDatabaseService;[Landroid/accounts/Account;)V

    .line 116
    .local v1, listener:Lcom/google/android/finsky/services/CombinedResponseListener;,"Lcom/google/android/finsky/services/CombinedResponseListener<Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;>;"
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 118
    const-string v2, "Suspending checkin listener as reconstruction begins."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCheckinAssetStoreListener()Lcom/google/android/finsky/services/CheckinAssetStoreListener;

    move-result-object v2

    const-string v3, "ReconstructDatabaseService"

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->suspend(Ljava/lang/String;)V

    .line 121
    aget-object v2, v0, v4

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->initiateReconstruct(Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V

    goto :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/services/ReconstructDatabaseService;->handleIntent(Landroid/content/Intent;)V

    .line 34
    const/4 v0, 0x2

    return v0
.end method
