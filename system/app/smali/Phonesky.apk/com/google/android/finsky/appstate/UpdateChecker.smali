.class public Lcom/google/android/finsky/appstate/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.java"


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;

.field private final mDfeApiProvider:Lcom/google/android/finsky/api/DfeApiProvider;

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private final mNotifier:Lcom/google/android/finsky/utils/Notifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/api/DfeApiProvider;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/utils/Notifier;)V
    .registers 8
    .parameter "context"
    .parameter "libraries"
    .parameter "appStates"
    .parameter "dfeApiProvider"
    .parameter "installPolicies"
    .parameter "installer"
    .parameter "notifier"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 46
    iput-object p3, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 47
    iput-object p4, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeApiProvider:Lcom/google/android/finsky/api/DfeApiProvider;

    .line 48
    iput-object p5, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    .line 49
    iput-object p6, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 50
    iput-object p7, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/library/Libraries;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/appstate/AppStates;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/appstate/UpdateChecker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/appstate/UpdateChecker;Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/appstate/UpdateChecker;->handleUpdates(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/appstate/UpdateChecker;)Lcom/google/android/finsky/api/DfeApiProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mDfeApiProvider:Lcom/google/android/finsky/api/DfeApiProvider;

    return-object v0
.end method

.method private handleUpdates(Landroid/content/Context;Ljava/util/List;)V
    .registers 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v2, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/installer/InstallPolicies;->getApplicationsWithUpdates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, appsWithUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v2}, Lcom/google/android/finsky/installer/InstallPolicies;->isWifiNetwork()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 143
    :cond_1c
    iget-object v2, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/finsky/installer/InstallPolicies;->getApplicationsEligibleForAutoUpdate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, autoUpdateApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v2, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    const-string v3, "auto_update"

    invoke-interface {v2, v1, v3}, Lcom/google/android/finsky/receivers/Installer;->updateInstalledApps(Ljava/util/List;Ljava/lang/String;)V

    .line 146
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 149
    .end local v1           #autoUpdateApps:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    :cond_2d
    invoke-direct {p0, v0}, Lcom/google/android/finsky/appstate/UpdateChecker;->showManualUpdateNotifications(Ljava/util/List;)V

    .line 150
    return-void
.end method

.method private showManualUpdateNotifications(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, manualUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    .local v0, count:I
    if-lez v0, :cond_34

    sget-object v1, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 155
    const-string v1, "Notifying user that [%d] applications have updates."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    if-ne v0, v5, :cond_35

    .line 157
    iget-object v2, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/finsky/utils/Notifier;->showSingleUpdateAvailableMessage(Ljava/lang/String;)V

    .line 162
    :cond_34
    :goto_34
    return-void

    .line 159
    :cond_35
    iget-object v1, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/utils/Notifier;->showUpdatesAvailableMessage(I)V

    goto :goto_34
.end method


# virtual methods
.method public checkForUpdates(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 11
    .parameter "successRunnable"
    .parameter "errorRunnable"

    .prologue
    const/4 v7, 0x0

    .line 67
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 68
    .local v6, account:Landroid/accounts/Account;
    if-nez v6, :cond_11

    .line 69
    if-eqz p1, :cond_10

    .line 70
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 136
    :cond_10
    :goto_10
    return-void

    .line 74
    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_25

    .line 75
    const-string v0, "Require loaded app states to perform update check."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    if-eqz p2, :cond_25

    .line 77
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 80
    :cond_25
    move-object v3, v6

    .line 82
    .local v3, finalAccount:Landroid/accounts/Account;
    new-instance v2, Lcom/google/android/finsky/appstate/GmsCoreHelper;

    iget-object v0, p0, Lcom/google/android/finsky/appstate/UpdateChecker;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {v2, v0, v3}, Lcom/google/android/finsky/appstate/GmsCoreHelper;-><init>(Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)V

    .line 85
    .local v2, gmsCoreHelper:Lcom/google/android/finsky/appstate/GmsCoreHelper;
    new-instance v0, Lcom/google/android/finsky/appstate/UpdateChecker$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/appstate/UpdateChecker$1;-><init>(Lcom/google/android/finsky/appstate/UpdateChecker;Lcom/google/android/finsky/appstate/GmsCoreHelper;Landroid/accounts/Account;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/UpdateChecker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_10
.end method
