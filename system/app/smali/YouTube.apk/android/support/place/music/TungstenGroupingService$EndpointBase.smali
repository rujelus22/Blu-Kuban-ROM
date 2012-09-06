.class public abstract Landroid/support/place/music/TungstenGroupingService$EndpointBase;
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
.method public abstract adjustGroupVolume(Ljava/lang/String;ILandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract assignRxToGroup(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract createGroup(Ljava/lang/String;Ljava/util/List;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsGroup;
.end method

.method public abstract deleteGroup(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract getGroupState(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsState;
.end method

.method public abstract getRxVolumes(Landroid/support/place/rpc/RpcContext;)Ljava/util/List;
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 83
    const-string v2, "versionCheck"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 85
    const-string v2, "clientMinApiVersion"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 87
    const-string v3, "clientMaxApiVersion"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 88
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->versionCheck(IILandroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsVersionCheck;

    move-result-object v2

    .line 89
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 90
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 161
    :goto_28
    if-eqz v1, :cond_2e

    .line 162
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 165
    :cond_2e
    :goto_2e
    return-object v0

    .line 92
    :cond_2f
    const-string v2, "getGroupState"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 93
    invoke-virtual {p0, p3}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->getGroupState(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsState;

    move-result-object v2

    .line 94
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 95
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto :goto_28

    .line 97
    :cond_46
    const-string v2, "createGroup"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 99
    const-string v2, "groupId"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v3, "rxIds"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/support/place/rpc/RpcData;->getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 102
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->createGroup(Ljava/lang/String;Ljava/util/List;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsGroup;

    move-result-object v2

    .line 103
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 104
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto :goto_28

    .line 106
    :cond_6b
    const-string v2, "assignRxToGroup"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 108
    const-string v2, "groupId"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string v3, "rxId"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->assignRxToGroup(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 112
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 113
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_28

    .line 115
    :cond_8e
    const-string v2, "removeRxFromGroup"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 117
    const-string v2, "rxId"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p0, v1, p3}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->removeRxFromGroup(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 119
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 120
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_28

    .line 122
    :cond_ac
    const-string v2, "deleteGroup"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 124
    const-string v2, "groupId"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v1, p3}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->deleteGroup(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 126
    goto/16 :goto_28

    .line 127
    :cond_c0
    const-string v2, "getRxVolumes"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 128
    invoke-virtual {p0, p3}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->getRxVolumes(Landroid/support/place/rpc/RpcContext;)Ljava/util/List;

    move-result-object v2

    .line 129
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 130
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_28

    .line 132
    :cond_d8
    const-string v2, "setRxVolumes"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 134
    const-string v2, "rxVolumes"

    sget-object v3, Landroid/support/place/music/TgsRxVolume;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v1, v2, v3}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v1, p3}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->setRxVolumes(Ljava/util/List;Landroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 136
    goto/16 :goto_28

    .line 137
    :cond_ee
    const-string v2, "adjustGroupVolume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 139
    const-string v2, "groupId"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    const-string v3, "steps"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 142
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->adjustGroupVolume(Ljava/lang/String;ILandroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 143
    goto/16 :goto_28

    .line 144
    :cond_108
    const-string v2, "setIsPlaying"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122

    .line 146
    const-string v2, "groupId"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    const-string v3, "isPlaying"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 149
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->setIsPlaying(Ljava/lang/String;ZLandroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 150
    goto/16 :goto_28

    .line 151
    :cond_122
    const-string v2, "setGroupTransmitterConfig"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 153
    const-string v2, "groupId"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    const-string v3, "unicastConfig"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 156
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->setGroupTransmitterConfig(Ljava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 157
    goto/16 :goto_28

    .line 159
    :cond_13c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto/16 :goto_2e
.end method

.method public pushOnStateChanged(Landroid/support/place/music/TgsState;)V
    .registers 4
    .parameter

    .prologue
    .line 69
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 70
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 71
    const-string v1, "onStateChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 72
    return-void
.end method

.method public pushOnVolumeChanged(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 75
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 76
    const-string v1, "volumes"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putFlattenableList(Ljava/lang/String;Ljava/util/List;)V

    .line 77
    const-string v1, "onVolumeChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/music/TungstenGroupingService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 78
    return-void
.end method

.method public abstract removeRxFromGroup(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract setGroupTransmitterConfig(Ljava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setIsPlaying(Ljava/lang/String;ZLandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setRxVolumes(Ljava/util/List;Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract versionCheck(IILandroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsVersionCheck;
.end method
