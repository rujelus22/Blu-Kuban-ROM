.class public Landroid/support/place/connector/coordinator/Coordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/connector/coordinator/Coordinator$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/support/place/connector/coordinator/Coordinator;->_broker:Landroid/support/place/connector/Broker;

    .line 13
    iput-object p2, p0, Landroid/support/place/connector/coordinator/Coordinator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public getPlaceName(Landroid/support/place/connector/coordinator/Coordinator$OnGetPlaceName;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 104
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 105
    iget-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/coordinator/Coordinator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getPlaceName"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;-><init>(Landroid/support/place/connector/coordinator/Coordinator;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 106
    return-void
.end method

.method public setPlaceName(Ljava/lang/String;Landroid/support/place/connector/coordinator/Coordinator$OnSetPlaceName;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 95
    const-string v0, "name"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/coordinator/Coordinator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setPlaceName"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;-><init>(Landroid/support/place/connector/coordinator/Coordinator;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 97
    return-void
.end method

.method public startListening(Landroid/support/place/connector/coordinator/Coordinator$Listener;)V
    .registers 4
    .parameter

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/support/place/connector/coordinator/Coordinator;->stopListening()V

    .line 204
    new-instance v0, Landroid/support/place/connector/coordinator/Coordinator$Presenter;

    iget-object v1, p0, Landroid/support/place/connector/coordinator/Coordinator;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/connector/coordinator/Coordinator$Presenter;-><init>(Landroid/support/place/connector/coordinator/Coordinator;Landroid/support/place/connector/Broker;Landroid/support/place/connector/coordinator/Coordinator$Listener;)V

    iput-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator;->_presenter:Landroid/support/place/connector/coordinator/Coordinator$Presenter;

    .line 205
    iget-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator;->_presenter:Landroid/support/place/connector/coordinator/Coordinator$Presenter;

    iget-object v1, p0, Landroid/support/place/connector/coordinator/Coordinator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/coordinator/Coordinator$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 206
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator;->_presenter:Landroid/support/place/connector/coordinator/Coordinator$Presenter;

    if-eqz v0, :cond_c

    .line 210
    iget-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator;->_presenter:Landroid/support/place/connector/coordinator/Coordinator$Presenter;

    invoke-virtual {v0}, Landroid/support/place/connector/coordinator/Coordinator$Presenter;->stopListening()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator;->_presenter:Landroid/support/place/connector/coordinator/Coordinator$Presenter;

    .line 213
    :cond_c
    return-void
.end method

.method public versionCheck(IILandroid/support/place/connector/coordinator/Coordinator$OnVersionCheck;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 84
    const-string v0, "clientMinApiVersion"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 85
    const-string v0, "clientMaxApiVersion"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Landroid/support/place/connector/coordinator/Coordinator;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/coordinator/Coordinator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "versionCheck"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/connector/coordinator/Coordinator$_ResultDispatcher;-><init>(Landroid/support/place/connector/coordinator/Coordinator;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 87
    return-void
.end method
