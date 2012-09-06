.class public Landroid/support/place/api/mesh/MeshService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/api/mesh/MeshService$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroid/support/place/api/mesh/MeshService;->_broker:Landroid/support/place/connector/Broker;

    .line 17
    iput-object p2, p0, Landroid/support/place/api/mesh/MeshService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 18
    return-void
.end method


# virtual methods
.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public listNodes(Landroid/support/place/api/mesh/MeshService$OnListNodes;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 203
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 204
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/api/mesh/MeshService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "listNodes"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;-><init>(Landroid/support/place/api/mesh/MeshService;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 205
    return-void
.end method

.method public snmpGet(Ljava/lang/String;IIIILandroid/support/place/api/mesh/MeshService$OnSnmpGet;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 188
    const-string v0, "address"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "group"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 190
    const-string v0, "id"

    invoke-virtual {v3, v0, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 191
    const-string v0, "size"

    invoke-virtual {v3, v0, p4}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 192
    const-string v0, "timeout"

    invoke-virtual {v3, v0, p5}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 193
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/api/mesh/MeshService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "snmpGet"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5, p6}, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;-><init>(Landroid/support/place/api/mesh/MeshService;ILjava/lang/Object;)V

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 194
    return-void
.end method

.method public snmpSet(Ljava/lang/String;IIIJILandroid/support/place/api/mesh/MeshService$OnSnmpSet;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 158
    const-string v0, "address"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "group"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 160
    const-string v0, "id"

    invoke-virtual {v3, v0, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 161
    const-string v0, "size"

    invoke-virtual {v3, v0, p4}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 162
    const-string v0, "value"

    invoke-virtual {v3, v0, p5, p6}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 163
    const-string v0, "timeout"

    invoke-virtual {v3, v0, p7}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 164
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/api/mesh/MeshService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "snmpSet"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p8}, Landroid/support/place/api/mesh/MeshService$_ResultDispatcher;-><init>(Landroid/support/place/api/mesh/MeshService;ILjava/lang/Object;)V

    move-object v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 165
    return-void
.end method

.method public snmpSetSilent(Ljava/lang/String;IIIJLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 170
    const-string v0, "address"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "group"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 172
    const-string v0, "id"

    invoke-virtual {v3, v0, p3}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 173
    const-string v0, "size"

    invoke-virtual {v3, v0, p4}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 174
    const-string v0, "value"

    invoke-virtual {v3, v0, p5, p6}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 175
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/api/mesh/MeshService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "snmpSetSilent"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 176
    return-void
.end method

.method public startListening(Landroid/support/place/api/mesh/MeshService$Listener;)V
    .registers 4
    .parameter

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/support/place/api/mesh/MeshService;->stopListening()V

    .line 311
    new-instance v0, Landroid/support/place/api/mesh/MeshService$Presenter;

    iget-object v1, p0, Landroid/support/place/api/mesh/MeshService;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/api/mesh/MeshService$Presenter;-><init>(Landroid/support/place/api/mesh/MeshService;Landroid/support/place/connector/Broker;Landroid/support/place/api/mesh/MeshService$Listener;)V

    iput-object v0, p0, Landroid/support/place/api/mesh/MeshService;->_presenter:Landroid/support/place/api/mesh/MeshService$Presenter;

    .line 312
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService;->_presenter:Landroid/support/place/api/mesh/MeshService$Presenter;

    iget-object v1, p0, Landroid/support/place/api/mesh/MeshService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/api/mesh/MeshService$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 313
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService;->_presenter:Landroid/support/place/api/mesh/MeshService$Presenter;

    if-eqz v0, :cond_c

    .line 317
    iget-object v0, p0, Landroid/support/place/api/mesh/MeshService;->_presenter:Landroid/support/place/api/mesh/MeshService$Presenter;

    invoke-virtual {v0}, Landroid/support/place/api/mesh/MeshService$Presenter;->stopListening()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/api/mesh/MeshService;->_presenter:Landroid/support/place/api/mesh/MeshService$Presenter;

    .line 320
    :cond_c
    return-void
.end method
