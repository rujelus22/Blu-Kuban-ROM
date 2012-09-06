.class Landroid/support/place/music/TungstenGroupingService$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "SourceFile"


# instance fields
.field private _listener:Landroid/support/place/music/TungstenGroupingService$Listener;

.field final synthetic this$0:Landroid/support/place/music/TungstenGroupingService;


# direct methods
.method public constructor <init>(Landroid/support/place/music/TungstenGroupingService;Landroid/support/place/connector/Broker;Landroid/support/place/music/TungstenGroupingService$Listener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

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
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 427
    const-string v1, "onStateChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 430
    const-string v1, "state"

    sget-object v2, Landroid/support/place/music/TgsState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsState;

    .line 431
    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService$Presenter;->_listener:Landroid/support/place/music/TungstenGroupingService$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/music/TungstenGroupingService$Listener;->onStateChanged(Landroid/support/place/music/TgsState;Landroid/support/place/rpc/RpcContext;)V

    .line 441
    :goto_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0

    .line 433
    :cond_1e
    const-string v1, "onVolumeChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 435
    const-string v1, "volumes"

    sget-object v2, Landroid/support/place/music/TgsRxVolume;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v0

    .line 436
    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService$Presenter;->_listener:Landroid/support/place/music/TungstenGroupingService$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/music/TungstenGroupingService$Listener;->onVolumeChanged(Ljava/util/List;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_1c

    .line 439
    :cond_34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_1d
.end method
