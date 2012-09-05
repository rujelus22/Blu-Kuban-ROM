.class public Lcom/google/android/finsky/local/StoredLocalAsset;
.super Ljava/lang/Object;
.source "StoredLocalAsset.java"

# interfaces
.implements Lcom/google/android/finsky/local/LocalAsset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/local/StoredLocalAsset$8;,
        Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;
    }
.end annotation


# static fields
.field public static final INSTALLED_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

.field public static final INSTALLED_OR_UNINSTALLED_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

.field public static final INSTALLED_OR_UNINSTALLING_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

.field public static final NEITHER_TRANSIENT_NOR_INSTALLED_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

.field public static final TRANSIENT_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

.field private mDeleted:Z

.field private final mPackage:Ljava/lang/String;

.field private final mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

.field private final mWriter:Lcom/google/android/finsky/local/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/finsky/local/StoredLocalAsset$1;

    invoke-direct {v0}, Lcom/google/android/finsky/local/StoredLocalAsset$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/local/StoredLocalAsset;->TRANSIENT_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

    .line 27
    new-instance v0, Lcom/google/android/finsky/local/StoredLocalAsset$2;

    invoke-direct {v0}, Lcom/google/android/finsky/local/StoredLocalAsset$2;-><init>()V

    sput-object v0, Lcom/google/android/finsky/local/StoredLocalAsset;->INSTALLED_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

    .line 33
    new-instance v0, Lcom/google/android/finsky/local/StoredLocalAsset$3;

    invoke-direct {v0}, Lcom/google/android/finsky/local/StoredLocalAsset$3;-><init>()V

    sput-object v0, Lcom/google/android/finsky/local/StoredLocalAsset;->NEITHER_TRANSIENT_NOR_INSTALLED_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

    .line 40
    new-instance v0, Lcom/google/android/finsky/local/StoredLocalAsset$4;

    invoke-direct {v0}, Lcom/google/android/finsky/local/StoredLocalAsset$4;-><init>()V

    sput-object v0, Lcom/google/android/finsky/local/StoredLocalAsset;->INSTALLED_OR_UNINSTALLED_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

    .line 48
    new-instance v0, Lcom/google/android/finsky/local/StoredLocalAsset$5;

    invoke-direct {v0}, Lcom/google/android/finsky/local/StoredLocalAsset$5;-><init>()V

    sput-object v0, Lcom/google/android/finsky/local/StoredLocalAsset;->INSTALLED_OR_UNINSTALLING_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/finsky/local/LocalAssetRecord;Lcom/google/android/finsky/local/Writer;Lcom/google/android/finsky/local/MemoryAssetStore;)V
    .registers 5
    .parameter "r"
    .parameter "writer"
    .parameter "store"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mDeleted:Z

    .line 65
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetRecord;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetRecord;->getAutoUpdateState()Lcom/google/android/finsky/local/AutoUpdateState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    .line 68
    iput-object p2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mWriter:Lcom/google/android/finsky/local/Writer;

    .line 69
    iput-object p3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    .line 71
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetRecord;->getAccountString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAccount:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private getAssetVersions()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/StoredLocalAssetVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/MemoryAssetStore;->getAssetVersions(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private getByVersionCode(I)Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    .registers 10
    .parameter "versionCode"

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAssetVersions()Ljava/util/Collection;

    move-result-object v0

    .line 283
    .local v0, assetVersions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    if-nez v0, :cond_17

    .line 284
    const-string v4, "Could not getByVersionCode %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    const/4 v3, 0x0

    .line 294
    :cond_16
    :goto_16
    return-object v3

    .line 287
    :cond_17
    const/4 v3, 0x0

    .line 288
    .local v3, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 289
    .local v2, v:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    invoke-virtual {v2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getVersionCode()I

    move-result v4

    if-ne v4, p1, :cond_1c

    .line 290
    move-object v3, v2

    .line 291
    goto :goto_16
.end method

.method private getHighest(Ljava/util/Collection;Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    .registers 8
    .parameter
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/StoredLocalAssetVersion;",
            ">;",
            "Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;",
            ")",
            "Lcom/google/android/finsky/local/StoredLocalAssetVersion;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, assetVersions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    const/4 v2, 0x0

    .line 141
    .local v2, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 142
    :cond_9
    const/4 v3, 0x0

    .line 153
    :goto_a
    return-object v3

    .line 145
    :cond_b
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 146
    .local v1, v:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    invoke-interface {p2, v1}, Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;->filter(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 147
    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getVersionCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getVersionCode()I

    move-result v4

    if-le v3, v4, :cond_f

    .line 149
    :cond_2d
    move-object v2, v1

    goto :goto_f

    .end local v1           #v:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_2f
    move-object v3, v2

    .line 153
    goto :goto_a
.end method

.method private insertNewAssetVersion(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 31
    .parameter "downloadPendingTime"
    .parameter "versionCode"
    .parameter "assetId"
    .parameter "referrer"
    .parameter "source"

    .prologue
    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    sget-object v5, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_PENDING:Lcom/google/android/finsky/local/AssetState;

    const-wide/16 v6, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v22

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v23

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v8, p1

    move-object/from16 v20, p5

    move-object/from16 v21, p6

    invoke-interface/range {v1 .. v23}, Lcom/google/android/finsky/local/MemoryAssetStore;->insertAssetVersion(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 305
    return-void
.end method

.method private safetyCheck()V
    .registers 3

    .prologue
    .line 82
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 84
    iget-boolean v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mDeleted:Z

    if-eqz v0, :cond_f

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t write to or read from a deleted asset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_f
    return-void
.end method

.method private setMatchingVersionState(Lcom/google/android/finsky/local/AssetState;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 422
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_16

    .line 423
    const-string v1, "Could not setMatchingVersionState %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    :goto_15
    return-void

    .line 426
    :cond_16
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setState(Lcom/google/android/finsky/local/AssetState;)V

    .line 427
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->writeThrough()V

    goto :goto_15
.end method

.method private uninstallOtherVersions(Lcom/google/android/finsky/local/StoredLocalAssetVersion;J)V
    .registers 10
    .parameter "installedVersion"
    .parameter "installTime"

    .prologue
    .line 378
    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getVersionCode()I

    move-result v2

    .line 379
    .local v2, installedVersionCode:I
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAssetVersions()Ljava/util/Collection;

    move-result-object v0

    .line 380
    .local v0, assetVersions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 381
    .local v3, sweepVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    invoke-virtual {v3}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getVersionCode()I

    move-result v4

    if-eq v4, v2, :cond_c

    .line 382
    sget-object v4, Lcom/google/android/finsky/local/StoredLocalAsset$8;->$SwitchMap$com$google$android$finsky$local$AssetState:[I

    invoke-virtual {v3}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/local/AssetState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_46

    :pswitch_2d
    goto :goto_c

    .line 384
    :pswitch_2e
    sget-object v4, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setState(Lcom/google/android/finsky/local/AssetState;)V

    .line 387
    :pswitch_33
    sget-object v4, Lcom/google/android/finsky/local/AssetState;->UNINSTALLING:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setState(Lcom/google/android/finsky/local/AssetState;)V

    .line 390
    :pswitch_38
    sget-object v4, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setState(Lcom/google/android/finsky/local/AssetState;)V

    .line 391
    invoke-virtual {v3, p2, p3}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setUninstallTime(J)V

    .line 392
    invoke-virtual {v3}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->writeThrough()V

    goto :goto_c

    .line 396
    .end local v3           #sweepVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_44
    return-void

    .line 382
    nop

    :pswitch_data_46
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_33
        :pswitch_2d
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public cleanupInstallFailure()V
    .registers 7

    .prologue
    .line 717
    const/4 v2, 0x0

    .line 718
    .local v2, toBeRemovedVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    const/4 v1, 0x0

    .line 719
    .local v1, originalVersionFound:Z
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAssetVersions()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 720
    .local v3, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    sget-object v4, Lcom/google/android/finsky/local/StoredLocalAsset$8;->$SwitchMap$com$google$android$finsky$local$AssetState:[I

    invoke-virtual {v3}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/local/AssetState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3c

    goto :goto_a

    .line 722
    :pswitch_26
    move-object v2, v3

    .line 723
    goto :goto_a

    .line 725
    :pswitch_28
    const/4 v1, 0x1

    goto :goto_a

    .line 730
    .end local v3           #version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_2a
    if-eqz v2, :cond_33

    .line 731
    if-eqz v1, :cond_34

    .line 732
    iget-object v4, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    invoke-interface {v4, v2}, Lcom/google/android/finsky/local/MemoryAssetStore;->deleteAssetVersion(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)V

    .line 737
    :cond_33
    :goto_33
    return-void

    .line 734
    :cond_34
    iget-object v4, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    iget-object v5, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/finsky/local/MemoryAssetStore;->deleteAsset(Ljava/lang/String;)Z

    goto :goto_33

    .line 720
    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_26
        :pswitch_28
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 741
    if-ne p0, p1, :cond_5

    .line 755
    :cond_4
    :goto_4
    return v1

    .line 742
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 744
    check-cast v0, Lcom/google/android/finsky/local/StoredLocalAsset;

    .line 746
    .local v0, that:Lcom/google/android/finsky/local/StoredLocalAsset;
    iget-boolean v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mDeleted:Z

    iget-boolean v4, v0, Lcom/google/android/finsky/local/StoredLocalAsset;->mDeleted:Z

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 747
    :cond_1e
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAccount:Ljava/lang/String;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAccount:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    :cond_2c
    move v1, v2

    .line 748
    goto :goto_4

    .line 747
    :cond_2e
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAccount:Ljava/lang/String;

    if-nez v3, :cond_2c

    .line 749
    :cond_32
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    if-eq v3, v4, :cond_3a

    move v1, v2

    goto :goto_4

    .line 750
    :cond_3a
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    :cond_48
    move v1, v2

    .line 751
    goto :goto_4

    .line 750
    :cond_4a
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    if-nez v3, :cond_48

    .line 752
    :cond_4e
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    :cond_5c
    move v1, v2

    goto :goto_4

    :cond_5e
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    if-nez v3, :cond_5c

    .line 753
    :cond_62
    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mWriter:Lcom/google/android/finsky/local/Writer;

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mWriter:Lcom/google/android/finsky/local/Writer;

    iget-object v4, v0, Lcom/google/android/finsky/local/StoredLocalAsset;->mWriter:Lcom/google/android/finsky/local/Writer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_70
    move v1, v2

    goto :goto_4

    :cond_72
    iget-object v3, v0, Lcom/google/android/finsky/local/StoredLocalAsset;->mWriter:Lcom/google/android/finsky/local/Writer;

    if-eqz v3, :cond_4

    goto :goto_70
.end method

.method protected findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    .registers 7

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAssetVersions()Ljava/util/Collection;

    move-result-object v0

    .line 160
    .local v0, assetVersions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    sget-object v4, Lcom/google/android/finsky/local/StoredLocalAsset;->TRANSIENT_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

    invoke-direct {p0, v0, v4}, Lcom/google/android/finsky/local/StoredLocalAsset;->getHighest(Ljava/util/Collection;Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v3

    .line 163
    .local v3, transientVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    sget-object v4, Lcom/google/android/finsky/local/StoredLocalAsset;->INSTALLED_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

    invoke-direct {p0, v0, v4}, Lcom/google/android/finsky/local/StoredLocalAsset;->getHighest(Ljava/util/Collection;Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v1

    .line 166
    .local v1, installedVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    sget-object v4, Lcom/google/android/finsky/local/StoredLocalAsset;->NEITHER_TRANSIENT_NOR_INSTALLED_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

    invoke-direct {p0, v0, v4}, Lcom/google/android/finsky/local/StoredLocalAsset;->getHighest(Ljava/util/Collection;Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v2

    .line 169
    .local v2, otherVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-eqz v3, :cond_27

    .line 170
    if-eqz v1, :cond_24

    .line 171
    invoke-virtual {v3}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getVersionCode()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getVersionCode()I

    move-result v5

    if-le v4, v5, :cond_25

    .line 182
    .end local v3           #transientVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_24
    :goto_24
    return-object v3

    .restart local v3       #transientVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_25
    move-object v3, v1

    .line 171
    goto :goto_24

    .line 178
    :cond_27
    if-eqz v1, :cond_2b

    move-object v3, v1

    .line 179
    goto :goto_24

    :cond_2b
    move-object v3, v2

    .line 182
    goto :goto_24
.end method

.method public getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getAssetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoUpdateState()Lcom/google/android/finsky/local/AutoUpdateState;
    .registers 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->safetyCheck()V

    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 6

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 582
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_17

    .line 583
    const-string v1, "Could not getContentUri %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    const/4 v1, 0x0

    .line 586
    :goto_16
    return-object v1

    :cond_17
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_16
.end method

.method public getExternalReferrer()Ljava/lang/String;
    .registers 6

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 622
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_17

    .line 623
    const-string v1, "Could not getReferrer %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    const/4 v1, 0x0

    .line 626
    :goto_16
    return-object v1

    :cond_17
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getReferrer()Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method public getInstallTime()J
    .registers 6

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 536
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_18

    .line 537
    const-string v1, "Could not getInstallTime %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    const-wide/16 v1, 0x0

    .line 540
    :goto_17
    return-wide v1

    :cond_18
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getInstallTime()J

    move-result-wide v1

    goto :goto_17
.end method

.method public getObb(Z)Lcom/google/android/finsky/download/obb/Obb;
    .registers 7
    .parameter "isPatch"

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 343
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_17

    .line 344
    const-string v1, "Could not getObb %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    const/4 v1, 0x0

    .line 347
    :goto_16
    return-object v1

    :cond_17
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getObb(Z)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v1

    goto :goto_16
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getRefundPeriodEndTime()Ljava/lang/Long;
    .registers 6

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 602
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_1c

    .line 603
    const-string v1, "Could not getRefundPeriodEndTime %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 606
    :goto_1b
    return-object v1

    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getRefundPeriodEndTime()Ljava/lang/Long;

    move-result-object v1

    goto :goto_1b
.end method

.method public getSignature()Ljava/lang/String;
    .registers 6

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 572
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_17

    .line 573
    const-string v1, "Could not getSignature %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    const/4 v1, 0x0

    .line 576
    :goto_16
    return-object v1

    :cond_17
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getSignature()Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method public getSize()J
    .registers 6

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 556
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_18

    .line 557
    const-string v1, "Could not getSize %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    const-wide/16 v1, 0x0

    .line 560
    :goto_17
    return-wide v1

    :cond_18
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getSize()J

    move-result-wide v1

    goto :goto_17
.end method

.method public getState()Lcom/google/android/finsky/local/AssetState;
    .registers 3

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 566
    .local v0, matchingVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v1

    goto :goto_7
.end method

.method public getVersionCode()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 611
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 612
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_16

    .line 613
    const-string v2, "Could not getVersionCode %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    :goto_15
    return v1

    :cond_16
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getVersionCode()I

    move-result v1

    goto :goto_15
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 760
    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mWriter:Lcom/google/android/finsky/local/Writer;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mWriter:Lcom/google/android/finsky/local/Writer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 761
    .local v0, result:I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 762
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_25
    add-int v0, v3, v2

    .line 763
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/AutoUpdateState;->hashCode()I

    move-result v2

    :goto_33
    add-int v0, v3, v2

    .line 764
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAccount:Ljava/lang/String;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAccount:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_41
    add-int v0, v3, v2

    .line 765
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mDeleted:Z

    if-eqz v3, :cond_4a

    const/4 v1, 0x1

    :cond_4a
    add-int v0, v2, v1

    .line 766
    return v0

    .end local v0           #result:I
    :cond_4d
    move v0, v1

    .line 760
    goto :goto_b

    .restart local v0       #result:I
    :cond_4f
    move v2, v1

    .line 761
    goto :goto_17

    :cond_51
    move v2, v1

    .line 762
    goto :goto_25

    :cond_53
    move v2, v1

    .line 763
    goto :goto_33

    :cond_55
    move v2, v1

    .line 764
    goto :goto_41
.end method

.method public isConsistent()Z
    .registers 2

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAssetVersions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isDownloadingOrInstalling()Z
    .registers 3

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 658
    .local v0, knownVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/local/AssetState;->isDownloadingOrInstalling()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isForwardLocked()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 591
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 592
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_16

    .line 593
    const-string v2, "Could not isForwardLocked %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :goto_15
    return v1

    :cond_16
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->isForwardLocked()Z

    move-result v1

    goto :goto_15
.end method

.method public isInstalled()Z
    .registers 3

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAssetVersions()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/local/StoredLocalAsset;->INSTALLED_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/local/StoredLocalAsset;->getHighest(Ljava/util/Collection;Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isRefundable(J)Z
    .registers 6
    .parameter "nowMs"

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getRefundPeriodEndTime()Ljava/lang/Long;

    move-result-object v0

    .line 674
    .local v0, refundPeriodEndTime:Ljava/lang/Long;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-ltz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isUninstallable()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 679
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 680
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_16

    .line 681
    const-string v2, "Could not get isUninstallable %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    :goto_15
    return v1

    :cond_16
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/local/AssetState;->isUninstallable()Z

    move-result v1

    goto :goto_15
.end method

.method public isUpdate()Z
    .registers 5

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 691
    .local v0, currentVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAssetVersions()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/local/StoredLocalAsset$6;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/local/StoredLocalAsset$6;-><init>(Lcom/google/android/finsky/local/StoredLocalAsset;Lcom/google/android/finsky/local/StoredLocalAssetVersion;)V

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/local/StoredLocalAsset;->getHighest(Ljava/util/Collection;Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v1

    .line 701
    .local v1, otherVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-eqz v1, :cond_15

    const/4 v2, 0x1

    :goto_14
    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method protected markDeleted()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mDeleted:Z

    .line 79
    return-void
.end method

.method public resetToInstalledVersion(I)V
    .registers 9
    .parameter "resetToVersion"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v4

    .line 249
    .local v4, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    const/4 v0, 0x0

    .line 250
    .local v0, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAssetVersions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 251
    .local v3, scanVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    invoke-virtual {v3}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getVersionCode()I

    move-result v5

    if-le v5, p1, :cond_d

    .line 252
    if-nez v0, :cond_25

    .line 253
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    :cond_25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 258
    .end local v3           #scanVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_29
    if-eqz v0, :cond_41

    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 260
    .local v1, deleteVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    iget-object v5, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    invoke-interface {v5, v1}, Lcom/google/android/finsky/local/MemoryAssetStore;->deleteAssetVersion(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)V

    goto :goto_2f

    .line 265
    .end local v1           #deleteVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v4

    .line 266
    if-nez v4, :cond_4f

    .line 268
    iget-object v5, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    iget-object v6, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/google/android/finsky/local/MemoryAssetStore;->deleteAsset(Ljava/lang/String;)Z

    .line 279
    :goto_4e
    return-void

    .line 272
    :cond_4f
    invoke-virtual {v4}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v5

    sget-object v6, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-eq v5, v6, :cond_5d

    .line 273
    invoke-virtual {v4}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->resetInstalledState()V

    .line 274
    invoke-virtual {v4}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->writeThrough()V

    .line 277
    :cond_5d
    invoke-virtual {v4}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getInstallTime()J

    move-result-wide v5

    invoke-direct {p0, v4, v5, v6}, Lcom/google/android/finsky/local/StoredLocalAsset;->uninstallOtherVersions(Lcom/google/android/finsky/local/StoredLocalAssetVersion;J)V

    goto :goto_4e
.end method

.method public resetToState(Lcom/google/android/finsky/local/AssetState;)V
    .registers 6
    .parameter "newState"

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 210
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    sget-object v1, Lcom/google/android/finsky/local/StoredLocalAsset$8;->$SwitchMap$com$google$android$finsky$local$AssetState:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/local/AssetState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_52

    .line 224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported reset state of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :pswitch_34
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->resetDownloadPendingState()V

    .line 227
    :goto_37
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->writeThrough()V

    .line 230
    sget-object v1, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-ne p1, v1, :cond_45

    .line 231
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getInstallTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/local/StoredLocalAsset;->uninstallOtherVersions(Lcom/google/android/finsky/local/StoredLocalAssetVersion;J)V

    .line 233
    :cond_45
    return-void

    .line 215
    :pswitch_46
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->resetInstallingState()V

    goto :goto_37

    .line 218
    :pswitch_4a
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->resetInstalledState()V

    goto :goto_37

    .line 221
    :pswitch_4e
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->resetUninstalledState()V

    goto :goto_37

    .line 210
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_34
        :pswitch_46
        :pswitch_4a
        :pswitch_4e
    .end packed-switch
.end method

.method public setAccount(Ljava/lang/String;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->safetyCheck()V

    .line 97
    iput-object p1, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAccount:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->writeThrough()V

    .line 99
    return-void
.end method

.method public setAutoUpdateState(Lcom/google/android/finsky/local/AutoUpdateState;)V
    .registers 2
    .parameter "autoUpdateState"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->safetyCheck()V

    .line 104
    iput-object p1, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    .line 105
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->writeThrough()V

    .line 106
    return-void
.end method

.method public setExternalReferrer(Ljava/lang/String;)V
    .registers 7
    .parameter "externalReferrer"

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 489
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_16

    .line 490
    const-string v1, "Could not setReferrer %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getExternalReferrer()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    :goto_15
    return-void

    .line 493
    :cond_16
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setReferrer(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->writeThrough()V

    goto :goto_15
.end method

.method public setObb(ZLcom/google/android/finsky/download/obb/Obb;)V
    .registers 8
    .parameter "isPatch"
    .parameter "obb"

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 332
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_16

    .line 333
    const-string v1, "Could not setObb %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :goto_15
    return-void

    .line 336
    :cond_16
    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setObb(ZLcom/google/android/finsky/download/obb/Obb;)V

    .line 337
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->writeThrough()V

    goto :goto_15
.end method

.method public setRefundPeriodEndTime(Ljava/lang/Long;)V
    .registers 7
    .parameter "refundPeriodEndTime"

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 500
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_16

    .line 501
    const-string v1, "Could not setRefundPeriodEndTime %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :goto_15
    return-void

    .line 504
    :cond_16
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setRefundPeriodEndTime(Ljava/lang/Long;)V

    .line 505
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->writeThrough()V

    goto :goto_15
.end method

.method public setStateCancelPending()V
    .registers 2

    .prologue
    .line 478
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/google/android/finsky/local/AssetState;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/StoredLocalAsset;->setMatchingVersionState(Lcom/google/android/finsky/local/AssetState;)V

    .line 479
    return-void
.end method

.method public setStateDownloadCancelled()V
    .registers 2

    .prologue
    .line 483
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_CANCELLED:Lcom/google/android/finsky/local/AssetState;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/StoredLocalAsset;->setMatchingVersionState(Lcom/google/android/finsky/local/AssetState;)V

    .line 484
    return-void
.end method

.method public setStateDownloadFailed()V
    .registers 2

    .prologue
    .line 432
    sget-object v0, Lcom/google/android/finsky/local/AssetState;->DOWNLOAD_FAILED:Lcom/google/android/finsky/local/AssetState;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/StoredLocalAsset;->setMatchingVersionState(Lcom/google/android/finsky/local/AssetState;)V

    .line 433
    return-void
.end method

.method public setStateDownloadPending(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "downloadPendingTime"
    .parameter "versionCode"
    .parameter "assetId"
    .parameter "referrer"
    .parameter "source"

    .prologue
    .line 195
    invoke-direct {p0, p3}, Lcom/google/android/finsky/local/StoredLocalAsset;->getByVersionCode(I)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 197
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-eqz v0, :cond_f

    .line 201
    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/local/MemoryAssetStore;->deleteAssetVersion(Ljava/lang/String;)Z

    .line 204
    :cond_f
    invoke-direct/range {p0 .. p6}, Lcom/google/android/finsky/local/StoredLocalAsset;->insertNewAssetVersion(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public setStateDownloading(JLandroid/net/Uri;JLjava/lang/String;ZLjava/lang/Long;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V
    .registers 16
    .parameter "downloadTime"
    .parameter "contentUri"
    .parameter "size"
    .parameter "signature"
    .parameter "forwardLocked"
    .parameter "refundPeriodEndTime"
    .parameter "main"
    .parameter "patch"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 312
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_16

    .line 313
    const-string v1, "Could not setStateDownloading %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    :goto_15
    return-void

    .line 316
    :cond_16
    sget-object v1, Lcom/google/android/finsky/local/AssetState;->DOWNLOADING:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setState(Lcom/google/android/finsky/local/AssetState;)V

    .line 317
    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setDownloadTime(J)V

    .line 318
    invoke-virtual {v0, p3}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setContentUri(Landroid/net/Uri;)V

    .line 319
    invoke-virtual {v0, p4, p5}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setSize(J)V

    .line 320
    invoke-virtual {v0, p6}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setSignature(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p7}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setForwardLocked(Z)V

    .line 322
    invoke-virtual {v0, p8}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setRefundPeriodEndTime(Ljava/lang/Long;)V

    .line 323
    invoke-virtual {v0, v4, p9}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setObb(ZLcom/google/android/finsky/download/obb/Obb;)V

    .line 324
    invoke-virtual {v0, v2, p10}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setObb(ZLcom/google/android/finsky/download/obb/Obb;)V

    .line 325
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->writeThrough()V

    goto :goto_15
.end method

.method public setStateInstalled(J)V
    .registers 8
    .parameter "installTime"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 358
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_16

    .line 359
    const-string v1, "Could not setStateInstalled %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :goto_15
    return-void

    .line 362
    :cond_16
    sget-object v1, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setState(Lcom/google/android/finsky/local/AssetState;)V

    .line 363
    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setInstallTime(J)V

    .line 364
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->writeThrough()V

    .line 366
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/finsky/local/StoredLocalAsset;->uninstallOtherVersions(Lcom/google/android/finsky/local/StoredLocalAssetVersion;J)V

    goto :goto_15
.end method

.method public setStateInstalling()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 438
    :try_start_1
    sget-object v5, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    invoke-direct {p0, v5}, Lcom/google/android/finsky/local/StoredLocalAsset;->setMatchingVersionState(Lcom/google/android/finsky/local/AssetState;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_6} :catch_7

    .line 453
    return-void

    .line 439
    :catch_7
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught IAE in setStateInstalling for asset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAssetVersions()Ljava/util/Collection;

    move-result-object v4

    .line 442
    .local v4, versions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/StoredLocalAssetVersion;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->findMatchingVersion()Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v2

    .line 443
    .local v2, matching:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matching version: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7f

    invoke-virtual {v2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_45
    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4e
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    .line 446
    .local v3, v:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    invoke-virtual {v3, v2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Other version: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_82

    invoke-virtual {v3}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_79
    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4e

    .line 443
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #v:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_7f
    const-string v5, "]"

    goto :goto_45

    .line 447
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #v:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_82
    const-string v5, "]"

    goto :goto_79

    .line 451
    .end local v3           #v:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    :cond_85
    throw v0
.end method

.method public setStateUninstalled(J)V
    .registers 8
    .parameter "uninstallTime"

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAssetVersions()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/local/StoredLocalAsset;->INSTALLED_OR_UNINSTALLING_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/local/StoredLocalAsset;->getHighest(Ljava/util/Collection;Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 406
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_1c

    .line 407
    const-string v1, "Could not setStateUninstalled %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    :goto_1b
    return-void

    .line 411
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/local/AssetState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 412
    sget-object v1, Lcom/google/android/finsky/local/AssetState;->UNINSTALLING:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setState(Lcom/google/android/finsky/local/AssetState;)V

    .line 415
    :cond_2d
    sget-object v1, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setState(Lcom/google/android/finsky/local/AssetState;)V

    .line 416
    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setUninstallTime(J)V

    .line 417
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->writeThrough()V

    goto :goto_1b
.end method

.method public setStateUninstalling()V
    .registers 6

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getAssetVersions()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/local/StoredLocalAsset;->INSTALLED_FILTER:Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/local/StoredLocalAsset;->getHighest(Ljava/util/Collection;Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    move-result-object v0

    .line 458
    .local v0, version:Lcom/google/android/finsky/local/StoredLocalAssetVersion;
    if-nez v0, :cond_1c

    .line 459
    const-string v1, "Could not setStateUninstalling %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    :goto_1b
    return-void

    .line 462
    :cond_1c
    sget-object v1, Lcom/google/android/finsky/local/AssetState;->UNINSTALLING:Lcom/google/android/finsky/local/AssetState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->setState(Lcom/google/android/finsky/local/AssetState;)V

    .line 463
    invoke-virtual {v0}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->writeThrough()V

    goto :goto_1b
.end method

.method public toRecord()Lcom/google/android/finsky/local/LocalAssetRecord;
    .registers 5

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/finsky/local/LocalAssetRecord;

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/LocalAssetRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoredLocalAsset{\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " autoUpdateState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mAutoUpdateState:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mDeleted:Z

    if-eqz v0, :cond_38

    const-string v0, " (deleted)"

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    const-string v0, ""

    goto :goto_29
.end method

.method public writeThrough()V
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->safetyCheck()V

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mWriter:Lcom/google/android/finsky/local/Writer;

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->toRecord()Lcom/google/android/finsky/local/LocalAssetRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/Writer;->insert(Lcom/google/android/finsky/local/Writable;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/local/StoredLocalAsset;->mStore:Lcom/google/android/finsky/local/MemoryAssetStore;

    invoke-virtual {p0}, Lcom/google/android/finsky/local/StoredLocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/finsky/local/MemoryAssetStore;->notifyAssetChanged(Lcom/google/android/finsky/local/StoredLocalAsset;Lcom/google/android/finsky/local/AssetState;)V

    .line 112
    return-void
.end method
