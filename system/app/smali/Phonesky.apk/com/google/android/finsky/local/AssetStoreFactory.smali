.class public Lcom/google/android/finsky/local/AssetStoreFactory;
.super Ljava/lang/Object;
.source "AssetStoreFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeAssetStore(Landroid/content/Context;)Lcom/google/android/finsky/local/AssetStore;
    .registers 4
    .parameter "context"

    .prologue
    .line 16
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 18
    new-instance v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;

    invoke-direct {v1, p1}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;-><init>(Landroid/content/Context;)V

    .line 19
    .local v1, persistentStore:Lcom/google/android/finsky/local/PersistentAssetStore;
    new-instance v0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;-><init>(Lcom/google/android/finsky/local/PersistentAssetStore;)V

    .line 20
    .local v0, memStore:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;
    invoke-static {v0}, Lcom/google/android/finsky/download/obb/ObbFactory;->initialize(Lcom/google/android/finsky/local/AssetStore;)V

    .line 22
    invoke-virtual {v0}, Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->initialize()Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

    .line 24
    return-object v0
.end method
