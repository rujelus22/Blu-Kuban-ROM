.class public abstract Landroid/support/place/api/lighting/LightingService$EndpointBase;
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
.method public abstract listLights(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 46
    const-string v2, "listLights"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 47
    invoke-virtual {p0, p3}, Landroid/support/place/api/lighting/LightingService$EndpointBase;->listLights(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;

    move-result-object v2

    .line 48
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 49
    const-string v3, "_result"

    invoke-virtual {v1, v3, v2}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 75
    :goto_1c
    if-eqz v1, :cond_22

    .line 76
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 79
    :cond_22
    :goto_22
    return-object v0

    .line 51
    :cond_23
    const-string v2, "setLightLevel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 53
    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    const-string v3, "level"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 56
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/api/lighting/LightingService$EndpointBase;->setLightLevel(Ljava/lang/String;ILandroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 57
    goto :goto_1c

    .line 58
    :cond_3c
    const-string v2, "setLightName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 60
    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    const-string v3, "name"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/api/lighting/LightingService$EndpointBase;->setLightName(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 64
    goto :goto_1c

    .line 65
    :cond_55
    const-string v2, "setLightLocation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 67
    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p0, v2, v1, p3}, Landroid/support/place/api/lighting/LightingService$EndpointBase;->setLightLocation(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    move-object v1, v0

    .line 71
    goto :goto_1c

    .line 73
    :cond_6e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_22
.end method

.method public pushOnLightsChanged(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 39
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 40
    const-string v1, "onLightsChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/api/lighting/LightingService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 41
    return-void
.end method

.method public abstract setLightLevel(Ljava/lang/String;ILandroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setLightLocation(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V
.end method

.method public abstract setLightName(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V
.end method
