.class public Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;
.super Ljava/lang/Object;
.source "InstallStateVerifierRule.java"

# interfaces
.implements Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/local/checker/InstallStateVerifierRule$2;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/utils/PackageInfoCache;)V
    .registers 3
    .parameter "context"
    .parameter "packageInfoCache"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private resetAsset(Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 11
    .parameter "asset"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 81
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, packageName:Ljava/lang/String;
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v3

    .line 83
    .local v3, state:Lcom/google/android/finsky/local/AssetState;
    iget-object v6, p0, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v6, v1}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v2

    .line 84
    .local v2, packageVersion:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2e

    move v0, v4

    .line 85
    .local v0, packageExists:Z
    :goto_14
    const-string v6, "Reset asset store state for %s to INSTALLED=%b"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    if-eqz v0, :cond_3a

    .line 87
    sget-object v6, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-eq v3, v6, :cond_30

    .line 88
    invoke-interface {p1, v2}, Lcom/google/android/finsky/local/LocalAsset;->resetToInstalledVersion(I)V

    .line 99
    :goto_2d
    return-void

    .end local v0           #packageExists:Z
    :cond_2e
    move v0, v5

    .line 84
    goto :goto_14

    .line 90
    .restart local v0       #packageExists:Z
    :cond_30
    const-string v6, "Skip resetting state - package %s already INSTALLED"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v6, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d

    .line 93
    :cond_3a
    sget-object v6, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-eq v3, v6, :cond_44

    .line 94
    sget-object v4, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {p1, v4}, Lcom/google/android/finsky/local/LocalAsset;->resetToState(Lcom/google/android/finsky/local/AssetState;)V

    goto :goto_2d

    .line 96
    :cond_44
    const-string v6, "Skip resetting state - package %s already UNINSTALLED"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v6, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d
.end method


# virtual methods
.method public run(Lcom/google/android/finsky/local/AssetStore;)I
    .registers 14
    .parameter "assetStore"

    .prologue
    .line 38
    const/4 v3, 0x0

    .line 39
    .local v3, count:I
    const/4 v5, 0x0

    .line 40
    .local v5, needReconstruct:Z
    invoke-interface {p1}, Lcom/google/android/finsky/local/AssetStore;->getAssets()Ljava/util/Collection;

    move-result-object v2

    .line 41
    .local v2, assets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/local/LocalAsset;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/LocalAsset;

    .line 42
    .local v0, asset:Lcom/google/android/finsky/local/LocalAsset;
    sget-object v8, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule$2;->$SwitchMap$com$google$android$finsky$local$AssetState:[I

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/local/AssetState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_7c

    goto :goto_a

    .line 44
    :pswitch_26
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, packageName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v8, v6}, Lcom/google/android/finsky/utils/PackageInfoCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_38

    .line 46
    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->resetAsset(Lcom/google/android/finsky/local/LocalAsset;)V

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 49
    :cond_38
    iget-object v8, p0, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->mPackageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-virtual {v8, v6}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v7

    .line 50
    .local v7, pmVersion:I
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->getVersionCode()I

    move-result v1

    .line 51
    .local v1, assetVersion:I
    if-eq v7, v1, :cond_a

    .line 52
    const-string v8, "Version mismatch for %s, installed=%d asset=%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const/4 v5, 0x1

    goto :goto_a

    .line 65
    .end local v1           #assetVersion:I
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #pmVersion:I
    :pswitch_5f
    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->resetAsset(Lcom/google/android/finsky/local/LocalAsset;)V

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 69
    .end local v0           #asset:Lcom/google/android/finsky/local/LocalAsset;
    :cond_65
    if-eqz v5, :cond_7a

    .line 70
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule$1;

    invoke-direct {v9, p0}, Lcom/google/android/finsky/local/checker/InstallStateVerifierRule$1;-><init>(Lcom/google/android/finsky/local/checker/InstallStateVerifierRule;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_7a
    return v3

    .line 42
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
    .end packed-switch
.end method
