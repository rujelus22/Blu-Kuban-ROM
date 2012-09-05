.class public Lcom/google/android/finsky/services/Reconstructor;
.super Ljava/lang/Object;
.source "Reconstructor.java"


# instance fields
.field private final mAssetStore:Lcom/google/android/finsky/local/AssetStore;

.field private mAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

.field private final mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/utils/PackageInfoCache;Lcom/google/android/finsky/local/AssetStore;Lcom/google/android/finsky/download/DownloadQueue;Ljava/util/List;)V
    .registers 5
    .parameter "packageInfoCache"
    .parameter "assetStore"
    .parameter "downloadQueue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/utils/PackageInfoCache;",
            "Lcom/google/android/finsky/local/AssetStore;",
            "Lcom/google/android/finsky/download/DownloadQueue;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p4, assets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/services/Reconstructor;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    .line 35
    iput-object p2, p0, Lcom/google/android/finsky/services/Reconstructor;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    .line 36
    iput-object p3, p0, Lcom/google/android/finsky/services/Reconstructor;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    .line 37
    iput-object p4, p0, Lcom/google/android/finsky/services/Reconstructor;->mAssets:Ljava/util/List;

    .line 38
    return-void
.end method

.method private doRecordPackageInstalled(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;)V
    .registers 30
    .parameter "proto"
    .parameter "account"
    .parameter "autoUpdate"

    .prologue
    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getVersionCode()I

    move-result v5

    .line 186
    .local v5, versionCode:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/services/Reconstructor;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getAssetId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v24

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v25

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-interface/range {v1 .. v25}, Lcom/google/android/finsky/local/AssetStore;->insertAsset(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/local/LocalAsset;

    .line 194
    return-void
.end method

.method private findMatchingProto(ILjava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    .registers 6
    .parameter "versionCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;",
            ">;)",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, protos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;

    .line 200
    .local v1, proto:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getVersionCode()I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 205
    .end local v1           #proto:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private protosGroupedByPackage()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 211
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;>;>;"
    iget-object v5, p0, Lcom/google/android/finsky/services/Reconstructor;->mAssets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;

    .line 212
    .local v0, a:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 216
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;>;"
    if-nez v2, :cond_29

    .line 217
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 218
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_29
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 224
    .end local v0           #a:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;>;"
    .end local v4           #packageName:Ljava/lang/String;
    :cond_2d
    return-object v3
.end method

.method private recordPackageInstalled(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;ILjava/lang/String;)I
    .registers 15
    .parameter "matchingProto"
    .parameter "installedVersion"
    .parameter "account"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 125
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/services/Reconstructor;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v4, v2}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 129
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v0, :cond_26

    .line 130
    const-string v4, "Adding asset %s v=%d"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-static {v4, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    sget-object v4, Lcom/google/android/finsky/local/AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-direct {p0, p1, p3, v4}, Lcom/google/android/finsky/services/Reconstructor;->doRecordPackageInstalled(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;)V

    move v4, v5

    .line 176
    :goto_25
    return v4

    .line 135
    :cond_26
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v4

    sget-object v7, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-ne v4, v7, :cond_53

    .line 139
    const-string v4, "Skipping asset %s v=%d because already owned by %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v4, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v6

    .line 141
    goto :goto_25

    .line 146
    :cond_53
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/local/AssetState;->isTransient()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 147
    const-string v4, "Skipping asset %s v=%d because in transient state %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v4, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v6

    .line 149
    goto :goto_25

    .line 158
    :cond_74
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v4

    sget-object v7, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-ne v4, v7, :cond_9b

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getVersionCode()I

    move-result v4

    if-eq v4, p2, :cond_9b

    .line 160
    const-string v4, "Updating version of %s to v=%d (was v=%d)"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getVersionCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_9b
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v4

    sget-object v7, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-ne v4, v7, :cond_a9

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getVersionCode()I

    move-result v4

    if-eq v4, p2, :cond_d8

    .line 168
    :cond_a9
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getAutoUpdateState()Lcom/google/android/finsky/local/AutoUpdateState;

    move-result-object v1

    .line 169
    .local v1, autoUpdate:Lcom/google/android/finsky/local/AutoUpdateState;
    iget-object v4, p0, Lcom/google/android/finsky/services/Reconstructor;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v4, v2}, Lcom/google/android/finsky/local/AssetStore;->deleteAsset(Ljava/lang/String;)Z

    move-result v3

    .line 170
    .local v3, replacing:Z
    const-string v7, "%s asset %s at v=%d for account %s"

    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/Object;

    if-eqz v3, :cond_d5

    const-string v4, "replacing"

    :goto_bc
    aput-object v4, v8, v6

    aput-object v2, v8, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {p3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-direct {p0, p1, p3, v1}, Lcom/google/android/finsky/services/Reconstructor;->doRecordPackageInstalled(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;)V

    move v4, v5

    .line 173
    goto/16 :goto_25

    .line 170
    :cond_d5
    const-string v4, "inserting"

    goto :goto_bc

    .end local v1           #autoUpdate:Lcom/google/android/finsky/local/AutoUpdateState;
    .end local v3           #replacing:Z
    :cond_d8
    move v4, v6

    .line 176
    goto/16 :goto_25
.end method


# virtual methods
.method public reconstruct(Ljava/lang/String;)I
    .registers 16
    .parameter "account"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 51
    const/4 v1, 0x0

    .line 53
    .local v1, changes:I
    invoke-direct {p0}, Lcom/google/android/finsky/services/Reconstructor;->protosGroupedByPackage()Ljava/util/Map;

    move-result-object v5

    .line 55
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;>;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 58
    .local v7, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/finsky/services/Reconstructor;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v8, v7}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v4

    .line 59
    .local v4, installedVersion:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_47

    .line 60
    iget-object v8, p0, Lcom/google/android/finsky/services/Reconstructor;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;

    invoke-interface {v8, v7}, Lcom/google/android/finsky/download/DownloadQueue;->getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;

    move-result-object v2

    .line 61
    .local v2, download:Lcom/google/android/finsky/download/Download;
    if-nez v2, :cond_41

    .line 62
    const-string v8, "Deleting asset %s because not installed or installing."

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v7, v9, v11

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v8, p0, Lcom/google/android/finsky/services/Reconstructor;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v8, v7}, Lcom/google/android/finsky/local/AssetStore;->deleteAsset(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 70
    :cond_41
    invoke-interface {v2}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v8

    iget v4, v8, Lcom/google/android/finsky/download/Download$PackageProperties;->versionCode:I

    .line 82
    .end local v2           #download:Lcom/google/android/finsky/download/Download;
    :cond_47
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v4, v8}, Lcom/google/android/finsky/services/Reconstructor;->findMatchingProto(ILjava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;

    move-result-object v6

    .line 85
    .local v6, matchingProto:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    if-nez v6, :cond_a8

    .line 87
    iget-object v8, p0, Lcom/google/android/finsky/services/Reconstructor;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v8, v7}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 88
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v0, :cond_6b

    .line 89
    const-string v8, "Skipping asset %s v=%d because no matching proto version & no asset in store"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v7, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 91
    :cond_6b
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 92
    const-string v8, "Deleting asset %s because installed v=%d not found in history."

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v7, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v8, p0, Lcom/google/android/finsky/services/Reconstructor;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v8, v7}, Lcom/google/android/finsky/local/AssetStore;->deleteAsset(Ljava/lang/String;)Z

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 97
    :cond_8c
    const-string v8, "Skipping asset %s v=%d because no matching proto version & asset belongs to account"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 109
    .end local v0           #asset:Lcom/google/android/finsky/local/LocalAsset;
    :cond_a8
    invoke-direct {p0, v6, v4, p1}, Lcom/google/android/finsky/services/Reconstructor;->recordPackageInstalled(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;ILjava/lang/String;)I

    move-result v8

    add-int/2addr v1, v8

    .line 110
    goto/16 :goto_10

    .line 112
    .end local v4           #installedVersion:I
    .end local v6           #matchingProto:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetIdentifierProto;
    .end local v7           #packageName:Ljava/lang/String;
    :cond_af
    return v1
.end method
