.class public Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdatesAvailableReceiver.java"


# instance fields
.field private final mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueuedAssets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->mAccounts:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->mQueuedAssets:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->mQueuedAssets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->checkForUpdates(Landroid/content/Context;)V

    return-void
.end method

.method private checkForUpdates(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->notifyUpdatesAvailable(Landroid/content/Context;)V

    .line 79
    :goto_b
    return-void

    .line 65
    :cond_c
    iget-object v1, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->mAccounts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 66
    .local v0, account:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$1;-><init>(Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;Landroid/accounts/Account;Landroid/content/Context;)V

    new-instance v3, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$2;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver$2;-><init>(Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/remoting/api/VendingApi;->getVendingHistory(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_b
.end method

.method private notifyUpdatesAvailable(Landroid/content/Context;)V
    .registers 20
    .parameter "context"

    .prologue
    .line 82
    sget-object v14, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_UPDATE_CHECK_TIME:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v10

    .line 85
    .local v10, installer:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, currAccountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v13

    .line 87
    .local v13, packageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->mQueuedAssets:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_31
    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ef

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 88
    .local v1, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->mQueuedAssets:Ljava/util/HashMap;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 91
    .local v4, assets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    invoke-virtual {v10, v4}, Lcom/google/android/finsky/receivers/Installer;->getAppsWithUpdates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, appsWithUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    const-string v14, "%d apps with updates."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    sget-object v14, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v14}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_73

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/utils/Utils;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_7e

    .line 97
    :cond_73
    const/4 v14, 0x1

    invoke-virtual {v10, v2, v14}, Lcom/google/android/finsky/receivers/Installer;->getAppsEligibleForAutoUpdate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    .line 101
    .local v5, autoUpdateApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    invoke-virtual {v10, v5}, Lcom/google/android/finsky/receivers/Installer;->attemptInstallAssets(Ljava/util/List;)V

    .line 103
    invoke-interface {v2, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 108
    .end local v5           #autoUpdateApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    :cond_7e
    iget-object v14, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a4

    .line 109
    const/4 v7, 0x0

    .line 110
    .local v7, hasUpdatesForNonSystemApps:Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_8b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/vending/model/Asset;

    .line 111
    .local v3, asset:Lcom/google/android/vending/model/Asset;
    invoke-virtual {v3}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/finsky/utils/PackageInfoCache;->isSystemPackage(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8b

    .line 112
    const/4 v7, 0x1

    .line 117
    .end local v3           #asset:Lcom/google/android/vending/model/Asset;
    :cond_a2
    if-eqz v7, :cond_31

    .line 126
    .end local v7           #hasUpdatesForNonSystemApps:Z
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_a4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    .line 127
    .local v11, manualUpdateCount:I
    if-lez v11, :cond_31

    sget-object v14, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v14}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_31

    .line 128
    const-string v14, "Notifying user that [%d] applications that have updates."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v12

    .line 131
    .local v12, notifier:Lcom/google/android/finsky/utils/Notifier;
    const/4 v14, 0x1

    if-ne v11, v14, :cond_e8

    .line 132
    iget-object v15, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/vending/model/Asset;

    invoke-virtual {v14}, Lcom/google/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v15, v14}, Lcom/google/android/finsky/utils/Notifier;->showSingleUpdateAvailableMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 135
    :cond_e8
    iget-object v14, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v12, v14, v11}, Lcom/google/android/finsky/utils/Notifier;->showUpdatesAvailableMessage(Ljava/lang/String;I)V

    goto/16 :goto_31

    .line 139
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #appsWithUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    .end local v4           #assets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/model/Asset;>;"
    .end local v11           #manualUpdateCount:I
    .end local v12           #notifier:Lcom/google/android/finsky/utils/Notifier;
    :cond_ef
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 42
    const-string v4, "Received updates available notification"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_20

    invoke-static {p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->setupAccountFromPreferences(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 45
    const-string v4, "Could not set up current account / dfe api when receiving an updates available broadcast."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :goto_1f
    return-void

    .line 50
    :cond_20
    invoke-static {p1}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_26
    if-ge v2, v3, :cond_32

    aget-object v0, v1, v2

    .line 51
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, p0, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 54
    .end local v0           #account:Landroid/accounts/Account;
    :cond_32
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/UpdatesAvailableReceiver;->checkForUpdates(Landroid/content/Context;)V

    goto :goto_1f
.end method
