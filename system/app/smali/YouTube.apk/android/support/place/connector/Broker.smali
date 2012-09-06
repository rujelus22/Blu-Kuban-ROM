.class public Landroid/support/place/connector/Broker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = true

.field public static final FLAG_RPC_ONEWAY:I = 0x1

.field public static final FLAG_RPC_SIGNED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "aah.Broker"


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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

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

.method public constructor <init>(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/support/place/connector/Broker$FakeBrokerConnection;

    invoke-direct {v0, v1}, Landroid/support/place/connector/Broker$FakeBrokerConnection;-><init>(Landroid/support/place/connector/Broker$1;)V

    iput-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    .line 67
    iput-object v1, p0, Landroid/support/place/connector/Broker;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    .line 68
    iput-object p1, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    .line 69
    iput-object p2, p0, Landroid/support/place/connector/Broker;->mBrokerConnector:Landroid/support/place/rpc/EndpointInfo;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/Broker;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method static synthetic access$100(Landroid/support/place/connector/Broker;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addPreferredPlace(Landroid/support/place/connector/PlaceInfo;)V
    .registers 6
    .parameter

    .prologue
    .line 358
    :try_start_0
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-interface {v0, p1}, Landroid/support/place/connector/IBrokerService;->addPreferredPlace(Landroid/support/place/connector/PlaceInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 362
    :goto_5
    return-void

    .line 359
    :catch_6
    move-exception v0

    .line 360
    const-string v1, "aah.Broker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error adding preferred place: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public checkCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 521
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v1, :cond_d

    .line 523
    const-string v1, "aah.Broker"

    const-string v2, "checkCallingPermission: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_c
    :goto_c
    return v0

    .line 529
    :cond_d
    if-eqz p1, :cond_c

    .line 534
    :try_start_f
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-virtual {p1}, Landroid/support/place/rpc/RpcContext;->getCertificate()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3, p3}, Landroid/support/place/connector/IBrokerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1b

    move-result v0

    goto :goto_c

    .line 537
    :catch_1b
    move-exception v1

    goto :goto_c
.end method

.method public enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 550
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/place/connector/Broker;->checkCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 551
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incoming request not authorized for serviceType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    :cond_25
    return-void
.end method

.method public enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    if-nez p3, :cond_3

    .line 572
    :cond_2
    return-void

    .line 570
    :cond_3
    array-length v1, p3

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_12

    aget-object v2, p3, v0

    .line 571
    invoke-virtual {p0, p1, p2, v2}, Landroid/support/place/connector/Broker;->checkCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 576
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incoming request not authorized for serviceType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 459
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v1, :cond_d

    .line 461
    const-string v1, "aah.Broker"

    const-string v2, "getCertificate: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_c
    :goto_c
    return-object v0

    .line 468
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-interface {v1}, Landroid/support/place/connector/IBrokerService;->getCertificate()Ljava/lang/String;

    move-result-object v1

    .line 470
    if-eqz v1, :cond_c

    .line 475
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 476
    invoke-static {v1}, Landroid/support/place/utils/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 478
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_27
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_27} :catch_29
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_27} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_27} :catch_3b

    move-result-object v0

    goto :goto_c

    .line 481
    :catch_29
    move-exception v1

    .line 482
    const-string v1, "aah.Broker"

    const-string v2, "Error decoding certificate."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 483
    :catch_32
    move-exception v1

    .line 484
    const-string v2, "aah.Broker"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 485
    :catch_3b
    move-exception v1

    .line 486
    const-string v2, "aah.Broker"

    const-string v3, "Something really wrong happened duringcertificate decoding.\n"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    return-object v0
.end method

.method public getCoordinator()Landroid/support/place/connector/coordinator/Coordinator;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mCoordinator:Landroid/support/place/connector/coordinator/Coordinator;

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

.method public getPreferredPlaces()Ljava/util/List;
    .registers 4

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v0, :cond_11

    .line 326
    const-string v0, "aah.Broker"

    const-string v1, "getPreferredPlaces: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    :goto_10
    return-object v0

    .line 333
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-interface {v0}, Landroid/support/place/connector/IBrokerService;->getPreferredPlaces()Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_10

    .line 334
    :catch_18
    move-exception v0

    .line 335
    const-string v1, "aah.Broker"

    const-string v2, "Error communicating with BrokerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10
.end method

.method public getSecurityService()Landroid/support/place/connector/security/SecurityService;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mSecurityService:Landroid/support/place/connector/security/SecurityService;

    return-object v0
.end method

.method public getService()Landroid/support/place/connector/IBrokerService;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/place/rpc/RpcData;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    :try_start_0
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/place/connector/IBrokerService;->getUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/place/rpc/RpcData;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 595
    :goto_6
    return-object v0

    .line 593
    :catch_7
    move-exception v0

    .line 594
    const-string v1, "aah.Broker"

    const-string v2, "Error communicating with BrokerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    const/4 v0, 0x0

    goto :goto_6
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

.method public newConnectorInfo(Landroid/support/place/connector/Endpoint;)Landroid/support/place/connector/ConnectorInfo;
    .registers 5
    .parameter

    .prologue
    .line 126
    new-instance v0, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {p0}, Landroid/support/place/connector/Broker;->newEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/place/connector/ConnectorInfo;-><init>(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;)V

    return-object v0
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
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    if-nez v0, :cond_c

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "registerConnector only works for Brokers created in Containers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_c
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v0, :cond_1f

    .line 136
    const-string v0, "aah.Broker"

    const-string v1, "registerConnector: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Landroid/support/place/connector/BrokerDeadException;

    const-string v1, "Broker Disconnected"

    invoke-direct {v0, v1}, Landroid/support/place/connector/BrokerDeadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->onStart()V

    .line 143
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->getIEndpoint()Landroid/support/place/rpc/IEndpointStub;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/support/place/connector/IBrokerService;->registerConnector(Landroid/support/place/rpc/IEndpointStub;Landroid/support/place/connector/ConnectorInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2b} :catch_2c

    .line 146
    return-void

    .line 144
    :catch_2c
    move-exception v0

    .line 145
    new-instance v1, Landroid/support/place/connector/BrokerDeadException;

    invoke-direct {v1, v0}, Landroid/support/place/connector/BrokerDeadException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerEndpoint(Landroid/support/place/connector/Endpoint;Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/rpc/EndpointInfo;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v0, :cond_13

    .line 179
    const-string v0, "aah.Broker"

    const-string v1, "registerEndpoint: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Landroid/support/place/connector/BrokerDeadException;

    const-string v1, "Broker Disconnected"

    invoke-direct {v0, v1}, Landroid/support/place/connector/BrokerDeadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->onStart()V

    .line 187
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->getIEndpoint()Landroid/support/place/rpc/IEndpointStub;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/support/place/connector/IBrokerService;->registerEndpoint(Landroid/support/place/rpc/IEndpointStub;Landroid/support/place/rpc/EndpointInfo;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1f} :catch_20

    .line 188
    return-object p2

    .line 189
    :catch_20
    move-exception v0

    .line 190
    new-instance v1, Landroid/support/place/connector/BrokerDeadException;

    invoke-direct {v1, v0}, Landroid/support/place/connector/BrokerDeadException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removePreferredPlace(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v0, :cond_c

    .line 343
    const-string v0, "aah.Broker"

    const-string v1, "removePreferredPlace: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_b
    return-void

    .line 350
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-interface {v0, p1}, Landroid/support/place/connector/IBrokerService;->removePreferredPlace(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_b

    .line 351
    :catch_12
    move-exception v0

    .line 352
    const-string v1, "aah.Broker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error removing preferred place: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public saveUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 584
    :try_start_0
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/support/place/connector/IBrokerService;->saveUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 588
    :goto_a
    return-void

    .line 585
    :catch_b
    move-exception v0

    .line 586
    const-string v1, "aah.Broker"

    const-string v2, "Error communicating with BrokerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

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
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v0, :cond_32

    .line 221
    const-string v0, "aah.Broker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendRpc "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Landroid/support/place/rpc/RpcError;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcError;-><init>()V

    .line 225
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/place/rpc/RpcError;->status:I

    .line 226
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcError;->appendStackTrace(Ljava/lang/Throwable;)V

    .line 227
    invoke-interface {p5, v0}, Landroid/support/place/rpc/RpcErrorHandler;->onError(Landroid/support/place/rpc/RpcError;)V

    .line 278
    :cond_31
    :goto_31
    return-void

    .line 231
    :cond_32
    const/4 v4, 0x0

    .line 232
    if-nez p4, :cond_37

    if-eqz p5, :cond_3c

    .line 233
    :cond_37
    new-instance v4, Landroid/support/place/connector/Broker$1;

    invoke-direct {v4, p0, p4, p5}, Landroid/support/place/connector/Broker$1;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 264
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    iget-object v5, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/support/place/connector/IBrokerService;->sendRequest(Ljava/lang/String;Landroid/support/place/rpc/EndpointInfo;[BLandroid/support/place/rpc/IRpcCallback;Landroid/support/place/connector/IBrokerConnection;I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_48

    goto :goto_31

    .line 265
    :catch_48
    move-exception v0

    .line 268
    if-eqz p5, :cond_31

    .line 269
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/place/connector/Broker$2;

    invoke-direct {v2, p0, p5, v0}, Landroid/support/place/connector/Broker$2;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/RpcErrorHandler;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31
.end method

.method public setDefaultAccount(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 601
    :try_start_0
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-interface {v0, p1, p2}, Landroid/support/place/connector/IBrokerService;->setDefaultAccount(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 605
    :goto_5
    return-void

    .line 602
    :catch_6
    move-exception v0

    .line 603
    const-string v1, "aah.Broker"

    const-string v2, "Error communicating with BrokerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method setPlace(Landroid/support/place/connector/PlaceInfo;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 293
    if-nez p1, :cond_15

    .line 294
    iput-object v1, p0, Landroid/support/place/connector/Broker;->mPlace:Landroid/support/place/connector/PlaceInfo;

    .line 296
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    if-eqz v0, :cond_e

    .line 297
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorRegistry;->stopRegistryListener()V

    .line 299
    :cond_e
    iput-object v1, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    .line 300
    iput-object v1, p0, Landroid/support/place/connector/Broker;->mSecurityService:Landroid/support/place/connector/security/SecurityService;

    .line 301
    iput-object v1, p0, Landroid/support/place/connector/Broker;->mCoordinator:Landroid/support/place/connector/coordinator/Coordinator;

    .line 321
    :cond_14
    :goto_14
    return-void

    .line 303
    :cond_15
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mPlace:Landroid/support/place/connector/PlaceInfo;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/place/connector/Broker;->mPlace:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v0, p1}, Landroid/support/place/connector/PlaceInfo;->hasSameMaster(Landroid/support/place/connector/PlaceInfo;)Z

    move-result v0

    if-nez v0, :cond_63

    :cond_21
    const/4 v0, 0x1

    .line 305
    :goto_22
    iput-object p1, p0, Landroid/support/place/connector/Broker;->mPlace:Landroid/support/place/connector/PlaceInfo;

    .line 307
    if-eqz v0, :cond_14

    .line 308
    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v1

    .line 311
    iget-object v2, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    if-eqz v2, :cond_3f

    .line 312
    iget-object v2, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    invoke-virtual {v2}, Landroid/support/place/connector/ConnectorRegistry;->stopRegistryListener()V

    .line 314
    :cond_3f
    new-instance v2, Landroid/support/place/connector/ConnectorRegistry;

    invoke-direct {v2, p0}, Landroid/support/place/connector/ConnectorRegistry;-><init>(Landroid/support/place/connector/Broker;)V

    iput-object v2, p0, Landroid/support/place/connector/Broker;->mConnectorRegistry:Landroid/support/place/connector/ConnectorRegistry;

    .line 315
    new-instance v2, Landroid/support/place/connector/security/SecurityService;

    new-instance v3, Landroid/support/place/rpc/EndpointInfo;

    const-string v4, "_authService"

    invoke-direct {v3, v4, v0, v1}, Landroid/support/place/rpc/EndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, p0, v3}, Landroid/support/place/connector/security/SecurityService;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    iput-object v2, p0, Landroid/support/place/connector/Broker;->mSecurityService:Landroid/support/place/connector/security/SecurityService;

    .line 317
    new-instance v2, Landroid/support/place/connector/coordinator/Coordinator;

    new-instance v3, Landroid/support/place/rpc/EndpointInfo;

    const-string v4, "_coordinator"

    invoke-direct {v3, v4, v0, v1}, Landroid/support/place/rpc/EndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, p0, v3}, Landroid/support/place/connector/coordinator/Coordinator;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    iput-object v2, p0, Landroid/support/place/connector/Broker;->mCoordinator:Landroid/support/place/connector/coordinator/Coordinator;

    goto :goto_14

    .line 303
    :cond_63
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v0, :cond_c

    .line 367
    const-string v0, "aah.Broker"

    const-string v1, "setPlaceId: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_b
    return-void

    .line 374
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-interface {v0, p1}, Landroid/support/place/connector/IBrokerService;->joinPlace(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_b

    .line 375
    :catch_12
    move-exception v0

    .line 376
    const-string v1, "aah.Broker"

    const-string v2, "Error communicating with BrokerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public startListeningForPlaces(Landroid/support/place/connector/Broker$PlaceListener;)Ljava/util/List;
    .registers 5
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v0, :cond_11

    .line 428
    const-string v0, "aah.Broker"

    const-string v1, "startListeningForPlaces: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    :goto_10
    return-object v0

    .line 435
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    iget-object v1, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    iget-object v2, p1, Landroid/support/place/connector/Broker$PlaceListener;->binder:Landroid/support/place/connector/IPlaceListener;

    invoke-interface {v0, v1, v2}, Landroid/support/place/connector/IBrokerService;->startListeningForPlaces(Landroid/support/place/connector/IBrokerConnection;Landroid/support/place/connector/IPlaceListener;)Ljava/util/List;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_10

    .line 436
    :catch_1c
    move-exception v0

    .line 437
    const-string v1, "aah.Broker"

    const-string v2, "Error communicating with BrokerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10
.end method

.method public stopListeningForPlaces(Landroid/support/place/connector/Broker$PlaceListener;)V
    .registers 5
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v0, :cond_c

    .line 445
    const-string v0, "aah.Broker"

    const-string v1, "stopListeningForPlaces: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_b
    return-void

    .line 452
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    iget-object v1, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    iget-object v2, p1, Landroid/support/place/connector/Broker$PlaceListener;->binder:Landroid/support/place/connector/IPlaceListener;

    invoke-interface {v0, v1, v2}, Landroid/support/place/connector/IBrokerService;->stopListeningForPlaces(Landroid/support/place/connector/IBrokerConnection;Landroid/support/place/connector/IPlaceListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_b

    .line 453
    :catch_16
    move-exception v0

    .line 454
    const-string v1, "aah.Broker"

    const-string v2, "Error communicating with BrokerService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public storeTrustedPeerCertficate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 493
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v1, :cond_d

    .line 495
    const-string v1, "aah.Broker"

    const-string v2, "storeTrustedPeerCertificate: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_c
    return v0

    .line 502
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-interface {v1, p1, p2}, Landroid/support/place/connector/IBrokerService;->storeTrustedPeerCertificate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    .line 507
    const/4 v0, 0x1

    goto :goto_c

    .line 503
    :catch_14
    move-exception v1

    .line 504
    const-string v2, "aah.Broker"

    const-string v3, "Cannot store the trusted peer certificate"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public unregisterConnector(Landroid/support/place/connector/Endpoint;)V
    .registers 5
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    if-nez v0, :cond_c

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unregisterConnector only works for Brokers created in Containers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_c
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v0, :cond_18

    .line 157
    const-string v0, "aah.Broker"

    const-string v1, "unregisterConnector: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->getIEndpoint()Landroid/support/place/rpc/IEndpointStub;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/place/connector/IBrokerService;->unregisterConnector(Landroid/support/place/rpc/IEndpointStub;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25

    goto :goto_17

    .line 172
    :catch_25
    move-exception v0

    const-string v0, "aah.Broker"

    const-string v1, "unregisterConnector: error communicating with BrokerService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 165
    :catch_2e
    move-exception v0

    .line 166
    const-string v1, "aah.Broker"

    const-string v2, "Error invoking onStop (the object will be unregistered from the broker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method public unregisterEndpoint(Landroid/support/place/connector/Endpoint;)V
    .registers 4
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-nez v0, :cond_c

    .line 197
    const-string v0, "aah.Broker"

    const-string v1, "unregisterEndpoint: Trying to use a broker after calling disconnect on the BrokerConnection that created it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_b
    return-void

    .line 204
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->onStop()V

    .line 205
    iget-object v0, p0, Landroid/support/place/connector/Broker;->mService:Landroid/support/place/connector/IBrokerService;

    invoke-virtual {p1}, Landroid/support/place/connector/Endpoint;->getIEndpoint()Landroid/support/place/rpc/IEndpointStub;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/place/connector/IBrokerService;->unregisterEndpoint(Landroid/support/place/rpc/IEndpointStub;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_b

    .line 207
    :catch_19
    move-exception v0

    const-string v0, "aah.Broker"

    const-string v1, "unregisterEndpoint: error communicating with BrokerService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
