.class public abstract Landroid/support/place/connector/coordinator/Coordinator$EndpointBase;
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
.method public abstract getPlaceName(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
.end method

.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 40
    const-string v1, "versionCheck"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 43
    const-string v1, "clientMinApiVersion"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 45
    const-string v2, "clientMaxApiVersion"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 46
    invoke-virtual {p0, v1, v0, p3}, Landroid/support/place/connector/coordinator/Coordinator$EndpointBase;->versionCheck(IILandroid/support/place/rpc/RpcContext;)Landroid/support/place/connector/coordinator/VersionCheck;

    move-result-object v1

    .line 47
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 48
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 65
    :goto_27
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    :goto_2b
    return-object v0

    .line 50
    :cond_2c
    const-string v1, "setPlaceName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 52
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0, p3}, Landroid/support/place/connector/coordinator/Coordinator$EndpointBase;->setPlaceName(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z

    move-result v1

    .line 54
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 55
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_27

    .line 57
    :cond_49
    const-string v0, "getPlaceName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 58
    invoke-virtual {p0, p3}, Landroid/support/place/connector/coordinator/Coordinator$EndpointBase;->getPlaceName(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 60
    const-string v2, "_result"

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 63
    :cond_60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_2b
.end method

.method public pushOnPlaceNameChanged(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 33
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 34
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "onPlaceNameChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/connector/coordinator/Coordinator$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 36
    return-void
.end method

.method public abstract setPlaceName(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Z
.end method

.method public abstract versionCheck(IILandroid/support/place/rpc/RpcContext;)Landroid/support/place/connector/coordinator/VersionCheck;
.end method
