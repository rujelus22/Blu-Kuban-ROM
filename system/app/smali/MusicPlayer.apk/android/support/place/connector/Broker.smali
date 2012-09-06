.class public Landroid/support/place/connector/Broker;
.super Ljava/lang/Object;
.source "Broker.java"


# instance fields
.field mBrokerConnector:Landroid/support/place/rpc/EndpointInfo;

.field mConnection:Landroid/support/place/connector/IBrokerConnection;

.field private mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

.field final mContainer:Landroid/support/place/connector/ConnectorContainer;

.field private mCoordinator:Landroid/support/place/connector/coordinator/Coordinator;

.field private final mHandler:Landroid/os/Handler;

.field mPlace:Landroid/support/place/connector/PlaceInfo;

.field private mSecurityService:Landroid/support/place/connector/security/SecurityService;

.field mService:Landroid/support/place/connector/IBrokerService;


# direct methods
.method constructor <init>(Landroid/support/place/connector/IBrokerConnection;Landroid/support/place/connector/ConnectorContainer;Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/rpc/EndpointInfo;Landroid/os/Handler;)V
    .registers 7
    .parameter "connection"
    .parameter "container"
    .parameter "service"
    .parameter "brokerEndpoint"
    .parameter "master"
    .parameter "handler"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    .line 54
    iput-object p2, p0, Landroid/support/place/connector/Broker;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    .line 55
    iput-object p3, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    .line 56
    iput-object p4, p0, Landroid/support/place/connector/Broker;->mBrokerConnector:Landroid/support/place/rpc/EndpointInfo;

    .line 57
    iput-object p6, p0, Landroid/support/place/connector/Broker;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$100(Landroid/support/place/connector/Broker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public checkCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "context"
    .parameter "type"
    .parameter "permission"

    .prologue
    const/4 v1, 0x0

    .line 521
    iget-object v2, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v2, :cond_d

    .line 523
    const-string v2, "aah.Broker"

    const-string v3, "checkCallingPermission: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_c
    :goto_c
    return v1

    .line 529
    :cond_d
    if-eqz p1, :cond_c

    .line 534
    :try_start_f
    iget-object v2, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-virtual {p1}, Landroid/support/place/rpc/RpcContext;->getCertificate()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, p2, v4, p3}, Landroid/support/place/connector/IBrokerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_c

    .line 536
    :catch_1b
    move-exception v0

    .line 537
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_c
.end method

.method public enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "type"
    .parameter "permission"

    .prologue
    .line 550
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/place/connector/Broker;->checkCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 551
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming request not authorized for serviceType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_29
    return-void
.end method

.method public enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "type"
    .parameter "permissions"

    .prologue
    .line 566
    if-nez p3, :cond_3

    .line 572
    :cond_2
    return-void

    .line 570
    :cond_3
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 571
    .local v3, permission:Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v3}, Landroid/support/place/connector/Broker;->checkCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 576
    .end local v3           #permission:Ljava/lang/String;
    :cond_13
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incoming request not authorized for serviceType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and permissions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPlace()Landroid/support/place/connector/PlaceInfo;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mPlace:Landroid/support/place/connector/PlaceInfo;

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public newEndpointInfo()Landroid/support/place/rpc/EndpointInfo;
    .registers 5

    .prologue
    .line 117
    new-instance v0, Landroid/support/place/rpc/EndpointInfo;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/support/place/connector/Broker;->mBrokerConnector:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v2}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/place/connector/Broker;->mBrokerConnector:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v3}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/support/place/rpc/EndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public registerConnector(Landroid/support/place/connector/Endpoint;Landroid/support/place/connector/ConnectorInfo;)V
    .registers 6
    .parameter "endpoint"
    .parameter "info"

    .prologue
    .line 130
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    if-nez v1, :cond_c

    .line 131
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "registerConnector only works for Brokers created in Containers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_c
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v1, :cond_1f

    .line 136
    const-string v1, "aah.Broker"

    const-string v2, "registerConnector: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Landroid/support/place/connector/BrokerDeadException;

    const-string v2, "Broker Disconnected"

    invoke-direct {v1, v2}, Landroid/support/place/connector/BrokerDeadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->onStart()V

    .line 143
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->getIEndpoint()Landroid/support/place/rpc/IEndpointStub;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/support/place/connector/IBrokerService;->registerConnector(Landroid/support/place/rpc/IEndpointStub;Landroid/support/place/connector/ConnectorInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2b} :catch_2c

    .line 147
    return-void

    .line 144
    :catch_2c
    move-exception v0

    .line 145
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Landroid/support/place/connector/BrokerDeadException;

    invoke-direct {v1, v0}, Landroid/support/place/connector/BrokerDeadException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerEndpoint(Landroid/support/place/connector/Endpoint;Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/rpc/EndpointInfo;
    .registers 6
    .parameter "endpoint"
    .parameter "info"

    .prologue
    .line 177
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v1, :cond_13

    .line 179
    const-string v1, "aah.Broker"

    const-string v2, "registerEndpoint: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v1, Landroid/support/place/connector/BrokerDeadException;

    const-string v2, "Broker Disconnected"

    invoke-direct {v1, v2}, Landroid/support/place/connector/BrokerDeadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->onStart()V

    .line 187
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->getIEndpoint()Landroid/support/place/rpc/IEndpointStub;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/support/place/connector/IBrokerService;->registerEndpoint(Landroid/support/place/rpc/IEndpointStub;Landroid/support/place/rpc/EndpointInfo;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1f} :catch_20

    .line 188
    return-object p2

    .line 189
    :catch_20
    move-exception v0

    .line 190
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Landroid/support/place/connector/BrokerDeadException;

    invoke-direct {v1, v0}, Landroid/support/place/connector/BrokerDeadException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 13
    .parameter "endpoint"
    .parameter "action"
    .parameter "payload"
    .parameter "result"
    .parameter "error"

    .prologue
    .line 282
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;I)V

    .line 283
    return-void
.end method

.method public sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;I)V
    .registers 16
    .parameter "endpoint"
    .parameter "action"
    .parameter "payload"
    .parameter "result"
    .parameter "error"
    .parameter "flags"

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v0, :cond_3c

    .line 221
    const-string v0, "aah.Broker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRpc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Trying to use a broker after calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "disconnect on the BrokerConnection that created it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v8, Landroid/support/place/rpc/RpcError;

    invoke-direct {v8}, Landroid/support/place/rpc/RpcError;-><init>()V

    .line 225
    .local v8, newError:Landroid/support/place/rpc/RpcError;
    const/4 v0, 0x1

    iput v0, v8, Landroid/support/place/rpc/RpcError;->status:I

    .line 226
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v8, v0}, Landroid/support/place/rpc/RpcError;->appendStackTrace(Ljava/lang/Throwable;)V

    .line 227
    invoke-interface {p5, v8}, Landroid/support/place/rpc/RpcErrorHandler;->onError(Landroid/support/place/rpc/RpcError;)V

    .line 278
    .end local v8           #newError:Landroid/support/place/rpc/RpcError;
    :cond_3b
    :goto_3b
    return-void

    .line 231
    :cond_3c
    const/4 v4, 0x0

    .line 232
    .local v4, callback:Landroid/support/place/rpc/IRpcCallback;
    if-nez p4, :cond_41

    if-eqz p5, :cond_46

    .line 233
    :cond_41
    new-instance v4, Landroid/support/place/connector/Broker$1;

    .end local v4           #callback:Landroid/support/place/rpc/IRpcCallback;
    invoke-direct {v4, p0, p4, p5}, Landroid/support/place/connector/Broker$1;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 264
    .restart local v4       #callback:Landroid/support/place/rpc/IRpcCallback;
    :cond_46
    :try_start_46
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    iget-object v5, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/support/place/connector/IBrokerService;->sendRequest(Ljava/lang/String;Landroid/support/place/rpc/EndpointInfo;[BLandroid/support/place/rpc/IRpcCallback;Landroid/support/place/connector/IBrokerConnection;I)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_52

    goto :goto_3b

    .line 265
    :catch_52
    move-exception v7

    .line 268
    .local v7, e:Ljava/lang/Exception;
    if-eqz p5, :cond_3b

    .line 269
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/place/connector/Broker$2;

    invoke-direct {v1, p0, p5, v7}, Landroid/support/place/connector/Broker$2;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/RpcErrorHandler;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3b
.end method

.method setPlace(Landroid/support/place/connector/PlaceInfo;)V
    .registers 8
    .parameter "place"

    .prologue
    const/4 v4, 0x0

    .line 293
    if-nez p1, :cond_15

    .line 294
    iput-object v4, p0, Landroid/support/place/connector/Broker;->mPlace:Landroid/support/place/connector/PlaceInfo;

    .line 296
    iget-object v3, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    if-eqz v3, :cond_e

    .line 297
    iget-object v3, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    invoke-virtual {v3}, Landroid/support/place/connector/ConnectorRegistry;->stopRegistryListener()V

    .line 299
    :cond_e
    iput-object v4, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    .line 300
    iput-object v4, p0, Landroid/support/place/connector/Broker;->mSecurityService:Landroid/support/place/connector/security/SecurityService;

    .line 301
    iput-object v4, p0, Landroid/support/place/connector/Broker;->mCoordinator:Landroid/support/place/connector/coordinator/Coordinator;

    .line 321
    :cond_14
    :goto_14
    return-void

    .line 303
    :cond_15
    iget-object v3, p0, Landroid/support/place/connector/Broker;->mPlace:Landroid/support/place/connector/PlaceInfo;

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/support/place/connector/Broker;->mPlace:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v3, p1}, Landroid/support/place/connector/PlaceInfo;->hasSameMaster(Landroid/support/place/connector/PlaceInfo;)Z

    move-result v3

    if-nez v3, :cond_63

    :cond_21
    const/4 v1, 0x1

    .line 305
    .local v1, masterChanged:Z
    :goto_22
    iput-object p1, p0, Landroid/support/place/connector/Broker;->mPlace:Landroid/support/place/connector/PlaceInfo;

    .line 307
    if-eqz v1, :cond_14

    .line 308
    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, masterAddr:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v2

    .line 311
    .local v2, masterPort:I
    iget-object v3, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    if-eqz v3, :cond_3f

    .line 312
    iget-object v3, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    invoke-virtual {v3}, Landroid/support/place/connector/ConnectorRegistry;->stopRegistryListener()V

    .line 314
    :cond_3f
    new-instance v3, Landroid/support/place/connector/ConnectorRegistry;

    invoke-direct {v3, p0}, Landroid/support/place/connector/ConnectorRegistry;-><init>(Landroid/support/place/connector/Broker;)V

    iput-object v3, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    .line 315
    new-instance v3, Landroid/support/place/connector/security/SecurityService;

    new-instance v4, Landroid/support/place/rpc/EndpointInfo;

    const-string v5, "_authService"

    invoke-direct {v4, v5, v0, v2}, Landroid/support/place/rpc/EndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v3, p0, v4}, Landroid/support/place/connector/security/SecurityService;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    iput-object v3, p0, Landroid/support/place/connector/Broker;->mSecurityService:Landroid/support/place/connector/security/SecurityService;

    .line 317
    new-instance v3, Landroid/support/place/connector/coordinator/Coordinator;

    new-instance v4, Landroid/support/place/rpc/EndpointInfo;

    const-string v5, "_coordinator"

    invoke-direct {v4, v5, v0, v2}, Landroid/support/place/rpc/EndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v3, p0, v4}, Landroid/support/place/connector/coordinator/Coordinator;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    iput-object v3, p0, Landroid/support/place/connector/Broker;->mCoordinator:Landroid/support/place/connector/coordinator/Coordinator;

    goto :goto_14

    .line 303
    .end local v0           #masterAddr:Ljava/lang/String;
    .end local v1           #masterChanged:Z
    .end local v2           #masterPort:I
    :cond_63
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public unregisterConnector(Landroid/support/place/connector/Endpoint;)V
    .registers 5
    .parameter "endpoint"

    .prologue
    .line 150
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    if-nez v1, :cond_c

    .line 151
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unregisterConnector only works for Brokers created in Containers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_c
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v1, :cond_18

    .line 157
    const-string v1, "aah.Broker"

    const-string v2, "unregisterConnector: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_17
    return-void

    .line 164
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->onStop()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_2e

    .line 170
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->getIEndpoint()Landroid/support/place/rpc/IEndpointStub;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/place/connector/IBrokerService;->unregisterConnector(Landroid/support/place/rpc/IEndpointStub;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25

    goto :goto_17

    .line 171
    :catch_25
    move-exception v0

    .line 172
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "aah.Broker"

    const-string v2, "unregisterConnector: error communicating with BrokerService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 165
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2e
    move-exception v0

    .line 166
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "aah.Broker"

    const-string v2, "Error invoking onStop (the object will be unregistered from the broker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method public unregisterEndpoint(Landroid/support/place/connector/Endpoint;)V
    .registers 5
    .parameter "endpoint"

    .prologue
    .line 195
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v1, :cond_c

    .line 197
    const-string v1, "aah.Broker"

    const-string v2, "unregisterEndpoint: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_b
    return-void

    .line 204
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->onStop()V

    .line 205
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->getIEndpoint()Landroid/support/place/rpc/IEndpointStub;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/place/connector/IBrokerService;->unregisterEndpoint(Landroid/support/place/rpc/IEndpointStub;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_b

    .line 206
    :catch_19
    move-exception v0

    .line 207
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "aah.Broker"

    const-string v2, "unregisterEndpoint: error communicating with BrokerService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
