.class Landroid/support/place/music/TungstenGroupingService$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "TungstenGroupingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/music/TungstenGroupingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Presenter"
.end annotation


# instance fields
.field private _listener:Landroid/support/place/music/TungstenGroupingService$Listener;

.field final synthetic this$0:Landroid/support/place/music/TungstenGroupingService;


# direct methods
.method public constructor <init>(Landroid/support/place/music/TungstenGroupingService;Landroid/support/place/connector/Broker;Landroid/support/place/music/TungstenGroupingService$Listener;)V
    .registers 4
    .parameter
    .parameter "broker"
    .parameter "listener"

    .prologue
    .line 420
    iput-object p1, p0, Landroid/support/place/music/TungstenGroupingService$Presenter;->this$0:Landroid/support/place/music/TungstenGroupingService;

    .line 421
    invoke-direct {p0, p2, p3}, Landroid/support/place/connector/EventListener;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V

    .line 422
    iput-object p3, p0, Landroid/support/place/music/TungstenGroupingService$Presenter;->_listener:Landroid/support/place/music/TungstenGroupingService$Listener;

    .line 423
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 11
    .parameter "action"
    .parameter "requestParam"
    .parameter "context"
    .parameter "errorParam"

    .prologue
    .line 426
    new-instance v2, Landroid/support/place/rpc/RpcData;

    invoke-direct {v2, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 427
    .local v2, request:Landroid/support/place/rpc/RpcData;
    const/4 v3, 0x0

    .line 428
    .local v3, resultData:Landroid/support/place/rpc/RpcData;
    const-string v4, "onStateChanged"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 430
    const-string v4, "state"

    sget-object v5, Landroid/support/place/music/TgsState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v2, v4, v5}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsState;

    .line 431
    .local v0, _arg0:Landroid/support/place/music/TgsState;
    iget-object v4, p0, Landroid/support/place/music/TungstenGroupingService$Presenter;->_listener:Landroid/support/place/music/TungstenGroupingService$Listener;

    invoke-virtual {v4, v0, p3}, Landroid/support/place/music/TungstenGroupingService$Listener;->onStateChanged(Landroid/support/place/music/TgsState;Landroid/support/place/rpc/RpcContext;)V

    .line 441
    .end local v0           #_arg0:Landroid/support/place/music/TgsState;
    :goto_1d
    if-eqz v3, :cond_3f

    .line 442
    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v4

    .line 445
    :goto_23
    return-object v4

    .line 433
    :cond_24
    const-string v4, "onVolumeChanged"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 435
    const-string v4, "volumes"

    sget-object v5, Landroid/support/place/music/TgsRxVolume;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v2, v4, v5}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v1

    .line 436
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/music/TgsRxVolume;>;"
    iget-object v4, p0, Landroid/support/place/music/TungstenGroupingService$Presenter;->_listener:Landroid/support/place/music/TungstenGroupingService$Listener;

    invoke-virtual {v4, v1, p3}, Landroid/support/place/music/TungstenGroupingService$Listener;->onVolumeChanged(Ljava/util/List;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_1d

    .line 439
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/music/TgsRxVolume;>;"
    :cond_3a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v4

    goto :goto_23

    .line 445
    :cond_3f
    const/4 v4, 0x0

    goto :goto_23
.end method
