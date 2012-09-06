.class public Landroid/support/place/connector/ConnectorRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "aah.ConnectorRegistry"


# instance fields
.field mBroker:Landroid/support/place/connector/Broker;

.field private final mHandler:Landroid/os/Handler;

.field mListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

.field mRegistry:Landroid/support/place/connector/ConnectorRegistryRpc;

.field mRpcListener:Landroid/support/place/connector/ConnectorRegistryRpc$Listener;


# direct methods
.method constructor <init>(Landroid/support/place/connector/Broker;)V
    .registers 7
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Landroid/support/place/connector/ConnectorRegistry$2;

    invoke-direct {v0, p0}, Landroid/support/place/connector/ConnectorRegistry$2;-><init>(Landroid/support/place/connector/ConnectorRegistry;)V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mRpcListener:Landroid/support/place/connector/ConnectorRegistryRpc$Listener;

    .line 31
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistry;->mBroker:Landroid/support/place/connector/Broker;

    .line 32
    new-instance v0, Landroid/support/place/connector/ConnectorRegistryRpc;

    new-instance v1, Landroid/support/place/rpc/EndpointInfo;

    const-string v2, "_registry"

    invoke-virtual {p1}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/support/place/rpc/EndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, p1, v1}, Landroid/support/place/connector/ConnectorRegistryRpc;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mRegistry:Landroid/support/place/connector/ConnectorRegistryRpc;

    .line 35
    return-void
.end method

.method static synthetic access$000(Landroid/support/place/connector/ConnectorRegistry;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public listConnectors(Ljava/lang/String;Landroid/support/place/connector/ConnectorRegistry$OnListConnectors;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    if-nez p1, :cond_4

    .line 48
    const-string p1, "---"

    .line 50
    :cond_4
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mRegistry:Landroid/support/place/connector/ConnectorRegistryRpc;

    new-instance v1, Landroid/support/place/connector/ConnectorRegistry$1;

    invoke-direct {v1, p0, p2}, Landroid/support/place/connector/ConnectorRegistry$1;-><init>(Landroid/support/place/connector/ConnectorRegistry;Landroid/support/place/connector/ConnectorRegistry$OnListConnectors;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/support/place/connector/ConnectorRegistryRpc;->listConnectors(Ljava/lang/String;Landroid/support/place/connector/ConnectorRegistryRpc$OnListConnectors;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 57
    return-void
.end method

.method public startListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V
    .registers 4
    .parameter

    .prologue
    .line 148
    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    if-eqz v0, :cond_16

    .line 151
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    if-ne v0, p1, :cond_b

    .line 152
    monitor-exit p0

    .line 159
    :goto_a
    return-void

    .line 154
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ConnectorRegistry already has a listener"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_13

    .line 159
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_16
    :try_start_16
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistry;->mListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    .line 158
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mRegistry:Landroid/support/place/connector/ConnectorRegistryRpc;

    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistry;->mRpcListener:Landroid/support/place/connector/ConnectorRegistryRpc$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistryRpc;->startListening(Landroid/support/place/connector/ConnectorRegistryRpc$Listener;)V

    .line 159
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13

    goto :goto_a
.end method

.method public stopListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V
    .registers 3
    .parameter

    .prologue
    .line 163
    monitor-enter p0

    .line 164
    :try_start_1
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    if-ne v0, p1, :cond_d

    .line 165
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mRegistry:Landroid/support/place/connector/ConnectorRegistryRpc;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorRegistryRpc;->stopListening()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    .line 168
    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method stopRegistryListener()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry;->mRegistry:Landroid/support/place/connector/ConnectorRegistryRpc;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorRegistryRpc;->stopListening()V

    .line 175
    return-void
.end method
