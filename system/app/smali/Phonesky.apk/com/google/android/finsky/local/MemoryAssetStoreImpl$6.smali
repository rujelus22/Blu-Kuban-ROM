.class Lcom/google/android/finsky/local/MemoryAssetStoreImpl$6;
.super Ljava/lang/Object;
.source "MemoryAssetStoreImpl.java"

# interfaces
.implements Lcom/google/android/finsky/local/MemoryAssetStoreImpl$ListenerAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->notifyAssetAdded(Lcom/google/android/finsky/local/StoredLocalAsset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

.field final synthetic val$asset:Lcom/google/android/finsky/local/StoredLocalAsset;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;Lcom/google/android/finsky/local/StoredLocalAsset;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$6;->this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

    iput-object p2, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$6;->val$asset:Lcom/google/android/finsky/local/StoredLocalAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$6;->val$asset:Lcom/google/android/finsky/local/StoredLocalAsset;

    invoke-interface {p1, v0}, Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;->onAssetAdded(Lcom/google/android/finsky/local/LocalAsset;)V

    .line 382
    return-void
.end method
