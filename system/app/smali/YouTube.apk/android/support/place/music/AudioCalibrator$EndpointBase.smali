.class public abstract Landroid/support/place/music/AudioCalibrator$EndpointBase;
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
.method public abstract getCalibrationOutput(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 38
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 40
    const-string v1, "startCalibration"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 42
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0, p3}, Landroid/support/place/music/AudioCalibrator$EndpointBase;->startCalibration(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    move-object v0, v8

    .line 73
    :goto_18
    if-eqz v0, :cond_85

    .line 74
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 77
    :goto_1e
    return-object v0

    .line 45
    :cond_1f
    const-string v1, "stopCalibration"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 47
    const-string v1, "compensationValue"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 48
    invoke-virtual {p0, v0, p3}, Landroid/support/place/music/AudioCalibrator$EndpointBase;->stopCalibration(FLandroid/support/place/rpc/RpcContext;)Z

    move-result v1

    .line 49
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 50
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_18

    .line 52
    :cond_3c
    const-string v1, "getCalibrationOutput"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 53
    invoke-virtual {p0, p3}, Landroid/support/place/music/AudioCalibrator$EndpointBase;->getCalibrationOutput(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 55
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 57
    :cond_53
    const-string v1, "setTickTrack"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 59
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 61
    const-string v2, "period"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 63
    const-string v3, "enableLeft"

    invoke-virtual {v0, v3}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 65
    const-string v4, "enableRight"

    invoke-virtual {v0, v4}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 67
    const-string v5, "pulseWidth"

    invoke-virtual {v0, v5}, Landroid/support/place/rpc/RpcData;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object v0, p0

    move-object v7, p3

    .line 68
    invoke-virtual/range {v0 .. v7}, Landroid/support/place/music/AudioCalibrator$EndpointBase;->setTickTrack(ZIZZJLandroid/support/place/rpc/RpcContext;)V

    move-object v0, v8

    .line 69
    goto :goto_18

    .line 71
    :cond_80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_1e

    :cond_85
    move-object v0, v8

    .line 77
    goto :goto_1e
.end method

.method public pushOnCalibrationStateChanged(I)V
    .registers 4
    .parameter

    .prologue
    .line 32
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 33
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 34
    const-string v1, "onCalibrationStateChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/music/AudioCalibrator$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 35
    return-void
.end method

.method public abstract setTickTrack(ZIZZJLandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract startCalibration(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract stopCalibration(FLandroid/support/place/rpc/RpcContext;)Z
.end method
