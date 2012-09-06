.class public Landroid/support/place/music/TungstenGroupingService;
.super Ljava/lang/Object;
.source "TungstenGroupingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/music/TungstenGroupingService$Presenter;,
        Landroid/support/place/music/TungstenGroupingService$Listener;,
        Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;,
        Landroid/support/place/music/TungstenGroupingService$OnGetRxVolumes;,
        Landroid/support/place/music/TungstenGroupingService$OnRemoveRxFromGroup;,
        Landroid/support/place/music/TungstenGroupingService$OnAssignRxToGroup;,
        Landroid/support/place/music/TungstenGroupingService$OnCreateGroup;,
        Landroid/support/place/music/TungstenGroupingService$OnGetGroupState;,
        Landroid/support/place/music/TungstenGroupingService$OnVersionCheck;
    }
.end annotation


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/music/TungstenGroupingService$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter "broker"
    .parameter "endpoint"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/support/place/music/TungstenGroupingService;->_broker:Landroid/support/place/connector/Broker;

    .line 13
    iput-object p2, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public adjustGroupVolume(Ljava/lang/String;ILandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter "groupId"
    .parameter "steps"
    .parameter "_errors"

    .prologue
    .line 277
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 278
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "groupId"

    invoke-virtual {v6, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "steps"

    invoke-virtual {v6, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 280
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "adjustGroupVolume"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 281
    return-void
.end method

.method public assignRxToGroup(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/music/TungstenGroupingService$OnAssignRxToGroup;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 12
    .parameter "groupId"
    .parameter "rxId"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 224
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 225
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "groupId"

    invoke-virtual {v6, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "rxId"

    invoke-virtual {v6, v0, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "assignRxToGroup"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenGroupingService;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 228
    return-void
.end method

.method public createGroup(Ljava/lang/String;Ljava/util/List;Landroid/support/place/music/TungstenGroupingService$OnCreateGroup;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 12
    .parameter "groupId"
    .parameter
    .parameter "_result"
    .parameter "_errors"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/place/music/TungstenGroupingService$OnCreateGroup;",
            "Landroid/support/place/rpc/RpcErrorHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, rxIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 210
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "groupId"

    invoke-virtual {v6, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v0, "rxIds"

    invoke-virtual {v6, v0, p2}, Landroid/support/place/rpc/RpcData;->putList(Ljava/lang/String;Ljava/util/List;)V

    .line 212
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "createGroup"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenGroupingService;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 213
    return-void
.end method

.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public getGroupState(Landroid/support/place/music/TungstenGroupingService$OnGetGroupState;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 196
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 197
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getGroupState"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenGroupingService;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 198
    return-void
.end method

.method public getRxVolumes(Landroid/support/place/music/TungstenGroupingService$OnGetRxVolumes;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 261
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 262
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getRxVolumes"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;

    const/4 v5, 0x6

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenGroupingService;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 263
    return-void
.end method

.method public removeRxFromGroup(Ljava/lang/String;Landroid/support/place/music/TungstenGroupingService$OnRemoveRxFromGroup;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter "rxId"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 239
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 240
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "rxId"

    invoke-virtual {v6, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "removeRxFromGroup"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenGroupingService;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 242
    return-void
.end method

.method public setGroupTransmitterConfig(Ljava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter "groupId"
    .parameter "unicastConfig"
    .parameter "_errors"

    .prologue
    .line 301
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 302
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "groupId"

    invoke-virtual {v6, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "unicastConfig"

    invoke-virtual {v6, v0, p2}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 304
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setGroupTransmitterConfig"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 305
    return-void
.end method

.method public setIsPlaying(Ljava/lang/String;ZLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 11
    .parameter "groupId"
    .parameter "isPlaying"
    .parameter "_errors"

    .prologue
    .line 286
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 287
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "groupId"

    invoke-virtual {v6, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "isPlaying"

    invoke-virtual {v6, v0, p2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setIsPlaying"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 290
    return-void
.end method

.method public startListening(Landroid/support/place/music/TungstenGroupingService$Listener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/support/place/music/TungstenGroupingService;->stopListening()V

    .line 453
    new-instance v0, Landroid/support/place/music/TungstenGroupingService$Presenter;

    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/music/TungstenGroupingService$Presenter;-><init>(Landroid/support/place/music/TungstenGroupingService;Landroid/support/place/connector/Broker;Landroid/support/place/music/TungstenGroupingService$Listener;)V

    iput-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_presenter:Landroid/support/place/music/TungstenGroupingService$Presenter;

    .line 454
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_presenter:Landroid/support/place/music/TungstenGroupingService$Presenter;

    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/music/TungstenGroupingService$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 455
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_presenter:Landroid/support/place/music/TungstenGroupingService$Presenter;

    if-eqz v0, :cond_c

    .line 459
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_presenter:Landroid/support/place/music/TungstenGroupingService$Presenter;

    invoke-virtual {v0}, Landroid/support/place/music/TungstenGroupingService$Presenter;->stopListening()V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_presenter:Landroid/support/place/music/TungstenGroupingService$Presenter;

    .line 462
    :cond_c
    return-void
.end method

.method public versionCheck(IILandroid/support/place/music/TungstenGroupingService$OnVersionCheck;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 12
    .parameter "clientMinApiVersion"
    .parameter "clientMaxApiVersion"
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 179
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 180
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    const-string v0, "clientMinApiVersion"

    invoke-virtual {v6, v0, p1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 181
    const-string v0, "clientMaxApiVersion"

    invoke-virtual {v6, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 182
    iget-object v0, p0, Landroid/support/place/music/TungstenGroupingService;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/TungstenGroupingService;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "versionCheck"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p3}, Landroid/support/place/music/TungstenGroupingService$_ResultDispatcher;-><init>(Landroid/support/place/music/TungstenGroupingService;ILjava/lang/Object;)V

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 183
    return-void
.end method
