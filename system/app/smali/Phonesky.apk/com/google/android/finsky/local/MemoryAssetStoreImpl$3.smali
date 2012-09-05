.class Lcom/google/android/finsky/local/MemoryAssetStoreImpl$3;
.super Ljava/lang/Object;
.source "MemoryAssetStoreImpl.java"

# interfaces
.implements Lcom/google/android/finsky/local/MemoryAssetStoreImpl$AssetFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->getAssetsByState(Lcom/google/android/finsky/local/AssetState;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

.field final synthetic val$state:Lcom/google/android/finsky/local/AssetState;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;Lcom/google/android/finsky/local/AssetState;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$3;->this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

    iput-object p2, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$3;->val$state:Lcom/google/android/finsky/local/AssetState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/google/android/finsky/local/LocalAsset;)Z
    .registers 4
    .parameter "asset"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$3;->val$state:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/local/AssetState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
