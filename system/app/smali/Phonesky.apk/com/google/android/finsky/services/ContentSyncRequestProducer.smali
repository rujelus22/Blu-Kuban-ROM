.class public final Lcom/google/android/finsky/services/ContentSyncRequestProducer;
.super Ljava/lang/Object;
.source "ContentSyncRequestProducer.java"


# instance fields
.field private final mAccount:Ljava/lang/String;

.field mDebugLocalPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDebugNumLocalVersions:I

.field mDebugNumSystemPackages:I

.field mDebugSystemPackagesSent:Z

.field private mLocalAppsHash:I

.field private final mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

.field private final mStore:Lcom/google/android/finsky/local/AssetStore;

.field private mSystemAppsHash:I


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/local/AssetStore;Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/google/android/finsky/utils/PackageInfoCache;)V
    .registers 7
    .parameter "store"
    .parameter "account"
    .parameter "packageManager"
    .parameter "packageInfoCache"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugLocalPackages:Ljava/util/Set;

    .line 45
    iput v1, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugNumLocalVersions:I

    .line 46
    iput v1, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugNumSystemPackages:I

    .line 47
    iput-boolean v1, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugSystemPackagesSent:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 50
    iput v1, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mSystemAppsHash:I

    .line 51
    iput v1, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mLocalAppsHash:I

    .line 55
    iput-object p1, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mStore:Lcom/google/android/finsky/local/AssetStore;

    .line 56
    iput-object p2, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mAccount:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    iput-object p4, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    .line 60
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugLocalPackages:Ljava/util/Set;

    .line 62
    return-void
.end method

.method private addLocalAssetsToProto(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)V
    .registers 14
    .parameter "contentState"

    .prologue
    .line 103
    new-instance v2, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mStore:Lcom/google/android/finsky/local/AssetStore;

    iget-object v9, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mAccount:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/google/android/finsky/local/AssetStore;->getCompleteVersionHistory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    .local v2, history:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/local/LocalAssetVersion;>;"
    new-instance v8, Lcom/google/android/finsky/services/ContentSyncRequestProducer$1;

    invoke-direct {v8, p0}, Lcom/google/android/finsky/services/ContentSyncRequestProducer$1;-><init>(Lcom/google/android/finsky/services/ContentSyncRequestProducer;)V

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ca

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/local/LocalAssetVersion;

    .line 118
    .local v4, version:Lcom/google/android/finsky/local/LocalAssetVersion;
    iget-object v8, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugLocalPackages:Ljava/util/Set;

    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    iget v8, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugNumLocalVersions:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugNumLocalVersions:I

    .line 122
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, versionPackage:Ljava/lang/String;
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAssetVersion;->getVersionCode()I

    move-result v5

    .line 124
    .local v5, versionCode:I
    iget-object v8, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v8, v6}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, deviceInstalledVersionCode:I
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v7

    .line 129
    .local v7, versionState:Lcom/google/android/finsky/local/AssetState;
    sget-object v8, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-ne v7, v8, :cond_67

    if-eq v5, v1, :cond_67

    .line 130
    const-string v8, "Asset %s version %d not installed on phone but has asset state INSTALLED.  (Phone has version %d.)  Uploading as UNINSTALLED."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    sget-object v7, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    .line 139
    :cond_67
    sget-object v8, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-eq v7, v8, :cond_82

    if-ne v5, v1, :cond_82

    .line 140
    const-string v8, "Asset %s version %d is installed on phone but asset state %s. Uploading as-is."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_82
    new-instance v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    invoke-direct {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;-><init>()V

    .line 147
    .local v0, assetInstallState:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAssetVersion;->getAssetId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 148
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAssetVersion;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 149
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAssetVersion;->getVersionCode()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 150
    invoke-virtual {v7}, Lcom/google/android/finsky/local/AssetState;->getValue()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setAssetState(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 151
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAssetVersion;->getInstallTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_b4

    .line 152
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAssetVersion;->getInstallTime()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setInstallTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 154
    :cond_b4
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAssetVersion;->getUninstallTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_c5

    .line 155
    invoke-interface {v4}, Lcom/google/android/finsky/local/LocalAssetVersion;->getUninstallTime()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;->setUninstallTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;

    .line 157
    :cond_c5
    invoke-virtual {p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->addAssetInstallState(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    goto/16 :goto_19

    .line 159
    .end local v0           #assetInstallState:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$AssetInstallState;
    .end local v1           #deviceInstalledVersionCode:I
    .end local v4           #version:Lcom/google/android/finsky/local/LocalAssetVersion;
    .end local v5           #versionCode:I
    .end local v6           #versionPackage:Ljava/lang/String;
    .end local v7           #versionState:Lcom/google/android/finsky/local/AssetState;
    :cond_ca
    return-void
.end method

.method private addSystemAppsToProto(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)I
    .registers 14
    .parameter "contentState"

    .prologue
    .line 166
    iget-object v11, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v11}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->getSystemPackages(Landroid/content/pm/PackageManager;)Ljava/util/SortedSet;

    move-result-object v7

    .line 168
    .local v7, packages:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v7}, Ljava/util/SortedSet;->size()I

    move-result v11

    iput v11, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugNumSystemPackages:I

    .line 171
    iget-object v11, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mAccount:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/finsky/utils/VendingPreferences;->getLastSystemAppsHashProperty(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 172
    .local v6, oldHash:I
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->computeSystemAppsHash(Ljava/util/SortedSet;)I

    move-result v11

    iput v11, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mSystemAppsHash:I

    .line 175
    iget v11, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mSystemAppsHash:I

    if-eq v11, v6, :cond_77

    .line 176
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugSystemPackagesSent:Z

    .line 177
    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 178
    .local v4, info:Landroid/content/pm/PackageInfo;
    new-instance v9, Ljava/util/TreeSet;

    invoke-direct {v9}, Ljava/util/TreeSet;-><init>()V

    .line 180
    .local v9, signatureHashes:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Ljava/lang/String;>;"
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_42
    if-ge v3, v5, :cond_50

    aget-object v8, v0, v3

    .line 181
    .local v8, signature:Landroid/content/pm/Signature;
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->computeHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 184
    .end local v8           #signature:Landroid/content/pm/Signature;
    :cond_50
    new-instance v10, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    invoke-direct {v10}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;-><init>()V

    .line 186
    .local v10, systemApp:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    iget-object v11, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->setPackageName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    .line 187
    iget v11, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v11}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->setVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    .line 188
    invoke-interface {v9}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    .local v1, hash:Ljava/lang/String;
    invoke-virtual {v10, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;->addCertificateHash(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;

    goto :goto_63

    .line 191
    .end local v1           #hash:Ljava/lang/String;
    :cond_73
    invoke-virtual {p1, v10}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->addSystemApp(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;)Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    goto :goto_2d

    .line 194
    .end local v0           #arr$:[Landroid/content/pm/Signature;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    .end local v5           #len$:I
    .end local v9           #signatureHashes:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Ljava/lang/String;>;"
    .end local v10           #systemApp:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto$SystemApp;
    :cond_77
    iget v11, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mSystemAppsHash:I

    return v11
.end method

.method private makeProto()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    invoke-direct {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;-><init>()V

    .line 93
    .local v0, proto:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->addLocalAssetsToProto(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)V

    .line 94
    invoke-direct {p0, v0}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->addSystemAppsToProto(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)I

    .line 96
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mLocalAppsHash:I

    .line 98
    return-object v0
.end method


# virtual methods
.method computeHash(Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 3
    .parameter "signature"

    .prologue
    .line 216
    if-nez p1, :cond_5

    .line 217
    const-string v0, ""

    .line 220
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method computeSystemAppsHash(Ljava/util/SortedSet;)I
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, packages:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .line 204
    .local v0, hash:I
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 205
    .local v2, p:Landroid/content/pm/PackageInfo;
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 206
    mul-int/lit8 v3, v0, 0x1f

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    add-int v0, v3, v4

    goto :goto_5

    .line 209
    .end local v2           #p:Landroid/content/pm/PackageInfo;
    :cond_22
    return v0
.end method

.method getDebugReport()Ljava/lang/String;
    .registers 5

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->getRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 85
    const-string v1, "Syncing %d packages (%d versions) and %s %d system packages."

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugLocalPackages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugNumLocalVersions:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugSystemPackagesSent:Z

    if-eqz v0, :cond_35

    const-string v0, "sent"

    :goto_25
    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mDebugNumSystemPackages:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    const-string v0, "skipped"

    goto :goto_25
.end method

.method public getLocalAppsHash()I
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->getRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 74
    iget v0, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mLocalAppsHash:I

    return v0
.end method

.method public getRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    if-nez v0, :cond_a

    .line 66
    invoke-direct {p0}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->makeProto()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 68
    :cond_a
    iget-object v0, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mProto:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    return-object v0
.end method

.method public getSystemAppsHash()I
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->getRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 80
    iget v0, p0, Lcom/google/android/finsky/services/ContentSyncRequestProducer;->mSystemAppsHash:I

    return v0
.end method

.method getSystemPackages(Landroid/content/pm/PackageManager;)Ljava/util/SortedSet;
    .registers 7
    .parameter "packageManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    const/16 v4, 0x40

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 229
    .local v2, installedPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/util/TreeSet;

    new-instance v4, Lcom/google/android/finsky/services/ContentSyncRequestProducer$2;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/services/ContentSyncRequestProducer$2;-><init>(Lcom/google/android/finsky/services/ContentSyncRequestProducer;)V

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 237
    .local v3, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 238
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_14

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_14

    .line 240
    invoke-interface {v3, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 243
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :cond_30
    return-object v3
.end method
