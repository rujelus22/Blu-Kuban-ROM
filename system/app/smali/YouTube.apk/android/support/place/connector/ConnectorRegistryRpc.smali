.class public Landroid/support/place/connector/ConnectorRegistryRpc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_broker:Landroid/support/place/connector/Broker;

    .line 13
    iput-object p2, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public listConnectors(Ljava/lang/String;Landroid/support/place/connector/ConnectorRegistryRpc$OnListConnectors;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 92
    const-string v0, "type"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "listConnectors"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/ConnectorRegistryRpc$_ResultDispatcher;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/ConnectorRegistryRpc$_ResultDispatcher;-><init>(Landroid/support/place/connector/ConnectorRegistryRpc;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 94
    return-void
.end method

.method public registerConnectors(Ljava/util/List;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 76
    const-string v0, "connectors"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "registerConnectors"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 78
    return-void
.end method

.method public startListening(Landroid/support/place/connector/ConnectorRegistryRpc$Listener;)V
    .registers 4
    .parameter

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/support/place/connector/ConnectorRegistryRpc;->stopListening()V

    .line 172
    new-instance v0, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;-><init>(Landroid/support/place/connector/ConnectorRegistryRpc;Landroid/support/place/connector/Broker;Landroid/support/place/connector/ConnectorRegistryRpc$Listener;)V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    .line 173
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 174
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    if-eqz v0, :cond_c

    .line 178
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;->stopListening()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_presenter:Landroid/support/place/connector/ConnectorRegistryRpc$Presenter;

    .line 181
    :cond_c
    return-void
.end method

.method public unregisterConnector(Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 81
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 82
    const-string v0, "endpoint"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 83
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistryRpc;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "unregisterConnector"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 84
    return-void
.end method
