.class public abstract Landroid/support/place/music/TungstenReceiverService$EndpointBase;
.super Landroid/support/place/connector/Connector;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/place/connector/Connector;-><init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V

    .line 27
    return-void
.end method


# virtual methods
.method public abstract adjustMasterVolume(ILandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract getFixedVolumeLevel(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)F
.end method

.method public abstract getFixedVolumeOut(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract getMasterMute(Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract getMasterVolume(Landroid/support/place/rpc/RpcContext;)F
.end method

.method public abstract getSyncDelay(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)F
.end method

.method public abstract isOutputEnabled(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 88
    const-string v2, "versionCheck"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 90
    const-string v2, "clientMinApiVersion"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 92
    const-string v3, "clientMaxApiVersion"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 93
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->versionCheck(IILandroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsVersionCheck;

    move-result-object v2

    .line 94
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 95
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 204
    :goto_28
    if-eqz v1, :cond_2e

    .line 205
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 208
    :cond_2e
    :goto_2e
    return-object v0

    .line 97
    :cond_2f
    const-string v2, "reset"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 98
    invoke-virtual {p0, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->reset(Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 99
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 100
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_28

    .line 102
    :cond_46
    const-string v2, "setEndpoint"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 104
    const-string v2, "address"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string v3, "port"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 107
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->setEndpoint(Ljava/lang/String;ILandroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 108
    goto :goto_28

    .line 109
    :cond_5f
    const-string v2, "start"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 110
    invoke-virtual {p0, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->start(Landroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    goto :goto_28

    .line 112
    :cond_6c
    const-string v2, "stop"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 113
    invoke-virtual {p0, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->stop(Landroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    goto :goto_28

    .line 115
    :cond_79
    const-string v2, "setMasterVolume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 117
    const-string v2, "volume"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 119
    const-string v3, "mute"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 120
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->setMasterVolume(FZLandroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 121
    goto :goto_28

    .line 122
    :cond_92
    const-string v2, "getMasterVolume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 123
    invoke-virtual {p0, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->getMasterVolume(Landroid/support/place/rpc/RpcContext;)F

    move-result v2

    .line 124
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 125
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    goto :goto_28

    .line 127
    :cond_a9
    const-string v2, "getMasterMute"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 128
    invoke-virtual {p0, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->getMasterMute(Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 129
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 130
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_28

    .line 132
    :cond_c1
    const-string v2, "adjustMasterVolume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 134
    const-string v2, "steps"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 135
    invoke-virtual {p0, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->adjustMasterVolume(ILandroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 136
    goto/16 :goto_28

    .line 137
    :cond_d5
    const-string v2, "setFixedVolumeOut"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 139
    const-string v2, "fixed_vout"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 141
    const-string v3, "output"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->setFixedVolumeOut(ZLjava/lang/String;Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 143
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 144
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_28

    .line 146
    :cond_f9
    const-string v2, "getFixedVolumeOut"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 148
    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p0, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->getFixedVolumeOut(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 150
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 151
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_28

    .line 153
    :cond_117
    const-string v2, "setSyncDelay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 155
    const-string v2, "sync_delay"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 157
    const-string v3, "output"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->setSyncDelay(FLjava/lang/String;Landroid/support/place/rpc/RpcContext;)F

    move-result v2

    .line 159
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 160
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_28

    .line 162
    :cond_13b
    const-string v2, "getSyncDelay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_159

    .line 164
    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p0, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->getSyncDelay(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)F

    move-result v2

    .line 166
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 167
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_28

    .line 169
    :cond_159
    const-string v2, "isOutputEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 171
    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {p0, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->isOutputEnabled(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 173
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 174
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_28

    .line 176
    :cond_177
    const-string v2, "setOutputEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 178
    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 180
    const-string v3, "output"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->setOutputEnabled(ZLjava/lang/String;Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 182
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 183
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_28

    .line 185
    :cond_19b
    const-string v2, "setFixedVolumeLevel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 187
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 189
    const-string v3, "output"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->setFixedVolumeLevel(FLjava/lang/String;Landroid/support/place/rpc/RpcContext;)F

    move-result v2

    .line 191
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 192
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_28

    .line 194
    :cond_1bf
    const-string v2, "getFixedVolumeLevel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dd

    .line 196
    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {p0, v1, p3}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->getFixedVolumeLevel(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)F

    move-result v2

    .line 198
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 199
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_28

    .line 202
    :cond_1dd
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto/16 :goto_2e
.end method

.method public pushOnFixedVolumeLevelChanged(FLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 80
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    .line 81
    const-string v1, "output"

    invoke-virtual {v0, v1, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "onFixedVolumeLevelChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 83
    return-void
.end method

.method public pushOnFixedVolumeOutChanged(ZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 53
    const-string v1, "fixed_vout"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    const-string v1, "output"

    invoke-virtual {v0, v1, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "onFixedVolumeOutChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 56
    return-void
.end method

.method public pushOnMasterVolumeChanged(FZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 44
    const-string v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    .line 45
    const-string v1, "mute"

    invoke-virtual {v0, v1, p2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    const-string v1, "onMasterVolumeChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 47
    return-void
.end method

.method public pushOnOutputEnabled(ZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 71
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    const-string v1, "output"

    invoke-virtual {v0, v1, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "onOutputEnabled"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 74
    return-void
.end method

.method public pushOnSyncDelayChanged(FLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 62
    const-string v1, "sync_delay"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    .line 63
    const-string v1, "output"

    invoke-virtual {v0, v1, p2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "onSyncDelayChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/music/TungstenReceiverService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 65
    return-void
.end method

.method public abstract reset(Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract setEndpoint(Ljava/lang/String;ILandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setFixedVolumeLevel(FLjava/lang/String;Landroid/support/place/rpc/RpcContext;)F
.end method

.method public abstract setFixedVolumeOut(ZLjava/lang/String;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract setMasterVolume(FZLandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setOutputEnabled(ZLjava/lang/String;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract setSyncDelay(FLjava/lang/String;Landroid/support/place/rpc/RpcContext;)F
.end method

.method public abstract start(Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract stop(Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract versionCheck(IILandroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsVersionCheck;
.end method
