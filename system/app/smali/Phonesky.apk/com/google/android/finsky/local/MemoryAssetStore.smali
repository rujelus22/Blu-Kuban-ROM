.class interface abstract Lcom/google/android/finsky/local/MemoryAssetStore;
.super Ljava/lang/Object;
.source "MemoryAssetStore.java"

# interfaces
.implements Lcom/google/android/finsky/local/AssetStore;


# virtual methods
.method public abstract deleteAssetVersion(Lcom/google/android/finsky/local/StoredLocalAssetVersion;)V
.end method

.method public abstract deleteAssetVersion(Ljava/lang/String;)Z
.end method

.method public abstract getAssetVersions(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/StoredLocalAssetVersion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertAssetVersion(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/local/StoredLocalAssetVersion;
.end method

.method public abstract notifyAssetChanged(Lcom/google/android/finsky/local/StoredLocalAsset;Lcom/google/android/finsky/local/AssetState;)V
.end method

.method public abstract notifyAssetVersionChanged(Lcom/google/android/finsky/local/StoredLocalAssetVersion;Lcom/google/android/finsky/local/AssetState;)V
.end method
