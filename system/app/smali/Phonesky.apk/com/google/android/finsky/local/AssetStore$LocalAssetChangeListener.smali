.class public interface abstract Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;
.super Ljava/lang/Object;
.source "AssetStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/local/AssetStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocalAssetChangeListener"
.end annotation


# virtual methods
.method public abstract onAssetAdded(Lcom/google/android/finsky/local/LocalAsset;)V
.end method

.method public abstract onAssetChanged(Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/local/AssetState;)V
.end method

.method public abstract onAssetDeleted(Ljava/lang/String;)V
.end method
