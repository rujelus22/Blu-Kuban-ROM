.class Lcom/google/android/finsky/local/MemoryAssetStoreImpl$7;
.super Ljava/lang/Object;
.source "MemoryAssetStoreImpl.java"

# interfaces
.implements Lcom/google/android/finsky/local/MemoryAssetStoreImpl$ListenerAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->notifyAssetDeleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$7;->this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

    iput-object p2, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$7;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$7;->val$packageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;->onAssetDeleted(Ljava/lang/String;)V

    .line 392
    return-void
.end method
