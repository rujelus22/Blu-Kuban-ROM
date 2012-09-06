.class public Landroid/support/place/music/TungstenReceiverService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/music/TungstenReceiverService$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    .line 15
    iput-object p2, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 16
    return-void
.end method


# virtual methods
.method public adjustMasterVolume(ILandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 282
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 283
    const-string v0, "steps"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 284
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "adjustMasterVolume"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 285
    return-void
.end method

.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public getFixedVolumeLevel(Ljava/lang/String;Landroid/support/place/music/TungstenReceiverService$OnGetFixedVolumeLevel;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 367
    const-string v0, "output"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getFixedVolumeLevel"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/16 v5, 0x14

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 369
    return-void
.end method

.method public getFixedVolumeOut(Ljava/lang/String;Landroid/support/place/music/TungstenReceiverService$OnGetFixedVolumeOut;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 304
    const-string v0, "output"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getFixedVolumeOut"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/16 v5, 0xb

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 306
    return-void
.end method

.method public getMasterMute(Landroid/support/place/music/TungstenReceiverService$OnGetMasterMute;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 275
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 276
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getMasterMute"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/4 v5, 0x7

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 277
    return-void
.end method

.method public getMasterVolume(Landroid/support/place/music/TungstenReceiverService$OnGetMasterVolume;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 266
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 267
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getMasterVolume"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/4 v5, 0x6

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 268
    return-void
.end method

.method public getSyncDelay(Ljava/lang/String;Landroid/support/place/music/TungstenReceiverService$OnGetSyncDelay;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 325
    const-string v0, "output"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getSyncDelay"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/16 v5, 0xe

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 327
    return-void
.end method

.method public isOutputEnabled(Ljava/lang/String;Landroid/support/place/music/TungstenReceiverService$OnIsOutputEnabled;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 335
    const-string v0, "output"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "isOutputEnabled"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/16 v5, 0x10

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 337
    return-void
.end method

.method public reset(Landroid/support/place/music/TungstenReceiverService$OnReset;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 233
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 234
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "reset"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 235
    return-void
.end method

.method public setEndpoint(Ljava/lang/String;ILandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 239
    const-string v0, "address"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "port"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 241
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setEndpoint"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 242
    return-void
.end method

.method public setFixedVolumeLevel(FLjava/lang/String;Landroid/support/place/music/TungstenReceiverService$OnSetFixedVolumeLevel;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 356
    const-string v0, "value"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    .line 357
    const-string v0, "output"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setFixedVolumeLevel"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/16 v5, 0x13

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 359
    return-void
.end method

.method public setFixedVolumeOut(ZLjava/lang/String;Landroid/support/place/music/TungstenReceiverService$OnSetFixedVolumeOut;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 293
    const-string v0, "fixed_vout"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    const-string v0, "output"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setFixedVolumeOut"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/16 v5, 0xa

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 296
    return-void
.end method

.method public setMasterVolume(FZLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 256
    const-string v0, "volume"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    .line 257
    const-string v0, "mute"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 258
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setMasterVolume"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 259
    return-void
.end method

.method public setOutputEnabled(ZLjava/lang/String;Landroid/support/place/music/TungstenReceiverService$OnSetOutputEnabled;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 345
    const-string v0, "enabled"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    const-string v0, "output"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setOutputEnabled"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/16 v5, 0x11

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 348
    return-void
.end method

.method public setSyncDelay(FLjava/lang/String;Landroid/support/place/music/TungstenReceiverService$OnSetSyncDelay;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 314
    const-string v0, "sync_delay"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    .line 315
    const-string v0, "output"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setSyncDelay"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/16 v5, 0xd

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 317
    return-void
.end method

.method public start(Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 8
    .parameter

    .prologue
    .line 245
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 246
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "start"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 247
    return-void
.end method

.method public startListening(Landroid/support/place/music/TungstenReceiverService$Listener;)V
    .registers 4
    .parameter

    .prologue
    .line 634
    invoke-virtual {p0}, Landroid/support/place/music/TungstenReceiverService;->stopListening()V

    .line 635
    new-instance v0, Landroid/support/place/music/TungstenReceiverService$Presenter;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/music/TungstenReceiverService$Presenter;-><init>(Landroid/support/place/music/TungstenReceiverService;Landroid/support/place/connector/Broker;Landroid/support/place/music/TungstenReceiverService$Listener;)V

    iput-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_presenter:Landroid/support/place/music/TungstenReceiverService$Presenter;

    .line 636
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_presenter:Landroid/support/place/music/TungstenReceiverService$Presenter;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/music/TungstenReceiverService$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 637
    return-void
.end method

.method public stop(Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 8
    .parameter

    .prologue
    .line 250
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 251
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "stop"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 252
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_presenter:Landroid/support/place/music/TungstenReceiverService$Presenter;

    if-eqz v0, :cond_c

    .line 641
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_presenter:Landroid/support/place/music/TungstenReceiverService$Presenter;

    invoke-virtual {v0}, Landroid/support/place/music/TungstenReceiverService$Presenter;->stopListening()V

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_presenter:Landroid/support/place/music/TungstenReceiverService$Presenter;

    .line 644
    :cond_c
    return-void
.end method

.method public versionCheck(IILandroid/support/place/music/TungstenReceiverService$OnVersionCheck;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 223
    const-string v0, "clientMinApiVersion"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 224
    const-string v0, "clientMaxApiVersion"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 225
    iget-object v0, p0, Landroid/support/place/music/TungstenReceiverService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenReceiverService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "versionCheck"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/music/TungstenReceiverService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenReceiverService;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 226
    return-void
.end method
