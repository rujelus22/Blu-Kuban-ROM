.class public abstract Landroid/support/place/music/TgsTransmitter$EndpointBase;
.super Landroid/support/place/connector/Connector;
.source "TgsTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/music/TgsTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EndpointBase"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter "context"
    .parameter "broker"
    .parameter "placeInfo"

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
    .registers 11
    .parameter "action"
    .parameter "requestParam"
    .parameter "context"
    .parameter "errorParam"

    .prologue
    .line 72
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 73
    .local v3, request:Landroid/support/place/rpc/RpcData;
    const/4 v4, 0x0

    .line 74
    .local v4, resultData:Landroid/support/place/rpc/RpcData;
    const-string v5, "versionCheck"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 76
    const-string v5, "clientMinApiVersion"

    invoke-virtual {v3, v5}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, _arg0:I
    const-string v5, "clientMaxApiVersion"

    invoke-virtual {v3, v5}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->versionCheck(IILandroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsVersionCheck;

    move-result-object v2

    .line 80
    .local v2, _result:Landroid/support/place/music/TgsVersionCheck;
    new-instance v4, Landroid/support/place/rpc/RpcData;

    .end local v4           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct {v4}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 81
    .restart local v4       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v5, "_result"

    invoke-virtual {v4, v5, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 126
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_result:Landroid/support/place/music/TgsVersionCheck;
    :goto_28
    if-eqz v4, :cond_e6

    .line 127
    invoke-virtual {v4}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v5

    .line 130
    :goto_2e
    return-object v5

    .line 83
    :cond_2f
    const-string v5, "reset"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 84
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->reset(Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 85
    .local v2, _result:Z
    new-instance v4, Landroid/support/place/rpc/RpcData;

    .end local v4           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct {v4}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 86
    .restart local v4       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v5, "_result"

    invoke-virtual {v4, v5, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_28

    .line 88
    .end local v2           #_result:Z
    :cond_46
    const-string v5, "getApplicationConnector"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 89
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->getApplicationConnector(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/connector/ConnectorInfo;

    move-result-object v2

    .line 90
    .local v2, _result:Landroid/support/place/connector/ConnectorInfo;
    new-instance v4, Landroid/support/place/rpc/RpcData;

    .end local v4           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct {v4}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 91
    .restart local v4       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v5, "_result"

    invoke-virtual {v4, v5, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto :goto_28

    .line 93
    .end local v2           #_result:Landroid/support/place/connector/ConnectorInfo;
    :cond_5d
    const-string v5, "configureMediaPlayer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 95
    const-string v5, "args"

    invoke-virtual {v3, v5}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 96
    .local v0, _arg0:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->configureMediaPlayer(Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;

    move-result-object v2

    .line 97
    .local v2, _result:Landroid/support/place/rpc/RpcData;
    new-instance v4, Landroid/support/place/rpc/RpcData;

    .end local v4           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct {v4}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 98
    .restart local v4       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v5, "_result"

    invoke-virtual {v4, v5, v2}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    goto :goto_28

    .line 100
    .end local v0           #_arg0:Landroid/support/place/rpc/RpcData;
    .end local v2           #_result:Landroid/support/place/rpc/RpcData;
    :cond_7a
    const-string v5, "setGroupId"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 102
    const-string v5, "groupId"

    invoke-virtual {v3, v5}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->setGroupId(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    goto :goto_28

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    :cond_8c
    const-string v5, "getGroupId"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 106
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->getGroupId(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, _result:Ljava/lang/String;
    new-instance v4, Landroid/support/place/rpc/RpcData;

    .end local v4           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct {v4}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 108
    .restart local v4       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v5, "_result"

    invoke-virtual {v4, v5, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 110
    .end local v2           #_result:Ljava/lang/String;
    :cond_a3
    const-string v5, "pauseTransmitter"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 111
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->pauseTransmitter(Landroid/support/place/rpc/RpcContext;)Z

    move-result v2

    .line 112
    .local v2, _result:Z
    new-instance v4, Landroid/support/place/rpc/RpcData;

    .end local v4           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct {v4}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 113
    .restart local v4       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v5, "_result"

    invoke-virtual {v4, v5, v2}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_28

    .line 115
    .end local v2           #_result:Z
    :cond_bb
    const-string v5, "resumeTransmitter"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 116
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->resumeTransmitter(Landroid/support/place/rpc/RpcContext;)V

    goto/16 :goto_28

    .line 118
    :cond_c8
    const-string v5, "getPlayState"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e0

    .line 119
    invoke-virtual {p0, p3}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->getPlayState(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsTransmitterPlayState;

    move-result-object v2

    .line 120
    .local v2, _result:Landroid/support/place/music/TgsTransmitterPlayState;
    new-instance v4, Landroid/support/place/rpc/RpcData;

    .end local v4           #resultData:Landroid/support/place/rpc/RpcData;
    invoke-direct {v4}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 121
    .restart local v4       #resultData:Landroid/support/place/rpc/RpcData;
    const-string v5, "_result"

    invoke-virtual {v4, v5, v2}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    goto/16 :goto_28

    .line 124
    .end local v2           #_result:Landroid/support/place/music/TgsTransmitterPlayState;
    :cond_e0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v5

    goto/16 :goto_2e

    .line 130
    :cond_e6
    const/4 v5, 0x0

    goto/16 :goto_2e
.end method

.method public pushOnPlayStateChanged(Landroid/support/place/music/TgsTransmitterPlayState;)V
    .registers 5
    .parameter "playState"

    .prologue
    .line 66
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 67
    .local v0, _data:Landroid/support/place/rpc/RpcData;
    const-string v1, "playState"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 68
    const-string v1, "onPlayStateChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/place/music/TgsTransmitter$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

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
