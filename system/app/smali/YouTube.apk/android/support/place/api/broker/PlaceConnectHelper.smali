.class public final Landroid/support/place/api/broker/PlaceConnectHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlaceConnectHelper"


# instance fields
.field private mBroker:Landroid/support/place/connector/Broker;

.field private mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/Broker;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/support/place/api/broker/PlaceConnectHelper;->mBroker:Landroid/support/place/connector/Broker;

    .line 39
    return-void
.end method

.method static synthetic access$000(Landroid/support/place/api/broker/PlaceConnectHelper;Landroid/support/place/rpc/RpcError;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/support/place/api/broker/PlaceConnectHelper;->postError(Landroid/support/place/rpc/RpcError;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/place/api/broker/PlaceConnectHelper;Ljava/lang/String;Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/place/api/broker/PlaceConnectHelper;->onCertificateFound(Ljava/lang/String;Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/place/api/broker/PlaceConnectHelper;)Landroid/support/place/connector/Broker;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Landroid/support/place/api/broker/PlaceConnectHelper;->mBroker:Landroid/support/place/connector/Broker;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/place/api/broker/PlaceConnectHelper;)Landroid/support/place/rpc/RpcErrorHandler;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Landroid/support/place/api/broker/PlaceConnectHelper;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    return-object v0
.end method

.method private onCertificateFound(Ljava/lang/String;Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/place/api/broker/PlaceConnectHelper;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {p2}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/place/connector/Broker;->storeTrustedPeerCertficate(Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    new-instance v0, Landroid/support/place/connector/security/SecurityService;

    iget-object v1, p0, Landroid/support/place/api/broker/PlaceConnectHelper;->mBroker:Landroid/support/place/connector/Broker;

    new-instance v2, Landroid/support/place/rpc/EndpointInfo;

    const-string v3, "_authService"

    invoke-virtual {p2}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/support/place/rpc/EndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Landroid/support/place/connector/security/SecurityService;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    .line 158
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 159
    const-string v2, "id"

    invoke-virtual {v1, v2, p3}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "google.com"

    new-instance v3, Landroid/support/place/api/broker/PlaceConnectHelper$1;

    invoke-direct {v3, p0, p2}, Landroid/support/place/api/broker/PlaceConnectHelper$1;-><init>(Landroid/support/place/api/broker/PlaceConnectHelper;Landroid/support/place/connector/PlaceInfo;)V

    iget-object v4, p0, Landroid/support/place/api/broker/PlaceConnectHelper;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/support/place/connector/security/SecurityService;->authenticate(Ljava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/connector/security/SecurityService$OnAuthenticate;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 174
    return-void
.end method

.method private postError(Landroid/support/place/rpc/RpcError;)V
    .registers 4
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/place/api/broker/PlaceConnectHelper;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/place/api/broker/PlaceConnectHelper$2;

    invoke-direct {v1, p0, p1}, Landroid/support/place/api/broker/PlaceConnectHelper$2;-><init>(Landroid/support/place/api/broker/PlaceConnectHelper;Landroid/support/place/rpc/RpcError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method


# virtual methods
.method public final connect(Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;ZLandroid/support/place/rpc/RpcErrorHandler;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 47
    if-eqz p3, :cond_d

    .line 48
    iget-object v0, p0, Landroid/support/place/api/broker/PlaceConnectHelper;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/place/connector/Broker;->setPlaceId(Ljava/lang/String;)V

    .line 60
    :goto_c
    return v4

    .line 51
    :cond_d
    iput-object p4, p0, Landroid/support/place/api/broker/PlaceConnectHelper;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    .line 53
    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getMasterCertificate()Ljava/lang/String;

    move-result-object v0

    .line 54
    if-nez v0, :cond_28

    .line 55
    new-instance v0, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;

    invoke-direct {v0, p0}, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;-><init>(Landroid/support/place/api/broker/PlaceConnectHelper;)V

    new-array v1, v4, [Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;

    const/4 v2, 0x0

    new-instance v3, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;

    invoke-direct {v3, p1, p2}, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;-><init>(Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_c

    .line 57
    :cond_28
    invoke-direct {p0, v0, p1, p2}, Landroid/support/place/api/broker/PlaceConnectHelper;->onCertificateFound(Ljava/lang/String;Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;)V

    goto :goto_c
.end method
