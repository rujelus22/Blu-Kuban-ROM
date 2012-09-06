.class public abstract Landroid/support/place/api/mesh/MeshService$EndpointBase;
.super Landroid/support/place/connector/Connector;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/support/place/connector/Connector;-><init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V

    .line 29
    return-void
.end method


# virtual methods
.method public abstract listNodes(Landroid/support/place/rpc/RpcContext;)Ljava/util/List;
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 64
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 66
    const-string v1, "snmpSet"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 68
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    const-string v2, "group"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 72
    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 74
    const-string v4, "size"

    invoke-virtual {v0, v4}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 76
    const-string v5, "value"

    invoke-virtual {v0, v5}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 78
    const-string v7, "timeout"

    invoke-virtual {v0, v7}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v7

    move-object v0, p0

    move-object v8, p3

    .line 79
    invoke-virtual/range {v0 .. v8}, Landroid/support/place/api/mesh/MeshService$EndpointBase;->snmpSet(Ljava/lang/String;IIIJILandroid/support/place/rpc/RpcContext;)Z

    move-result v1

    .line 80
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 81
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    :goto_42
    if-eqz v0, :cond_cb

    .line 120
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 123
    :goto_48
    return-object v0

    .line 83
    :cond_49
    const-string v1, "snmpSetSilent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 85
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "group"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 89
    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 91
    const-string v4, "size"

    invoke-virtual {v0, v4}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 93
    const-string v5, "value"

    invoke-virtual {v0, v5}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object v0, p0

    move-object v7, p3

    .line 94
    invoke-virtual/range {v0 .. v7}, Landroid/support/place/api/mesh/MeshService$EndpointBase;->snmpSetSilent(Ljava/lang/String;IIIJLandroid/support/place/rpc/RpcContext;)V

    move-object v0, v9

    .line 95
    goto :goto_42

    .line 96
    :cond_76
    const-string v1, "snmpGet"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 98
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v2, "group"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 102
    const-string v3, "id"

    invoke-virtual {v0, v3}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 104
    const-string v4, "size"

    invoke-virtual {v0, v4}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 106
    const-string v5, "timeout"

    invoke-virtual {v0, v5}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    move-object v6, p3

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroid/support/place/api/mesh/MeshService$EndpointBase;->snmpGet(Ljava/lang/String;IIIILandroid/support/place/rpc/RpcContext;)J

    move-result-wide v1

    .line 108
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 109
    const-string v3, "_result"

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    goto :goto_42

    .line 111
    :cond_ad
    const-string v0, "listNodes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 112
    invoke-virtual {p0, p3}, Landroid/support/place/api/mesh/MeshService$EndpointBase;->listNodes(Landroid/support/place/rpc/RpcContext;)Ljava/util/List;

    move-result-object v1

    .line 113
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 114
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putList(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_42

    .line 117
    :cond_c5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto/16 :goto_48

    :cond_cb
    move-object v0, v9

    .line 123
    goto/16 :goto_48
.end method

.method public pushOnNodeSeen(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 52
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 53
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 54
    const-string v1, "onNodeSeen"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/api/mesh/MeshService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 55
    return-void
.end method

.method public pushOnSnmpSet(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 59
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 60
    const-string v1, "onSnmpSet"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/api/mesh/MeshService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 61
    return-void
.end method

.method public abstract snmpGet(Ljava/lang/String;IIIILandroid/support/place/rpc/RpcContext;)J
.end method

.method public abstract snmpSet(Ljava/lang/String;IIIJILandroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract snmpSetSilent(Ljava/lang/String;IIIJLandroid/support/place/rpc/RpcContext;)V
.end method
