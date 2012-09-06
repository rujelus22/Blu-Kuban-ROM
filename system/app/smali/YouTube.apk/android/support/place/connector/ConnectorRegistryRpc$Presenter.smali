.class Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "SourceFile"


# instance fields
.field private _listener:Landroid/support/place/connector/ConnectorRegistryRpc$Listener;

.field final synthetic this$0:Landroid/support/place/connector/ConnectorRegistryRpc;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/ConnectorRegistryRpc;Landroid/support/place/connector/Broker;Landroid/support/place/connector/ConnectorRegistryRpc$Listener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

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
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 146
    const-string v1, "onConnectorAdded"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 149
    const-string v1, "connector"

    sget-object v2, Landroid/support/place/connector/ConnectorInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 150
    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;->_listener:Landroid/support/place/connector/ConnectorRegistryRpc$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/connector/ConnectorRegistryRpc$Listener;->onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;Landroid/support/place/rpc/RpcContext;)V

    .line 160
    :goto_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0

    .line 152
    :cond_1e
    const-string v1, "onConnectorRemoved"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 154
    const-string v1, "connector"

    sget-object v2, Landroid/support/place/connector/ConnectorInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 155
    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;->_listener:Landroid/support/place/connector/ConnectorRegistryRpc$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/connector/ConnectorRegistryRpc$Listener;->onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_1c

    .line 158
    :cond_36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_1d
.end method
