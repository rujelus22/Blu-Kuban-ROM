.class public interface abstract Lcom/google/android/finsky/local/AssetStore;
.super Ljava/lang/Object;
.source "AssetStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V
.end method

.method public abstract deleteAsset(Ljava/lang/String;)Z
.end method

.method public abstract getAsset(Landroid/net/Uri;)Lcom/google/android/finsky/local/LocalAsset;
.end method

.method public abstract getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;
.end method

.method public abstract getAssetById(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;
.end method

.method public abstract getAssets()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/LocalAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssetsByState(Lcom/google/android/finsky/local/AssetState;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/local/AssetState;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/local/LocalAsset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCompleteVersionHistory(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/local/LocalAssetVersion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertAsset(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)Lcom/google/android/finsky/local/LocalAsset;
.end method

.method public abstract insertAsset(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/finsky/local/LocalAsset;
.end method

.method public abstract removeListener(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V
.end method

.method public abstract repairMappings()I
.end method
