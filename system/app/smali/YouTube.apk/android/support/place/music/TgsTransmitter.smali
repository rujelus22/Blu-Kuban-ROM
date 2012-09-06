.class public Landroid/support/place/music/TgsTransmitter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/music/TgsTransmitter$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroid/support/place/music/TgsTransmitter;->_broker:Landroid/support/place/connector/Broker;

    .line 15
    iput-object p2, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 16
    return-void
.end method


# virtual methods
.method public configureMediaPlayer(Landroid/support/place/rpc/RpcData;Landroid/support/place/music/TgsTransmitter$OnConfigureMediaPlayer;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 202
    const-string v0, "args"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 203
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "configureMediaPlayer"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;-><init>(Landroid/support/place/music/TgsTransmitter;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 204
    return-void
.end method

.method public getApplicationConnector(Landroid/support/place/music/TgsTransmitter$OnGetApplicationConnector;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 176
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 177
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getApplicationConnector"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;-><init>(Landroid/support/place/music/TgsTransmitter;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 178
    return-void
.end method

.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public getGroupId(Landroid/support/place/music/TgsTransmitter$OnGetGroupId;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 223
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 224
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getGroupId"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;-><init>(Landroid/support/place/music/TgsTransmitter;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 225
    return-void
.end method

.method public getPlayState(Landroid/support/place/music/TgsTransmitter$OnGetPlayState;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 258
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 259
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getPlayState"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;

    const/16 v5, 0x8

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;-><init>(Landroid/support/place/music/TgsTransmitter;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 260
    return-void
.end method

.method public pauseTransmitter(Landroid/support/place/music/TgsTransmitter$OnPauseTransmitter;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 239
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "pauseTransmitter"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;

    const/4 v5, 0x6

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;-><init>(Landroid/support/place/music/TgsTransmitter;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 240
    return-void
.end method

.method public reset(Landroid/support/place/music/TgsTransmitter$OnReset;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 163
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 164
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "reset"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;-><init>(Landroid/support/place/music/TgsTransmitter;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 165
    return-void
.end method

.method public resumeTransmitter(Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 8
    .parameter

    .prologue
    .line 245
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 246
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "resumeTransmitter"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 247
    return-void
.end method

.method public setGroupId(Ljava/lang/String;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 209
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 210
    const-string v0, "groupId"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setGroupId"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 212
    return-void
.end method

.method public startListening(Landroid/support/place/music/TgsTransmitter$Listener;)V
    .registers 4
    .parameter

    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/support/place/music/TgsTransmitter;->stopListening()V

    .line 414
    new-instance v0, Landroid/support/place/music/TgsTransmitter$Presenter;

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/music/TgsTransmitter$Presenter;-><init>(Landroid/support/place/music/TgsTransmitter;Landroid/support/place/connector/Broker;Landroid/support/place/music/TgsTransmitter$Listener;)V

    iput-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_presenter:Landroid/support/place/music/TgsTransmitter$Presenter;

    .line 415
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_presenter:Landroid/support/place/music/TgsTransmitter$Presenter;

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/music/TgsTransmitter$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 416
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_presenter:Landroid/support/place/music/TgsTransmitter$Presenter;

    if-eqz v0, :cond_c

    .line 420
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_presenter:Landroid/support/place/music/TgsTransmitter$Presenter;

    invoke-virtual {v0}, Landroid/support/place/music/TgsTransmitter$Presenter;->stopListening()V

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_presenter:Landroid/support/place/music/TgsTransmitter$Presenter;

    .line 423
    :cond_c
    return-void
.end method

.method public versionCheck(IILandroid/support/place/music/TgsTransmitter$OnVersionCheck;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 145
    const-string v0, "clientMinApiVersion"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 146
    const-string v0, "clientMaxApiVersion"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 147
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitter;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitter;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "versionCheck"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/music/TgsTransmitter$_ResultDispatcher;-><init>(Landroid/support/place/music/TgsTransmitter;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 148
    return-void
.end method
