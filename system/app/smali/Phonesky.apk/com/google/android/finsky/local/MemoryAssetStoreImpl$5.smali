.class Lcom/google/android/finsky/local/MemoryAssetStoreImpl$5;
.super Ljava/lang/Object;
.source "MemoryAssetStoreImpl.java"

# interfaces
.implements Lcom/google/android/finsky/local/MemoryAssetStoreImpl$ListenerAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->notifyAssetChanged(Lcom/google/android/finsky/local/StoredLocalAsset;Lcom/google/android/finsky/local/AssetState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

.field final synthetic val$asset:Lcom/google/android/finsky/local/StoredLocalAsset;

.field final synthetic val$previousState:Lcom/google/android/finsky/local/AssetState;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;Lcom/google/android/finsky/local/StoredLocalAsset;Lcom/google/android/finsky/local/AssetState;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$5;->this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

    iput-object p2, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$5;->val$asset:Lcom/google/android/finsky/local/StoredLocalAsset;

    iput-object p3, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$5;->val$previousState:Lcom/google/android/finsky/local/AssetState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$5;->val$asset:Lcom/google/android/finsky/local/StoredLocalAsset;

    iget-object v1, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$5;->val$previousState:Lcom/google/android/finsky/local/AssetState;

    invoke-interface {p1, v0, v1}, Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;->onAssetChanged(Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/local/AssetState;)V

    .line 372
    return-void
.end method
