.class Lcom/google/android/vending/remoting/api/VendingApi$AssetListConverter;
.super Ljava/lang/Object;
.source "VendingApi.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/api/VendingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssetListConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/model/AssetList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Response$Listener;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/model/AssetList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/vending/model/AssetList;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApi$AssetListConverter;->mListener:Lcom/android/volley/Response$Listener;

    .line 351
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 355
    new-instance v0, Lcom/google/android/vending/model/AssetList;

    invoke-direct {v0, p1}, Lcom/google/android/vending/model/AssetList;-><init>(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)V

    .line 356
    .local v0, result:Lcom/google/android/vending/model/AssetList;
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi$AssetListConverter;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v1, v0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 357
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 346
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/api/VendingApi$AssetListConverter;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)V

    return-void
.end method
