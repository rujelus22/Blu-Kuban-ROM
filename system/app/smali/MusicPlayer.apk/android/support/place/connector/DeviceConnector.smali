.class public Landroid/support/place/connector/DeviceConnector;
.super Ljava/lang/Object;
.source "DeviceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;,
        Landroid/support/place/connector/DeviceConnector$OnFactoryReset;,
        Landroid/support/place/connector/DeviceConnector$OnGetModelName;,
        Landroid/support/place/connector/DeviceConnector$OnGetManufacturerName;,
        Landroid/support/place/connector/DeviceConnector$OnGetDeviceState;,
        Landroid/support/place/connector/DeviceConnector$OnGetUpdateWindow;,
        Landroid/support/place/connector/DeviceConnector$OnSetUpdateWindow;,
        Landroid/support/place/connector/DeviceConnector$OnGetAdbState;,
        Landroid/support/place/connector/DeviceConnector$OnSetAdbState;,
        Landroid/support/place/connector/DeviceConnector$OnGetDebugInfo;,
        Landroid/support/place/connector/DeviceConnector$OnGetAvailableUpdate;,
        Landroid/support/place/connector/DeviceConnector$OnGetBuildVersion;,
        Landroid/support/place/connector/DeviceConnector$OnGetDeviceVersion;,
        Landroid/support/place/connector/DeviceConnector$OnGetDeviceSerialNumber;,
        Landroid/support/place/connector/DeviceConnector$OnGetDeviceName;,
        Landroid/support/place/connector/DeviceConnector$OnSetDeviceName;,
        Landroid/support/place/connector/DeviceConnector$OnGetBluetoothMac;,
        Landroid/support/place/connector/DeviceConnector$OnGetMaster;,
        Landroid/support/place/connector/DeviceConnector$OnHelloFromHub;
    }
.end annotation


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter "broker"
    .parameter "endpoint"

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
.method public getDeviceName(Landroid/support/place/connector/DeviceConnector$OnGetDeviceName;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter "_result"
    .parameter "_errors"

    .prologue
    .line 269
    new-instance v6, Landroid/support/place/rpc/RpcData;

    invoke-direct {v6}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 270
    .local v6, _data:Landroid/support/place/rpc/RpcData;
    iget-object v0, p0, Landroid/support/place/connector/DeviceConnector;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/DeviceConnector;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getDeviceName"

    invoke-virtual {v6}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;

    const/4 v5, 0x6

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/connector/DeviceConnector$_ResultDispatcher;-><init>(Landroid/support/place/connector/DeviceConnector;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 271
    return-void
.end method
