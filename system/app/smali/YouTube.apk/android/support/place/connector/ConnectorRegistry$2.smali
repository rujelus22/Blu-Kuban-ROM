.class Landroid/support/place/connector/ConnectorRegistry$2;
.super Landroid/support/place/connector/ConnectorRegistryRpc$Listener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroid/support/place/connector/ConnectorRegistry;


# direct methods
.method constructor <init>(Landroid/support/place/connector/ConnectorRegistry;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Landroid/support/place/connector/ConnectorRegistry$2;->this$0:Landroid/support/place/connector/ConnectorRegistry;

    invoke-direct {p0}, Landroid/support/place/connector/ConnectorRegistryRpc$Listener;-><init>()V

    return-void
.end method

.method private queueToListener(Landroid/support/place/connector/ConnectorRegistry$ListenerTask;)V
    .registers 6
    .parameter

    .prologue
    .line 88
    iget-object v1, p0, Landroid/support/place/connector/ConnectorRegistry$2;->this$0:Landroid/support/place/connector/ConnectorRegistry;

    monitor-enter v1

    .line 89
    :try_start_3
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry$2;->this$0:Landroid/support/place/connector/ConnectorRegistry;

    iget-object v0, v0, Landroid/support/place/connector/ConnectorRegistry;->mListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    if-eqz v0, :cond_1b

    .line 90
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry$2;->this$0:Landroid/support/place/connector/ConnectorRegistry;

    iget-object v0, v0, Landroid/support/place/connector/ConnectorRegistry;->mListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    .line 91
    iget-object v2, p0, Landroid/support/place/connector/ConnectorRegistry$2;->this$0:Landroid/support/place/connector/ConnectorRegistry;

    #getter for: Landroid/support/place/connector/ConnectorRegistry;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/support/place/connector/ConnectorRegistry;->access$000(Landroid/support/place/connector/ConnectorRegistry;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/support/place/connector/ConnectorRegistry$2$1;

    invoke-direct {v3, p0, p1, v0}, Landroid/support/place/connector/ConnectorRegistry$2$1;-><init>(Landroid/support/place/connector/ConnectorRegistry$2;Landroid/support/place/connector/ConnectorRegistry$ListenerTask;Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onConnected(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 103
    const-string v0, "connectors"

    sget-object v1, Landroid/support/place/connector/ConnectorInfo;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v0

    .line 106
    new-instance v1, Landroid/support/place/connector/ConnectorRegistry$2$2;

    invoke-direct {v1, p0, v0}, Landroid/support/place/connector/ConnectorRegistry$2$2;-><init>(Landroid/support/place/connector/ConnectorRegistry$2;Ljava/util/List;)V

    invoke-direct {p0, v1}, Landroid/support/place/connector/ConnectorRegistry$2;->queueToListener(Landroid/support/place/connector/ConnectorRegistry$ListenerTask;)V

    .line 111
    return-void
.end method

.method public onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;Landroid/support/place/rpc/RpcContext;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 115
    new-instance v0, Landroid/support/place/connector/ConnectorRegistry$2$3;

    invoke-direct {v0, p0, p1}, Landroid/support/place/connector/ConnectorRegistry$2$3;-><init>(Landroid/support/place/connector/ConnectorRegistry$2;Landroid/support/place/connector/ConnectorInfo;)V

    invoke-direct {p0, v0}, Landroid/support/place/connector/ConnectorRegistry$2;->queueToListener(Landroid/support/place/connector/ConnectorRegistry$ListenerTask;)V

    .line 120
    return-void
.end method

.method public onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;Landroid/support/place/rpc/RpcContext;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Landroid/support/place/connector/ConnectorRegistry$2$4;

    invoke-direct {v0, p0, p1}, Landroid/support/place/connector/ConnectorRegistry$2$4;-><init>(Landroid/support/place/connector/ConnectorRegistry$2;Landroid/support/place/connector/ConnectorInfo;)V

    invoke-direct {p0, v0}, Landroid/support/place/connector/ConnectorRegistry$2;->queueToListener(Landroid/support/place/connector/ConnectorRegistry$ListenerTask;)V

    .line 129
    return-void
.end method

.method public onDisconnected()V
    .registers 3

    .prologue
    .line 133
    new-instance v0, Landroid/support/place/connector/ConnectorRegistry$2$5;

    invoke-direct {v0, p0}, Landroid/support/place/connector/ConnectorRegistry$2$5;-><init>(Landroid/support/place/connector/ConnectorRegistry$2;)V

    invoke-direct {p0, v0}, Landroid/support/place/connector/ConnectorRegistry$2;->queueToListener(Landroid/support/place/connector/ConnectorRegistry$ListenerTask;)V

    .line 141
    monitor-enter p0

    .line 142
    :try_start_9
    iget-object v0, p0, Landroid/support/place/connector/ConnectorRegistry$2;->this$0:Landroid/support/place/connector/ConnectorRegistry;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/place/connector/ConnectorRegistry;->mListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    .line 143
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
