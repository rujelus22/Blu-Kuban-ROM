.class public Landroid/support/place/connector/EventListener;
.super Landroid/support/place/connector/Endpoint;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/connector/EventListener$Registration;,
        Landroid/support/place/connector/EventListener$Listener;
    }
.end annotation


# instance fields
.field private final mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

.field private final mListener:Landroid/support/place/connector/EventListener$Listener;

.field private final mRegisterPayload:[B

.field private mRegistration:Landroid/support/place/connector/EventListener$Registration;

.field private final mRegistrationHandler:Landroid/os/Handler;

.field private final mUnregisterPayload:[B


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V
    .registers 8
    .parameter "broker"
    .parameter "listener"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/support/place/connector/Endpoint;-><init>(Landroid/support/place/connector/Broker;)V

    .line 40
    invoke-virtual {p1}, Landroid/support/place/connector/Broker;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/place/connector/EventListener;->setCustomHandler(Landroid/os/Handler;)V

    .line 41
    iput-object p2, p0, Landroid/support/place/connector/EventListener;->mListener:Landroid/support/place/connector/EventListener$Listener;

    .line 43
    invoke-virtual {p1}, Landroid/support/place/connector/Broker;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;

    .line 45
    invoke-virtual {p1}, Landroid/support/place/connector/Broker;->newEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v3

    iput-object v3, p0, Landroid/support/place/connector/EventListener;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    .line 47
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 48
    .local v0, d:Landroid/support/place/rpc/RpcData;
    iget-object v3, p0, Landroid/support/place/connector/EventListener;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v3, v0}, Landroid/support/place/rpc/EndpointInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 49
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 50
    .local v1, params:Landroid/support/place/rpc/RpcData;
    const-string v3, "listener"

    invoke-virtual {v1, v3, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 51
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v3

    iput-object v3, p0, Landroid/support/place/connector/EventListener;->mRegisterPayload:[B

    .line 52
    new-instance v2, Landroid/support/place/rpc/RpcData;

    invoke-direct {v2}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 53
    .local v2, unrPayload:Landroid/support/place/rpc/RpcData;
    const-string v3, "listener"

    iget-object v4, p0, Landroid/support/place/connector/EventListener;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v4}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Landroid/support/place/rpc/RpcData;->ser()[B

    move-result-object v3

    iput-object v3, p0, Landroid/support/place/connector/EventListener;->mUnregisterPayload:[B

    .line 55
    return-void
.end method

.method static synthetic access$000(Landroid/support/place/connector/EventListener;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Landroid/support/place/connector/EventListener;->mRegistrationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/place/connector/EventListener;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Landroid/support/place/connector/EventListener;->mUnregisterPayload:[B

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/place/connector/EventListener;)Landroid/support/place/rpc/EndpointInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Landroid/support/place/connector/EventListener;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/place/connector/EventListener;)Landroid/support/place/connector/EventListener$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Landroid/support/place/connector/EventListener;->mListener:Landroid/support/place/connector/EventListener$Listener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/place/connector/EventListener;)Landroid/support/place/connector/EventListener$Registration;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Landroid/support/place/connector/EventListener;->mRegistration:Landroid/support/place/connector/EventListener$Registration;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/place/connector/EventListener;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Landroid/support/place/connector/EventListener;->mRegisterPayload:[B

    return-object v0
.end method


# virtual methods
.method public onConnected([BLandroid/support/place/rpc/RpcContext;)V
    .registers 5
    .parameter "data"
    .parameter "context"
    .annotation runtime Landroid/support/place/rpc/Rpc;
    .end annotation

    .prologue
    .line 214
    invoke-static {p1}, Landroid/support/place/rpc/RpcData;->from([B)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 215
    .local v0, state:Landroid/support/place/rpc/RpcData;
    iget-object v1, p0, Landroid/support/place/connector/EventListener;->mListener:Landroid/support/place/connector/EventListener$Listener;

    invoke-virtual {v1, v0}, Landroid/support/place/connector/EventListener$Listener;->onConnected(Landroid/support/place/rpc/RpcData;)V

    .line 216
    return-void
.end method

.method public startListening(Landroid/support/place/rpc/EndpointInfo;)V
    .registers 5
    .parameter "eventSource"

    .prologue
    .line 66
    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Landroid/support/place/connector/EventListener;->mRegistration:Landroid/support/place/connector/EventListener$Registration;

    if-eqz v0, :cond_21

    .line 68
    const-string v0, "aah.EventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventListener already listening, me="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/place/connector/EventListener;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    monitor-exit p0

    .line 77
    :goto_20
    return-void

    .line 72
    :cond_21
    invoke-virtual {p0}, Landroid/support/place/connector/EventListener;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/EventListener;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, p0, v1}, Landroid/support/place/connector/Broker;->registerEndpoint(Landroid/support/place/connector/Endpoint;Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/rpc/EndpointInfo;

    .line 74
    new-instance v0, Landroid/support/place/connector/EventListener$Registration;

    invoke-direct {v0, p0, p1}, Landroid/support/place/connector/EventListener$Registration;-><init>(Landroid/support/place/connector/EventListener;Landroid/support/place/rpc/EndpointInfo;)V

    iput-object v0, p0, Landroid/support/place/connector/EventListener;->mRegistration:Landroid/support/place/connector/EventListener$Registration;

    .line 75
    iget-object v0, p0, Landroid/support/place/connector/EventListener;->mRegistration:Landroid/support/place/connector/EventListener$Registration;

    invoke-virtual {v0}, Landroid/support/place/connector/EventListener$Registration;->startLocked()V

    .line 76
    monitor-exit p0

    goto :goto_20

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public stopListening()V
    .registers 2

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Landroid/support/place/connector/EventListener;->mRegistration:Landroid/support/place/connector/EventListener$Registration;

    if-nez v0, :cond_7

    .line 82
    monitor-exit p0

    .line 90
    :goto_6
    return-void

    .line 85
    :cond_7
    iget-object v0, p0, Landroid/support/place/connector/EventListener;->mRegistration:Landroid/support/place/connector/EventListener$Registration;

    invoke-virtual {v0}, Landroid/support/place/connector/EventListener$Registration;->stopLocked()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/connector/EventListener;->mRegistration:Landroid/support/place/connector/EventListener$Registration;

    .line 88
    invoke-virtual {p0}, Landroid/support/place/connector/EventListener;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/place/connector/Broker;->unregisterEndpoint(Landroid/support/place/connector/Endpoint;)V

    .line 89
    monitor-exit p0

    goto :goto_6

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method
