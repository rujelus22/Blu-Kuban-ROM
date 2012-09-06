.class public Landroid/support/place/music/AudioCalibrator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _broker:Landroid/support/place/connector/Broker;

.field private _endpoint:Landroid/support/place/rpc/EndpointInfo;

.field private _presenter:Landroid/support/place/music/AudioCalibrator$Presenter;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Landroid/support/place/music/AudioCalibrator;->_broker:Landroid/support/place/connector/Broker;

    .line 13
    iput-object p2, p0, Landroid/support/place/music/AudioCalibrator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public getCalibrationOutput(Landroid/support/place/music/AudioCalibrator$OnGetCalibrationOutput;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 104
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/AudioCalibrator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "getCalibrationOutput"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5, p1}, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;-><init>(Landroid/support/place/music/AudioCalibrator;ILjava/lang/Object;)V

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 105
    return-void
.end method

.method public getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method public setTickTrack(ZIZZJLandroid/support/place/rpc/RpcErrorHandler;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 109
    const-string v0, "enabled"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    const-string v0, "period"

    invoke-virtual {v3, v0, p2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 111
    const-string v0, "enableLeft"

    invoke-virtual {v3, v0, p3}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    const-string v0, "enableRight"

    invoke-virtual {v3, v0, p4}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    const-string v0, "pulseWidth"

    invoke-virtual {v3, v0, p5, p6}, Landroid/support/place/rpc/RpcData;->putLong(Ljava/lang/String;J)V

    .line 114
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/AudioCalibrator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "setTickTrack"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 115
    return-void
.end method

.method public startCalibration(Ljava/lang/String;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 83
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 84
    const-string v0, "output"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/AudioCalibrator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "startCalibration"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 86
    return-void
.end method

.method public startListening(Landroid/support/place/music/AudioCalibrator$Listener;)V
    .registers 4
    .parameter

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/support/place/music/AudioCalibrator;->stopListening()V

    .line 199
    new-instance v0, Landroid/support/place/music/AudioCalibrator$Presenter;

    iget-object v1, p0, Landroid/support/place/music/AudioCalibrator;->_broker:Landroid/support/place/connector/Broker;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/place/music/AudioCalibrator$Presenter;-><init>(Landroid/support/place/music/AudioCalibrator;Landroid/support/place/connector/Broker;Landroid/support/place/music/AudioCalibrator$Listener;)V

    iput-object v0, p0, Landroid/support/place/music/AudioCalibrator;->_presenter:Landroid/support/place/music/AudioCalibrator$Presenter;

    .line 200
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator;->_presenter:Landroid/support/place/music/AudioCalibrator$Presenter;

    iget-object v1, p0, Landroid/support/place/music/AudioCalibrator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Landroid/support/place/music/AudioCalibrator$Presenter;->startListening(Landroid/support/place/rpc/EndpointInfo;)V

    .line 201
    return-void
.end method

.method public stopCalibration(FLandroid/support/place/music/AudioCalibrator$OnStopCalibration;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v3, Landroid/support/place/rpc/RpcData;

    invoke-direct {v3}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 94
    const-string v0, "compensationValue"

    invoke-virtual {v3, v0, p1}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    .line 95
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator;->_broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/music/AudioCalibrator;->_endpoint:Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "stopCalibration"

    invoke-virtual {v3}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    new-instance v4, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p2}, Landroid/support/place/music/AudioCalibrator$_ResultDispatcher;-><init>(Landroid/support/place/music/AudioCalibrator;ILjava/lang/Object;)V

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 96
    return-void
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator;->_presenter:Landroid/support/place/music/AudioCalibrator$Presenter;

    if-eqz v0, :cond_c

    .line 205
    iget-object v0, p0, Landroid/support/place/music/AudioCalibrator;->_presenter:Landroid/support/place/music/AudioCalibrator$Presenter;

    invoke-virtual {v0}, Landroid/support/place/music/AudioCalibrator$Presenter;->stopListening()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/music/AudioCalibrator;->_presenter:Landroid/support/place/music/AudioCalibrator$Presenter;

    .line 208
    :cond_c
    return-void
.end method
