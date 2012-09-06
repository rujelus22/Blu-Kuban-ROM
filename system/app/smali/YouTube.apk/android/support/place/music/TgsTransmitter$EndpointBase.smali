.class public abstract Landroid/support/place/music/TgsTransmitter$EndpointBase;
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
.method public abstract configureMediaPlayer(Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;
.end method

.method public abstract getApplicationConnector(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/connector/ConnectorInfo;
.end method

.method public abstract getGroupId(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public abstract getPlayState(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsTransmitterPlayState;
.end method

.method public abstract pauseTransmitter(Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 72
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 74
    const-string v2, "versionCheck"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 76
    const-string v2, "clientMinApiVersion"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 78
    const-string v3, "clientMaxApiVersion"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 79
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->versionCheck(IILandroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsVersionCheck;

    move-result-object v2

    .line 80
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 81
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 126
    :goto_28
    if-eqz v1, :cond_2e

    .line 127
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 130
    :cond_2e
    :goto_2e
    return-object v0

    .line 83
    :cond_2f
    const-string v2, "reset"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 84
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->reset(Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 85
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 86
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_28

    .line 88
    :cond_46
    const-string v2, "getApplicationConnector"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 89
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->getApplicationConnector(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/connector/ConnectorInfo;

    move-result-object v2

    .line 90
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 91
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto :goto_28

    .line 93
    :cond_5d
    const-string v2, "configureMediaPlayer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 95
    const-string v2, "args"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 96
    invoke-virtual {p0, v1, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->configureMediaPlayer(Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;

    move-result-object v2

    .line 97
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 98
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    goto :goto_28

    .line 100
    :cond_7a
    const-string v2, "setGroupId"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 102
    const-string v2, "groupId"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v1, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->setGroupId(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 104
    goto :goto_28

    .line 105
    :cond_8d
    const-string v1, "getGroupId"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 106
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->getGroupId(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 108
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 110
    :cond_a4
    const-string v1, "pauseTransmitter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 111
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->pauseTransmitter(Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 112
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 113
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_28

    .line 115
    :cond_bc
    const-string v1, "resumeTransmitter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 116
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->resumeTransmitter(Landroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    goto/16 :goto_28

    .line 118
    :cond_ca
    const-string v1, "getPlayState"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 119
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->getPlayState(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsTransmitterPlayState;

    move-result-object v2

    .line 120
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 121
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_28

    .line 124
    :cond_e2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto/16 :goto_2e
.end method

.method public pushOnPlayStateChanged(Landroid/support/place/music/TgsTransmitterPlayState;)V
    .registers 4
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 67
    const-string v1, "playState"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 68
    const-string v1, "onPlayStateChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 69
    return-void
.end method

.method public abstract reset(Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract resumeTransmitter(Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setGroupId(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract versionCheck(IILandroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsVersionCheck;
.end method
