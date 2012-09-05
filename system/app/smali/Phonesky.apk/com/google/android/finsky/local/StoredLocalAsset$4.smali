.class final Lcom/google/android/finsky/local/StoredLocalAsset$4;
.super Ljava/lang/Object;
.source "StoredLocalAsset.java"

# interfaces
.implements Lcom/google/android/finsky/local/StoredLocalAsset$VersionFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/local/StoredLocalAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    .line 44
    .local v0, s:Lcom/google/android/finsky/local/AssetState;
    sget-object v1, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method
