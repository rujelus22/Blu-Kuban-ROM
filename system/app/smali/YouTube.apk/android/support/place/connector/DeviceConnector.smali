.class public Landroid/support/place/connector/DeviceConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/connector/DeviceConnector$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    .line 13
    iput-object p2, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public factoryReset(Ljava/lang/String;Landroid/support/place/connector/DeviceConnector$OnFactoryReset;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 395
    const-string v0, "confirmation"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "factoryReset"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0x16

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 397
    return-void
.end method

.method public getAdbState(Landroid/support/place/connector/DeviceConnector$OnGetAdbState;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 333
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 334
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getAdbState"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0xd

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 335
    return-void
.end method

.method public getAvailableUpdate(Landroid/support/place/connector/DeviceConnector$OnGetAvailableUpdate;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 305
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 306
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getAvailableUpdate"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0xa

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 307
    return-void
.end method

.method public getBluetoothMac(Landroid/support/place/connector/DeviceConnector$OnGetBluetoothMac;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 250
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 251
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getBluetoothMac"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 252
    return-void
.end method

.method public getBuildVersion(Landroid/support/place/connector/DeviceConnector$OnGetBuildVersion;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 296
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 297
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getBuildVersion"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0x9

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 298
    return-void
.end method

.method public getDebugInfo(Landroid/support/place/connector/DeviceConnector$OnGetDebugInfo;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 314
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 315
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getDebugInfo"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0xb

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 316
    return-void
.end method

.method public getDeviceName(Landroid/support/place/connector/DeviceConnector$OnGetDeviceName;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 269
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 270
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getDeviceName"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/4 v5, 0x6

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 271
    return-void
.end method

.method public getDeviceSerialNumber(Landroid/support/place/connector/DeviceConnector$OnGetDeviceSerialNumber;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 278
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 279
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getDeviceSerialNumber"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/4 v5, 0x7

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 280
    return-void
.end method

.method public getDeviceState(Landroid/support/place/connector/DeviceConnector$OnGetDeviceState;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 361
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 362
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getDeviceState"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0x10

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 363
    return-void
.end method

.method public getDeviceVersion(Landroid/support/place/connector/DeviceConnector$OnGetDeviceVersion;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 287
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 288
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getDeviceVersion"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0x8

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 289
    return-void
.end method

.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public getLegalInfo(Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 8
    .parameter

    .prologue
    .line 385
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 386
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getLegalInfo"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 387
    return-void
.end method

.method public getManufacturerName(Landroid/support/place/connector/DeviceConnector$OnGetManufacturerName;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 370
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 371
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getManufacturerName"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0x12

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 372
    return-void
.end method

.method public getMaster(Ljava/lang/String;Landroid/support/place/connector/DeviceConnector$OnGetMaster;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 241
    const-string v0, "placeId"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getMaster"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 243
    return-void
.end method

.method public getModelName(Landroid/support/place/connector/DeviceConnector$OnGetModelName;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 379
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 380
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getModelName"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0x13

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 381
    return-void
.end method

.method public getUpdateWindow(Landroid/support/place/connector/DeviceConnector$OnGetUpdateWindow;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 352
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 353
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getUpdateWindow"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0xf

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 354
    return-void
.end method

.method public goodbye(Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 216
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 217
    const-string v0, "hub"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 218
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "goodbye"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 219
    return-void
.end method

.method public helloFromHub(Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/connector/DeviceConnector$OnHelloFromHub;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 204
    const-string v0, "hub"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 205
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "helloFromHub"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 206
    return-void
.end method

.method public ping(Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 8
    .parameter

    .prologue
    .line 211
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 212
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "ping"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 213
    return-void
.end method

.method public setAdbState(ZLandroid/support/place/connector/DeviceConnector$OnSetAdbState;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 324
    const-string v0, "adbEnabled"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setAdbState"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0xc

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 326
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;Landroid/support/place/connector/DeviceConnector$OnSetDeviceName;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 260
    const-string v0, "name"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setDeviceName"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 262
    return-void
.end method

.method public setUpdateWindow(Ljava/lang/String;Landroid/support/place/connector/DeviceConnector$OnSetUpdateWindow;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 343
    const-string v0, "window"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setUpdateWindow"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/16 v5, 0xe

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 345
    return-void
.end method

.method public startListening(Landroid/support/place/connector/DeviceConnector$Listener;)V
    .registers 4
    .parameter

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/support/place/connector/DeviceConnector;->stopListening()V

    .line 713
    new-instance v0, Landroid/support/place/connector/DeviceConnector$Presenter;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/connector/DeviceConnector$Presenter;-><init>(Landroid/support/place/connector/DeviceConnector;Landroid/support/place/connector/Broker;Landroid/support/place/connector/DeviceConnector$Listener;)V

    iput-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_presenter:Landroid/support/place/connector/DeviceConnector$Presenter;

    .line 714
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_presenter:Landroid/support/place/connector/DeviceConnector$Presenter;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/DeviceConnector$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 715
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_presenter:Landroid/support/place/connector/DeviceConnector$Presenter;

    if-eqz v0, :cond_c

    .line 719
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_presenter:Landroid/support/place/connector/DeviceConnector$Presenter;

    invoke-virtual {v0}, Landroid/support/place/connector/DeviceConnector$Presenter;->stopListening()V

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_presenter:Landroid/support/place/connector/DeviceConnector$Presenter;

    .line 722
    :cond_c
    return-void
.end method
