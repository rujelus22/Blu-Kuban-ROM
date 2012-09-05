.class Lcom/google/android/finsky/local/MemoryAssetStoreImpl$2;
.super Ljava/lang/Object;
.source "MemoryAssetStoreImpl.java"

# interfaces
.implements Lcom/google/android/finsky/local/MemoryAssetStoreImpl$AssetFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/local/MemoryAssetStoreImpl;->getAssets()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/local/MemoryAssetStoreImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/finsky/local/MemoryAssetStoreImpl$2;->this$0:Lcom/google/android/finsky/local/MemoryAssetStoreImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/google/android/finsky/local/LocalAsset;)Z
    .registers 3
    .parameter "asset"

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method
