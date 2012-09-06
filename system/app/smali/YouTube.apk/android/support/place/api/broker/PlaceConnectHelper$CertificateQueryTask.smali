.class Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private mArgs:Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;

.field final synthetic this$0:Landroid/support/place/api/broker/PlaceConnectHelper;


# direct methods
.method constructor <init>(Landroid/support/place/api/broker/PlaceConnectHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->this$0:Landroid/support/place/api/broker/PlaceConnectHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private queryCertificate()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 94
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    .line 100
    const/16 v1, 0x3e8

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 102
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 103
    const-string v3, "command"

    const-string v4, "get_cert"

    invoke-virtual {v1, v3, v4}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v1

    .line 106
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v1

    invoke-direct {v3, v1, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 107
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->mArgs:Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;

    iget-object v4, v4, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;->placeInfo:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v4}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x52de

    invoke-direct {v1, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 111
    const/16 v1, 0x400

    new-array v4, v1, [B

    .line 112
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v1, v4

    invoke-direct {v5, v4, v1}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_56

    move v1, v0

    .line 115
    :goto_42
    const/4 v6, 0x5

    if-ge v1, v6, :cond_4c

    .line 117
    :try_start_45
    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 118
    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_56
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_5b

    .line 123
    const/4 v0, 0x1

    .line 127
    :cond_4c
    if-nez v0, :cond_66

    .line 128
    :try_start_4e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CertificateQueryTask: unable to get certificate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_56

    .line 138
    :catchall_56
    move-exception v0

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    throw v0

    .line 120
    :catch_5b
    move-exception v6

    :try_start_5c
    const-string v6, "PlaceConnectHelper"

    const-string v7, "CertificateQueryTask: request failed; retrying"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 131
    :cond_66
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-virtual {v0, v4, v1, v3}, Landroid/support/place/rpc/RpcData;->deserialize([BII)V

    .line 133
    const-string v1, "cert_field"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_78
    .catchall {:try_start_5c .. :try_end_78} :catchall_56

    move-result-object v0

    .line 138
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 73
    check-cast p1, [Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;

    invoke-virtual {p0, p1}, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->doInBackground([Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->mArgs:Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;

    .line 81
    :try_start_5
    invoke-direct {p0}, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->queryCertificate()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    .line 88
    :goto_9
    return-object v0

    .line 82
    :catch_a
    move-exception v0

    .line 83
    const-string v1, "PlaceConnectHelper"

    const-string v2, "CertificateQueryTask: unable to get certificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    new-instance v0, Landroid/support/place/rpc/RpcError;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to get certificate for place: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->mArgs:Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;

    iget-object v3, v3, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;->placeInfo:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v3}, Landroid/support/place/connector/PlaceInfo;->getPlaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/place/rpc/RpcError;-><init>(ILjava/lang/String;)V

    .line 86
    iget-object v1, p0, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->this$0:Landroid/support/place/api/broker/PlaceConnectHelper;

    #calls: Landroid/support/place/api/broker/PlaceConnectHelper;->postError(Landroid/support/place/rpc/RpcError;)V
    invoke-static {v1, v0}, Landroid/support/place/api/broker/PlaceConnectHelper;->access$000(Landroid/support/place/api/broker/PlaceConnectHelper;Landroid/support/place/rpc/RpcError;)V

    .line 88
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->this$0:Landroid/support/place/api/broker/PlaceConnectHelper;

    iget-object v1, p0, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->mArgs:Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;

    iget-object v1, v1, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;->placeInfo:Landroid/support/place/connector/PlaceInfo;

    iget-object v2, p0, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryTask;->mArgs:Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;

    iget-object v2, v2, Landroid/support/place/api/broker/PlaceConnectHelper$CertificateQueryArgs;->userId:Ljava/lang/String;

    #calls: Landroid/support/place/api/broker/PlaceConnectHelper;->onCertificateFound(Ljava/lang/String;Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2}, Landroid/support/place/api/broker/PlaceConnectHelper;->access$100(Landroid/support/place/api/broker/PlaceConnectHelper;Ljava/lang/String;Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;)V

    .line 146
    return-void
.end method
