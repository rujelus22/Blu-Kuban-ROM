.class public abstract Landroid/support/place/connector/DeviceConnector$EndpointBase;
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
.method public abstract factoryReset(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract getAdbState(Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract getAvailableUpdate(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public abstract getBluetoothMac(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public abstract getBuildVersion(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public abstract getDebugInfo(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public abstract getDeviceName(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public abstract getDeviceSerialNumber(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public abstract getDeviceState(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;
.end method

.method public abstract getDeviceVersion(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public abstract getLegalInfo(Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract getManufacturerName(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public abstract getMaster(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/EndpointInfo;
.end method

.method public abstract getModelName(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public abstract getUpdateWindow(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public abstract goodbye(Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract helloFromHub(Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;
.end method

.method public abstract ping(Landroid/support/place/rpc/RpcContext;)V
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 71
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 73
    const-string v2, "helloFromHub"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 75
    const-string v2, "hub"

    sget-object v3, Landroid/support/place/rpc/EndpointInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/EndpointInfo;

    .line 76
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->helloFromHub(Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;

    move-result-object v2

    .line 77
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 78
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 189
    :goto_26
    if-eqz v0, :cond_218

    .line 190
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 193
    :goto_2c
    return-object v0

    .line 80
    :cond_2d
    const-string v2, "ping"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 81
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->ping(Landroid/support/place/rpc/RpcContext;)V

    move-object v0, v1

    goto :goto_26

    .line 83
    :cond_3a
    const-string v2, "goodbye"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 85
    const-string v2, "hub"

    sget-object v3, Landroid/support/place/rpc/EndpointInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/EndpointInfo;

    .line 86
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->goodbye(Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/rpc/RpcContext;)V

    move-object v0, v1

    .line 87
    goto :goto_26

    .line 88
    :cond_51
    const-string v2, "getMaster"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 90
    const-string v2, "placeId"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getMaster(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v2

    .line 92
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 93
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto :goto_26

    .line 95
    :cond_6e
    const-string v2, "getBluetoothMac"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 96
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getBluetoothMac(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 97
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 98
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 100
    :cond_85
    const-string v2, "setDeviceName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 102
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->setDeviceName(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 104
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 105
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_26

    .line 107
    :cond_a2
    const-string v2, "getDeviceName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 108
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getDeviceName(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 110
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 112
    :cond_ba
    const-string v2, "getDeviceSerialNumber"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 113
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getDeviceSerialNumber(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 114
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 115
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 117
    :cond_d2
    const-string v2, "getDeviceVersion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 118
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getDeviceVersion(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 119
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 120
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 122
    :cond_ea
    const-string v2, "getBuildVersion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 123
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getBuildVersion(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 125
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 127
    :cond_102
    const-string v2, "getAvailableUpdate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 128
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getAvailableUpdate(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 129
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 130
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 132
    :cond_11a
    const-string v2, "getDebugInfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_132

    .line 133
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getDebugInfo(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 134
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 135
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 137
    :cond_132
    const-string v2, "setAdbState"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    .line 139
    const-string v2, "adbEnabled"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 140
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->setAdbState(ZLandroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 141
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 142
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_26

    .line 144
    :cond_150
    const-string v2, "getAdbState"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_168

    .line 145
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getAdbState(Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 146
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 147
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_26

    .line 149
    :cond_168
    const-string v2, "setUpdateWindow"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 151
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->setUpdateWindow(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 153
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 154
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_26

    .line 156
    :cond_186
    const-string v2, "getUpdateWindow"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19e

    .line 157
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getUpdateWindow(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 158
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 159
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 161
    :cond_19e
    const-string v2, "getDeviceState"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b6

    .line 162
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getDeviceState(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;

    move-result-object v2

    .line 163
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 164
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    goto/16 :goto_26

    .line 166
    :cond_1b6
    const-string v2, "getManufacturerName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 167
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getManufacturerName(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 168
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 169
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 171
    :cond_1ce
    const-string v2, "getModelName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e6

    .line 172
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getModelName(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 173
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 174
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 176
    :cond_1e6
    const-string v2, "getLegalInfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 177
    invoke-virtual {p0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->getLegalInfo(Landroid/support/place/rpc/RpcContext;)V

    move-object v0, v1

    goto/16 :goto_26

    .line 179
    :cond_1f4
    const-string v2, "factoryReset"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_212

    .line 181
    const-string v2, "confirmation"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->factoryReset(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 183
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 184
    const-string v3, "_result"

    invoke-virtual {v0, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_26

    .line 187
    :cond_212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto/16 :goto_2c

    :cond_218
    move-object v0, v1

    .line 193
    goto/16 :goto_2c
.end method

.method public pushOnDeviceNameChanged(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 54
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 55
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "onDeviceNameChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 57
    return-void
.end method

.method public pushOnLegalInformationReady(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 64
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 65
    const-string v1, "info"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "onLegalInformationReady"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/connector/DeviceConnector$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 67
    return-void
.end method

.method public abstract setAdbState(ZLandroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract setDeviceName(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract setUpdateWindow(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z
.end method
