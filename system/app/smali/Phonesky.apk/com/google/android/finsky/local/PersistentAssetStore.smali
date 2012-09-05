.class public interface abstract Lcom/google/android/finsky/local/PersistentAssetStore;
.super Ljava/lang/Object;
.source "PersistentAssetStore.java"


# virtual methods
.method public abstract deleteAsset(Ljava/lang/String;)V
.end method

.method public abstract deleteAssetVersion(Ljava/lang/String;)V
.end method

.method public abstract getAllAssets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/local/LocalAssetRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllVersions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/local/LocalAssetVersionRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertAsset(Lcom/google/android/finsky/local/LocalAssetRecord;)V
.end method

.method public abstract insertAssetVersion(Lcom/google/android/finsky/local/LocalAssetVersionRecord;)V
.end method
