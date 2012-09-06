.class public Landroid/support/place/api/lighting/LightingService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/api/lighting/LightingService$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/support/place/api/lighting/LightingService;->_broker:Landroid/support/place/connector/Broker;

    .line 13
    iput-object p2, p0, Landroid/support/place/api/lighting/LightingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Landroid/support/place/api/lighting/LightingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public listLights(Landroid/support/place/api/lighting/LightingService$OnListLights;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 96
    iget-object v0, p0, Landroid/support/place/api/lighting/LightingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/api/lighting/LightingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "listLights"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/api/lighting/LightingService$_ResultDispatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/api/lighting/LightingService$_ResultDispatcher;-><init>(Landroid/support/place/api/lighting/LightingService;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 97
    return-void
.end method

.method public setLightLevel(Ljava/lang/String;ILandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 102
    const-string v0, "id"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "level"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 104
    iget-object v0, p0, Landroid/support/place/api/lighting/LightingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/api/lighting/LightingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setLightLevel"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 105
    return-void
.end method

.method public setLightLocation(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 118
    const-string v0, "id"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "location"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/support/place/api/lighting/LightingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/api/lighting/LightingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setLightLocation"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 121
    return-void
.end method

.method public setLightName(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 110
    const-string v0, "id"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "name"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Landroid/support/place/api/lighting/LightingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/api/lighting/LightingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setLightName"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 113
    return-void
.end method

.method public startListening(Landroid/support/place/api/lighting/LightingService$Listener;)V
    .registers 4
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/support/place/api/lighting/LightingService;->stopListening()V

    .line 191
    new-instance v0, Landroid/support/place/api/lighting/LightingService$Presenter;

    iget-object v1, p0, Landroid/support/place/api/lighting/LightingService;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/api/lighting/LightingService$Presenter;-><init>(Landroid/support/place/api/lighting/LightingService;Landroid/support/place/connector/Broker;Landroid/support/place/api/lighting/LightingService$Listener;)V

    iput-object v0, p0, Landroid/support/place/api/lighting/LightingService;->_presenter:Landroid/support/place/api/lighting/LightingService$Presenter;

    .line 192
    iget-object v0, p0, Landroid/support/place/api/lighting/LightingService;->_presenter:Landroid/support/place/api/lighting/LightingService$Presenter;

    iget-object v1, p0, Landroid/support/place/api/lighting/LightingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/api/lighting/LightingService$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 193
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/place/api/lighting/LightingService;->_presenter:Landroid/support/place/api/lighting/LightingService$Presenter;

    if-eqz v0, :cond_c

    .line 197
    iget-object v0, p0, Landroid/support/place/api/lighting/LightingService;->_presenter:Landroid/support/place/api/lighting/LightingService$Presenter;

    invoke-virtual {v0}, Landroid/support/place/api/lighting/LightingService$Presenter;->stopListening()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/api/lighting/LightingService;->_presenter:Landroid/support/place/api/lighting/LightingService$Presenter;

    .line 200
    :cond_c
    return-void
.end method
