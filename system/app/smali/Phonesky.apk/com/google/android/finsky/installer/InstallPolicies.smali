.class public Lcom/google/android/finsky/installer/InstallPolicies;
.super Ljava/lang/Object;
.source "InstallPolicies.java"


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mMaxBytesOverMobile:J

.field private mMaxBytesOverMobileRecommended:J

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V
    .registers 7
    .parameter "resolver"
    .parameter "packageManager"
    .parameter "appStates"
    .parameter "libraries"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/finsky/installer/InstallPolicies;->setMobileDownloadThresholds(Landroid/content/ContentResolver;)V

    .line 55
    iput-object p2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 58
    iput-object p3, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 59
    iput-object p4, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 60
    return-void
.end method

.method private containsDangerousNewPermissions(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageManager;)Z
    .registers 16
    .parameter "packageName"
    .parameter
    .parameter "packageManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .local p2, appPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 294
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 295
    .local v4, newPermissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz p2, :cond_23

    .line 298
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 300
    .local v7, permission:Ljava/lang/String;
    const/4 v11, 0x0

    :try_start_19
    invoke-virtual {p3, v7, v11}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v8

    .line 302
    .local v8, permissionInfo:Landroid/content/pm/PermissionInfo;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_c

    .line 303
    .end local v8           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :catch_21
    move-exception v11

    goto :goto_c

    .line 310
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #permission:Ljava/lang/String;
    :cond_23
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 312
    .local v5, oldPermissions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v11, 0x1000

    invoke-virtual {p3, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 314
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_42

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v11, :cond_42

    .line 315
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_38
    if-ge v1, v3, :cond_42

    aget-object v7, v0, v1

    .line 316
    .restart local v7       #permission:Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 320
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v7           #permission:Ljava/lang/String;
    :cond_42
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PermissionInfo;

    .line 321
    .restart local v8       #permissionInfo:Landroid/content/pm/PermissionInfo;
    iget v11, v8, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v11, v9, :cond_62

    move v2, v9

    .line 323
    .local v2, isDangerous:Z
    :goto_57
    if-eqz v2, :cond_46

    iget-object v11, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_46

    .line 327
    .end local v2           #isDangerous:Z
    .end local v8           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :goto_61
    return v9

    .restart local v8       #permissionInfo:Landroid/content/pm/PermissionInfo;
    :cond_62
    move v2, v10

    .line 321
    goto :goto_57

    .end local v8           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :cond_64
    move v9, v10

    .line 327
    goto :goto_61
.end method

.method private setMobileDownloadThresholds(Landroid/content/ContentResolver;)V
    .registers 8
    .parameter "resolver"

    .prologue
    const-wide/16 v4, 0x0

    .line 109
    sget-object v2, Lcom/google/android/finsky/config/G;->downloadBytesOverMobileMaximum:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobile:J

    .line 110
    sget-object v2, Lcom/google/android/finsky/config/G;->downloadBytesOverMobileRecommended:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J

    .line 114
    :try_start_1e
    const-string v2, "download_manager_max_bytes_over_mobile"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 116
    .local v0, newLimit:J
    cmp-long v2, v0, v4

    if-lez v2, :cond_30

    iget-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobile:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_30

    .line 117
    iput-wide v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobile:J
    :try_end_30
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1e .. :try_end_30} :catch_4f

    .line 122
    .end local v0           #newLimit:J
    :cond_30
    :goto_30
    :try_start_30
    const-string v2, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 124
    .restart local v0       #newLimit:J
    cmp-long v2, v0, v4

    if-lez v2, :cond_42

    iget-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_42

    .line 125
    iput-wide v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J
    :try_end_42
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_30 .. :try_end_42} :catch_4d

    .line 131
    .end local v0           #newLimit:J
    :cond_42
    :goto_42
    iget-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J

    iget-wide v4, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobile:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J

    .line 133
    return-void

    .line 127
    :catch_4d
    move-exception v2

    goto :goto_42

    .line 119
    :catch_4f
    move-exception v2

    goto :goto_30
.end method


# virtual methods
.method public canUpdateApp(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/api/model/Document;)Z
    .registers 11
    .parameter "packageState"
    .parameter "app"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    if-nez p1, :cond_5

    .line 183
    :cond_4
    :goto_4
    return v3

    .line 165
    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v5}, Lcom/google/android/finsky/library/Libraries;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_14

    .line 166
    const-string v5, "Library not loaded."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_14
    iget v0, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    .line 169
    .local v0, installedVersion:I
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v2

    .line 170
    .local v2, serverAssetVersion:I
    iget-boolean v5, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-nez v5, :cond_4

    .line 174
    iget-object v1, p1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->packageName:Ljava/lang/String;

    .line 175
    .local v1, packageName:Ljava/lang/String;
    if-le v2, v0, :cond_4

    .line 176
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {p2, v5, v6}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 177
    const-string v5, "Cannot update unavailable app: pkg=%s,restriction=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_44
    move v3, v4

    .line 181
    goto :goto_4
.end method

.method public getApplicationsEligibleForAutoUpdate(Ljava/util/List;Z)Ljava/util/List;
    .registers 20
    .parameter
    .parameter "useAutoUpdateFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, docsFromServer:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/installer/InstallPolicies;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v14}, Lcom/google/android/finsky/library/Libraries;->isLoaded()Z

    move-result v14

    if-nez v14, :cond_12

    .line 201
    const-string v14, "Library not loaded."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/installer/InstallPolicies;->isMobileNetwork()Z

    move-result v14

    if-eqz v14, :cond_53

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/installer/InstallPolicies;->getMaxBytesOverMobileRecommended()J

    move-result-wide v3

    .line 208
    .local v3, autoUpdateSizeLimit:J
    :goto_1c
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 209
    .local v7, docsToUpdate:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_bf

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    .line 210
    .local v6, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    .line 211
    .local v1, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 213
    .local v12, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/installer/InstallPolicies;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v14, v12}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v2

    .line 214
    .local v2, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v2, :cond_46

    iget-object v14, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-nez v14, :cond_59

    .line 215
    :cond_46
    const-string v14, "Server thinks we have an asset that we don\'t have : %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_24

    .line 205
    .end local v1           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .end local v2           #appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .end local v3           #autoUpdateSizeLimit:J
    .end local v6           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v7           #docsToUpdate:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #packageName:Ljava/lang/String;
    :cond_53
    const-wide v3, 0x7fffffffffffffffL

    goto :goto_1c

    .line 218
    .restart local v1       #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .restart local v2       #appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .restart local v3       #autoUpdateSizeLimit:J
    .restart local v6       #doc:Lcom/google/android/finsky/api/model/Document;
    .restart local v7       #docsToUpdate:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v12       #packageName:Ljava/lang/String;
    :cond_59
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v14

    iget-object v15, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v15, v15, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    if-le v14, v15, :cond_24

    .line 223
    if-eqz p2, :cond_83

    .line 224
    sget-object v5, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 225
    .local v5, autoUpdateState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    iget-object v14, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v14, :cond_71

    .line 226
    iget-object v14, v2, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v14}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v5

    .line 229
    :cond_71
    sget-object v14, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    if-ne v5, v14, :cond_a5

    .line 230
    sget-object v14, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v14}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 234
    .local v13, shouldAutoUpdate:Z
    :goto_81
    if-eqz v13, :cond_24

    .line 251
    .end local v5           #autoUpdateState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .end local v13           #shouldAutoUpdate:Z
    :cond_83
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize()Z

    move-result v14

    if-eqz v14, :cond_ad

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v10

    .line 253
    .local v10, installSize:J
    :goto_8d
    cmp-long v14, v10, v3

    if-gez v14, :cond_24

    .line 259
    :try_start_91
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/installer/InstallPolicies;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v15}, Lcom/google/android/finsky/installer/InstallPolicies;->containsDangerousNewPermissions(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageManager;)Z
    :try_end_9e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_91 .. :try_end_9e} :catch_b0

    move-result v14

    if-nez v14, :cond_24

    .line 270
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 232
    .end local v10           #installSize:J
    .restart local v5       #autoUpdateState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    :cond_a5
    sget-object v14, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->ENABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    if-ne v5, v14, :cond_ab

    const/4 v13, 0x1

    .restart local v13       #shouldAutoUpdate:Z
    :goto_aa
    goto :goto_81

    .end local v13           #shouldAutoUpdate:Z
    :cond_ab
    const/4 v13, 0x0

    goto :goto_aa

    .line 251
    .end local v5           #autoUpdateState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    :cond_ad
    const-wide/16 v10, 0x0

    goto :goto_8d

    .line 263
    .restart local v10       #installSize:J
    :catch_b0
    move-exception v8

    .line 265
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "Asset %s marked installed but not in pkg mgr"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_24

    .line 273
    .end local v1           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .end local v2           #appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .end local v6           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #installSize:J
    .end local v12           #packageName:Ljava/lang/String;
    :cond_bf
    return-object v7
.end method

.method public getApplicationsWithUpdates(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 147
    .local v2, outdated:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 148
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, packageName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v5}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v4

    .line 150
    .local v4, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    invoke-virtual {p0, v4, v0}, Lcom/google/android/finsky/installer/InstallPolicies;->canUpdateApp(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 151
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 154
    .end local v0           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_30
    return-object v2
.end method

.method public getMaxBytesOverMobile()J
    .registers 3

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobile:J

    return-wide v0
.end method

.method public getMaxBytesOverMobileRecommended()J
    .registers 3

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mMaxBytesOverMobileRecommended:J

    return-wide v0
.end method

.method public hasMobileNetwork()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 85
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public isMobileNetwork()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 67
    iget-object v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 68
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isWifiNetwork()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 75
    iget-object v2, p0, Lcom/google/android/finsky/installer/InstallPolicies;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 76
    .local v0, wifiInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method
