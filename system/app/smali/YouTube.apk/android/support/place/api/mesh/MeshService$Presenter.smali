.class Landroid/support/place/api/mesh/MeshService$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "SourceFile"


# instance fields
.field private _listener:Landroid/support/place/api/mesh/MeshService$Listener;

.field final synthetic this$0:Landroid/support/place/api/mesh/MeshService;


# direct methods
.method public constructor <init>(Landroid/support/place/api/mesh/MeshService;Landroid/support/place/connector/Broker;Landroid/support/place/api/mesh/MeshService$Listener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Landroid/support/place/api/mesh/MeshService$Presenter;->this$0:Landroid/support/place/api/mesh/MeshService;

    .line 279
    invoke-direct {p0, p2, p3}, Landroid/support/place/connector/EventListener;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V

    .line 280
    iput-object p3, p0, Landroid/support/place/api/mesh/MeshService$Presenter;->_listener:Landroid/support/place/api/mesh/MeshService$Listener;

    .line 281
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 285
    const-string v1, "onNodeSeen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 288
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 289
    iget-object v1, p0, Landroid/support/place/api/mesh/MeshService$Presenter;->_listener:Landroid/support/place/api/mesh/MeshService$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/api/mesh/MeshService$Listener;->onNodeSeen(Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V

    .line 299
    :goto_18
    const/4 v0, 0x0

    :goto_19
    return-object v0

    .line 291
    :cond_1a
    const-string v1, "onSnmpSet"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 293
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 294
    iget-object v1, p0, Landroid/support/place/api/mesh/MeshService$Presenter;->_listener:Landroid/support/place/api/mesh/MeshService$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/api/mesh/MeshService$Listener;->onSnmpSet(Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_18

    .line 297
    :cond_2e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_19
.end method
