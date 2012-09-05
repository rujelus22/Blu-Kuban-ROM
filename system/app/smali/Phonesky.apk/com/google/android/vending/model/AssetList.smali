.class public Lcom/google/android/vending/model/AssetList;
.super Ljava/lang/Object;
.source "AssetList.java"


# instance fields
.field private final mAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/model/AssetList;->mAssets:Ljava/util/List;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)V
    .registers 6
    .parameter "responseProto"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/vending/model/AssetList;-><init>()V

    .line 21
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getAssetList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_14

    .line 22
    :cond_b
    const-string v2, "Received a null AssetsResponseProto or asset list."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_13
    return-void

    .line 25
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;->getAssetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;

    .line 26
    .local v0, asset:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;
    new-instance v2, Lcom/google/android/vending/model/Asset;

    invoke-direct {v2, v0}, Lcom/google/android/vending/model/Asset;-><init>(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalAssetProto;)V

    invoke-virtual {p0, v2}, Lcom/google/android/vending/model/AssetList;->addAsset(Lcom/google/android/vending/model/Asset;)V

    goto :goto_1c
.end method


# virtual methods
.method public addAsset(Lcom/google/android/vending/model/Asset;)V
    .registers 3
    .parameter "asset"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/vending/model/AssetList;->mAssets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public getAssets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/vending/model/AssetList;->mAssets:Ljava/util/List;

    return-object v0
.end method
