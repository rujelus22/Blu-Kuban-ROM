.class public abstract Landroid/support/place/connector/ConnectorRegistryRpc$EndpointBase;
.super Landroid/support/place/connector/Connector;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/support/place/connector/Connector;-><init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V

    .line 25
    return-void
.end method


# virtual methods
.method public abstract listConnectors(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Ljava/util/List;
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 45
    const-string v2, "registerConnectors"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 47
    const-string v2, "connectors"

    sget-object v3, Landroid/support/place/connector/ConnectorInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/ConnectorRegistryRpc$EndpointBase;->registerConnectors(Ljava/util/List;Landroid/support/place/rpc/RpcContext;)V

    move-object v0, v1

    .line 65
    :goto_1a
    if-eqz v0, :cond_5a

    .line 66
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 69
    :goto_20
    return-object v0

    .line 50
    :cond_21
    const-string v2, "unregisterConnector"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 52
    const-string v2, "endpoint"

    sget-object v3, Landroid/support/place/rpc/EndpointInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/EndpointInfo;

    .line 53
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/ConnectorRegistryRpc$EndpointBase;->unregisterConnector(Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/rpc/RpcContext;)V

    move-object v0, v1

    .line 54
    goto :goto_1a

    .line 55
    :cond_38
    const-string v2, "listConnectors"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 57
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/ConnectorRegistryRpc$EndpointBase;->listConnectors(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Ljava/util/List;

    move-result-object v2

    .line 59
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 60
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1a

    .line 63
    :cond_55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_20

    :cond_5a
    move-object v0, v1

    .line 69
    goto :goto_20
.end method

.method public pushOnConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 31
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 32
    const-string v1, "connector"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 33
    const-string v1, "onConnectorAdded"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/connector/ConnectorRegistryRpc$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 34
    return-void
.end method

.method public pushOnConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 37
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 38
    const-string v1, "connector"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 39
    const-string v1, "onConnectorRemoved"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/connector/ConnectorRegistryRpc$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 40
    return-void
.end method

.method public abstract registerConnectors(Ljava/util/List;Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract unregisterConnector(Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/rpc/RpcContext;)V
.end method
