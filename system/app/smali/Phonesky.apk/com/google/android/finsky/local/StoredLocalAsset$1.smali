.class final Lcom/google/android/finsky/local/StoredLocalAsset$1;
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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/google/android/finsky/local/StoredLocalAssetVersion;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/local/AssetState;->isTransient()Z

    move-result v0

    return v0
.end method
