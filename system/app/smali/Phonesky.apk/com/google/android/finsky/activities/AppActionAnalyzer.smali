.class public Lcom/google/android/finsky/activities/AppActionAnalyzer;
.super Ljava/lang/Object;
.source "AppActionAnalyzer.java"


# instance fields
.field public installedVersion:I

.field public isActiveDeviceAdmin:Z

.field public isContinueLaunch:Z

.field public isDisabled:Z

.field public isDisabledByUser:Z

.field public isInstalled:Z

.field public isInstalledOwnedPackage:Z

.field public isInstalledSystemApp:Z

.field public isLaunchable:Z

.field public isRefundable:Z

.field public isUninstallable:Z

.field public isUpdatedSystemApp:Z

.field public refundAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V
    .registers 16
    .parameter "packageName"
    .parameter "appStates"
    .parameter "libraries"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    .line 25
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    .line 26
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    .line 27
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUpdatedSystemApp:Z

    .line 28
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    .line 29
    const/4 v8, -0x1

    iput v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    .line 30
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isActiveDeviceAdmin:Z

    .line 33
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    .line 34
    iput-object v4, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    .line 37
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    .line 38
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isContinueLaunch:Z

    .line 39
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    .line 40
    iput-boolean v10, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabledByUser:Z

    .line 44
    invoke-virtual {p2, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v1

    .line 47
    .local v1, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v1, :cond_67

    iget-object v8, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v8, :cond_67

    .line 49
    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    .line 51
    iget-object v7, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 52
    .local v7, packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    iget v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    iput v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    .line 54
    iget-boolean v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    .line 55
    iget-boolean v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isUpdatedSystemApp:Z

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUpdatedSystemApp:Z

    .line 56
    iget-boolean v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isActiveDeviceAdmin:Z

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isActiveDeviceAdmin:Z

    .line 57
    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isActiveDeviceAdmin:Z

    if-nez v8, :cond_c2

    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    if-eqz v8, :cond_4b

    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUpdatedSystemApp:Z

    if-eqz v8, :cond_c2

    :cond_4b
    move v8, v9

    :goto_4c
    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    .line 59
    invoke-virtual {p2}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->canLaunch(Ljava/lang/String;)Z

    move-result v2

    .line 60
    .local v2, canLaunch:Z
    iget-boolean v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    .line 61
    iget-boolean v8, v7, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabledByUser:Z

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabledByUser:Z

    .line 62
    if-eqz v2, :cond_c4

    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-nez v8, :cond_c4

    move v8, v9

    :goto_65
    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    .line 67
    .end local v2           #canLaunch:Z
    .end local v7           #packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_67
    sget-object v3, Lcom/google/android/finsky/library/LibraryAppEntry;->ANY_CERTIFICATE_HASHES:[Ljava/lang/String;

    .line 68
    .local v3, certificateHashes:[Ljava/lang/String;
    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v8, :cond_71

    .line 69
    iget-object v8, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v3, v8, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    .line 71
    :cond_71
    invoke-virtual {p3, p1, v3}, Lcom/google/android/finsky/library/Libraries;->getAppEntries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 73
    .local v5, libraryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c6

    move v6, v9

    .line 74
    .local v6, ownedByAnyAccount:Z
    :goto_7c
    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v8, :cond_c8

    if-eqz v6, :cond_c8

    move v8, v9

    :goto_83
    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    .line 75
    if-nez v1, :cond_ca

    .line 76
    .local v4, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :goto_87
    invoke-static {v4, v5}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    .line 77
    iget-object v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    if-eqz v8, :cond_cd

    move v8, v9

    :goto_92
    iput-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    .line 80
    iget-boolean v8, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v8, :cond_ad

    if-nez v6, :cond_ad

    .line 81
    invoke-virtual {p3, p1}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, anyCertificateOwners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_ad

    .line 83
    const-string v8, "%s is installed but certificate mistmatch"

    new-array v11, v9, [Ljava/lang/Object;

    aput-object p1, v11, v10

    invoke-static {v8, v11}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .end local v0           #anyCertificateOwners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :cond_ad
    if-eqz v1, :cond_c1

    iget-object v8, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v8, :cond_c1

    .line 88
    iget-object v8, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v8}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_cf

    :goto_bf
    iput-boolean v9, p0, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isContinueLaunch:Z

    .line 90
    :cond_c1
    return-void

    .end local v3           #certificateHashes:[Ljava/lang/String;
    .end local v4           #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .end local v5           #libraryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    .end local v6           #ownedByAnyAccount:Z
    .restart local v7       #packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_c2
    move v8, v10

    .line 57
    goto :goto_4c

    .restart local v2       #canLaunch:Z
    :cond_c4
    move v8, v10

    .line 62
    goto :goto_65

    .end local v2           #canLaunch:Z
    .end local v7           #packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    .restart local v3       #certificateHashes:[Ljava/lang/String;
    .restart local v5       #libraryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    :cond_c6
    move v6, v10

    .line 73
    goto :goto_7c

    .restart local v6       #ownedByAnyAccount:Z
    :cond_c8
    move v8, v10

    .line 74
    goto :goto_83

    .line 75
    :cond_ca
    iget-object v4, v1, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    goto :goto_87

    .restart local v4       #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :cond_cd
    move v8, v10

    .line 77
    goto :goto_92

    :cond_cf
    move v9, v10

    .line 88
    goto :goto_bf
.end method

.method public static getInstallAccount(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;
    .registers 10
    .parameter "packageName"
    .parameter "preferredAccount"
    .parameter "appStates"
    .parameter "libraries"

    .prologue
    .line 105
    invoke-virtual {p3, p0}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 106
    .local v3, owners:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 120
    .end local p1
    :cond_a
    :goto_a
    return-object p1

    .line 109
    .restart local p1
    :cond_b
    invoke-virtual {p2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    .line 110
    .local v1, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    if-eqz v1, :cond_33

    .line 111
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 112
    .local v2, owner:Landroid/accounts/Account;
    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move-object p1, v2

    .line 113
    goto :goto_a

    .line 117
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #owner:Landroid/accounts/Account;
    :cond_33
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 118
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    move-object p1, v4

    goto :goto_a
.end method

.method private static getRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .parameter "installerData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryAppEntry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, libraryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->internalGetRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static internalGetRefundAccount(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/util/List;J)Ljava/lang/String;
    .registers 12
    .parameter "installerData"
    .parameter
    .parameter "nowMs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryAppEntry;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, libraryEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryAppEntry;>;"
    const-wide/16 v1, 0x0

    .line 132
    .local v1, firstDownloadMs:J
    if-eqz p0, :cond_8

    .line 133
    invoke-virtual {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFirstDownloadMs()J

    move-result-wide v1

    .line 135
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryAppEntry;

    .line 137
    .local v0, appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    iget-wide v4, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPreDeliveryEndtimeMs:J

    .line 138
    .local v4, refundEndtimeMs:J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-eqz v6, :cond_27

    .line 139
    iget-wide v6, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->refundPostDeliveryWindowMs:J

    add-long/2addr v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 142
    :cond_27
    cmp-long v6, v4, p2

    if-ltz v6, :cond_c

    .line 143
    iget-object v6, v0, Lcom/google/android/finsky/library/LibraryAppEntry;->accountName:Ljava/lang/String;

    .line 146
    .end local v0           #appEntry:Lcom/google/android/finsky/library/LibraryAppEntry;
    .end local v4           #refundEndtimeMs:J
    :goto_2d
    return-object v6

    :cond_2e
    const/4 v6, 0x0

    goto :goto_2d
.end method
