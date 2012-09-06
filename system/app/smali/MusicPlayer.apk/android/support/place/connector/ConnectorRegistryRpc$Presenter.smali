.class Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "ConnectorRegistryRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/ConnectorRegistryRpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Presenter"
.end annotation


# instance fields
.field private _listener:Landroid/support/place/connector/ConnectorRegistryRpc$Listener;

.field final synthetic this$0:Landroid/support/place/connector/ConnectorRegistryRpc;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/ConnectorRegistryRpc;Landroid/support/place/connector/Broker;Landroid/support/place/connector/ConnectorRegistryRpc$Listener;)V
    .registers 4
    .parameter
    .parameter "broker"
    .parameter "listener"

    .prologue
    .line 139
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;->this$0:Landroid/support/place/connector/ConnectorRegistryRpc;

    .line 140
    invoke-direct {p0, p2, p3}, Landroid/support/place/connector/EventListener;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V

    .line 141
    iput-object p3, p0, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;->_listener:Landroid/support/place/connector/ConnectorRegistryRpc$Listener;

    .line 142
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 10
    .parameter "action"
    .parameter "requestParam"
    .parameter "context"
    .parameter "errorParam"

    .prologue
    .line 145
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 146
    .local v1, request:Landroid/support/place/rpc/RpcData;
    const/4 v2, 0x0

    .line 147
    .local v2, resultData:Landroid/support/place/rpc/RpcData;
    const-string v3, "onConnectorAdded"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 149
    const-string v3, "connector"

    sget-object v4, Landroid/support/place/connector/ConnectorInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v1, v3, v4}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 150
    .local v0, _arg0:Landroid/support/place/connector/ConnectorInfo;
    iget-object v3, p0, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;->_listener:Landroid/support/place/connector/ConnectorRegistryRpc$Listener;

    invoke-virtual {v3, v0, p3}, Landroid/support/place/connector/ConnectorRegistryRpc$Listener;->onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;Landroid/support/place/rpc/RpcContext;)V

    .line 160
    :goto_1d
    if-eqz v2, :cond_41

    .line 161
    invoke-virtual {v2}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    .line 164
    .end local v0           #_arg0:Landroid/support/place/connector/ConnectorInfo;
    :goto_23
    return-object v3

    .line 152
    :cond_24
    const-string v3, "onConnectorRemoved"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 154
    const-string v3, "connector"

    sget-object v4, Landroid/support/place/connector/ConnectorInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v1, v3, v4}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 155
    .restart local v0       #_arg0:Landroid/support/place/connector/ConnectorInfo;
    iget-object v3, p0, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;->_listener:Landroid/support/place/connector/ConnectorRegistryRpc$Listener;

    invoke-virtual {v3, v0, p3}, Landroid/support/place/connector/ConnectorRegistryRpc$Listener;->onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_1d

    .line 158
    .end local v0           #_arg0:Landroid/support/place/connector/ConnectorInfo;
    :cond_3c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v3

    goto :goto_23

    .line 164
    .restart local v0       #_arg0:Landroid/support/place/connector/ConnectorInfo;
    :cond_41
    const/4 v3, 0x0

    goto :goto_23
.end method
