.class public Lcom/google/android/finsky/services/ContentSyncService;
.super Landroid/app/Service;
.source "ContentSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/services/ContentSyncService$Facade;,
        Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/services/ContentSyncService;Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/services/ContentSyncService;->attemptContentSync(Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V

    return-void
.end method

.method private attemptContentSync(Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V
    .registers 12
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/services/CombinedResponseListener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, listener:Lcom/google/android/finsky/services/CombinedResponseListener;,"Lcom/google/android/finsky/services/CombinedResponseListener<Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;>;"
    const/4 v8, 0x0

    .line 117
    if-nez p1, :cond_e

    .line 118
    const-string v5, "Called attemptContentSync with null account."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/finsky/services/ContentSyncService;->stopSelf()V

    .line 136
    :goto_d
    return-void

    .line 123
    :cond_e
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    .line 124
    .local v0, assetStore:Lcom/google/android/finsky/local/AssetStore;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v1

    .line 125
    .local v1, packageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    invoke-virtual {p0}, Lcom/google/android/finsky/services/ContentSyncService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 127
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v3, Lcom/google/android/finsky/services/ContentSyncRequestProducer;

    invoke-direct {v3, v0, p1, v2, v1}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;-><init>(Lcom/google/android/finsky/local/AssetStore;Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/google/android/finsky/utils/PackageInfoCache;)V

    .line 130
    .local v3, producer:Lcom/google/android/finsky/services/ContentSyncRequestProducer;
    const-string v5, "Syncing account to sync; %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->getDebugReport()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v3}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->getRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v4

    .line 135
    .local v4, request:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v5

    invoke-virtual {v5, v4, p2, p2}, Lcom/google/android/vending/remoting/api/VendingApi;->syncContent(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_d
.end method

.method public static get()Lcom/google/android/finsky/services/ContentSyncService$Facade;
    .registers 1

    .prologue
    .line 171
    new-instance v0, Lcom/google/android/finsky/services/ContentSyncService$2;

    invoke-direct {v0}, Lcom/google/android/finsky/services/ContentSyncService$2;-><init>()V

    return-object v0
.end method

.method private getAccountsToSync()Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static/range {p0 .. p0}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v3

    .line 82
    .local v3, accounts:[Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 84
    .local v6, checkinAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;>;"
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v5

    .line 85
    .local v5, assetStore:Lcom/google/android/finsky/local/AssetStore;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v10

    .line 86
    .local v10, packageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/services/ContentSyncService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 88
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    move-object v4, v3

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v9, v4

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1f
    if-ge v8, v9, :cond_82

    aget-object v1, v4, v8

    .line 90
    .local v1, account:Landroid/accounts/Account;
    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 91
    .local v2, accountName:Ljava/lang/String;
    new-instance v12, Lcom/google/android/finsky/services/ContentSyncRequestProducer;

    invoke-direct {v12, v5, v2, v11, v10}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;-><init>(Lcom/google/android/finsky/local/AssetStore;Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/google/android/finsky/utils/PackageInfoCache;)V

    .line 95
    .local v12, producer:Lcom/google/android/finsky/services/ContentSyncRequestProducer;
    const-string v15, "Checking account to sync; %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v12}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->getDebugReport()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v12}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->getSystemAppsHash()I

    move-result v14

    .line 98
    .local v14, systemAppHash:I
    invoke-virtual {v12}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->getLocalAppsHash()I

    move-result v7

    .line 100
    .local v7, checkinHash:I
    invoke-static {v2}, Lcom/google/android/finsky/utils/VendingPreferences;->getLastCheckinHashProperty(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v7, v15, :cond_64

    .line 101
    new-instance v15, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2, v7, v14}, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;-><init>(Lcom/google/android/finsky/services/ContentSyncService;Ljava/lang/String;II)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_61
    :goto_61
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 104
    :cond_64
    invoke-static {v2}, Lcom/google/android/finsky/utils/VendingPreferences;->getLastSystemAppsHashProperty(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 106
    .local v13, savedSystemHash:I
    if-eq v13, v14, :cond_61

    .line 107
    const-string v15, "Possible bug: Skipping account despite system hash mismatch"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_61

    .line 112
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #accountName:Ljava/lang/String;
    .end local v7           #checkinHash:I
    .end local v12           #producer:Lcom/google/android/finsky/services/ContentSyncRequestProducer;
    .end local v13           #savedSystemHash:I
    .end local v14           #systemAppHash:I
    :cond_82
    return-object v6
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/finsky/services/ContentSyncService;->getAccountsToSync()Ljava/util/List;

    move-result-object v1

    .line 37
    .local v1, syncAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;>;"
    new-instance v0, Lcom/google/android/finsky/services/ContentSyncService$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/services/ContentSyncService$1;-><init>(Lcom/google/android/finsky/services/ContentSyncService;Ljava/util/List;)V

    .line 71
    .local v0, listener:Lcom/google/android/finsky/services/CombinedResponseListener;,"Lcom/google/android/finsky/services/CombinedResponseListener<Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1b

    .line 72
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;

    iget-object v2, v2, Lcom/google/android/finsky/services/ContentSyncService$CheckinHash;->account:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/finsky/services/ContentSyncService;->attemptContentSync(Ljava/lang/String;Lcom/google/android/finsky/services/CombinedResponseListener;)V

    .line 75
    :cond_1b
    const/4 v2, 0x2

    return v2
.end method
