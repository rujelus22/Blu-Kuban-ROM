.class public abstract Landroid/support/place/api/tts/TtsService$EndpointBase;
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
.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 48
    const-string v1, "speak"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 51
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v2, "color"

    invoke-virtual {v0, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 54
    invoke-virtual {p0, v1, v0, p3}, Landroid/support/place/api/tts/TtsService$EndpointBase;->speak(Ljava/lang/String;ILandroid/support/place/rpc/RpcContext;)V

    .line 59
    const/4 v0, 0x0

    :goto_1d
    return-object v0

    .line 57
    :cond_1e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/Connector;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_1d
.end method

.method public pushOnSpeak(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 35
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 36
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "onSpeak"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/api/tts/TtsService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 38
    return-void
.end method

.method public pushOnStatusChanged(Landroid/support/place/api/tts/TtsStatus;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 42
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/support/place/rpc/RpcData;->putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V

    .line 43
    const-string v1, "onStatusChanged"

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/support/place/api/tts/TtsService$EndpointBase;->pushEvent(Ljava/lang/String;[B)V

    .line 44
    return-void
.end method

.method public abstract speak(Ljava/lang/String;ILandroid/support/place/rpc/RpcContext;)V
.end method
