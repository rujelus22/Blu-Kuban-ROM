.class Lcom/google/android/finsky/local/StoredLocalAsset$6;
.super Ljava/lang/Object;
.source "StoredLocalAsset.java"

# interfaces
.implements Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/local/StoredLocalAsset;->isUpdate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/local/StoredLocalAsset;

.field final synthetic val$currentVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/StoredLocalAsset;Lcom/google/android/finsky/local/StoredLocalAssetVersion;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/google/android/finsky/local/StoredLocalAsset$6;->this$0:Lcom/google/android/finsky/local/StoredLocalAsset;

    iput-object p2, p0, Lcom/google/android/finsky/local/StoredLocalAsset$6;->val$currentVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)Z
    .registers 5
    .parameter "v"

    .prologue
    .line 695
    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    .line 696
    .local v0, s:Lcom/google/android/finsky/local/AssetState;
    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getVersionCode()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/local/StoredLocalAsset$6;->val$currentVersion:Lcom/google/android/finsky/local/StoredLocalAssetVersion;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getVersionCode()I

    move-result v2

    if-ge v1, v2, :cond_1a

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-eq v0, v1, :cond_18

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method
