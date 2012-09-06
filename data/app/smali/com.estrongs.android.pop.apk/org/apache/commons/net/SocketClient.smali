.class public abstract Lorg/apache/commons/net/SocketClient;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x0

.field public static final NETASCII_EOL:Ljava/lang/String; = "\r\n"

.field private static final __DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

.field private static final __DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;


# instance fields
.field private __commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

.field protected _defaultPort_:I

.field protected _input_:Ljava/io/InputStream;

.field protected _output_:Ljava/io/OutputStream;

.field protected _serverSocketFactory_:Ljavax/net/ServerSocketFactory;

.field protected _socketFactory_:Ljavax/net/SocketFactory;

.field protected _socket_:Ljava/net/Socket;

.field protected _timeout_:I

.field protected connectTimeout:I

.field private receiveBufferSize:I

.field private sendBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    iput v2, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    iput v2, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    iput v0, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    iput v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    sget-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    sget-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .registers 3

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private closeQuietly(Ljava/net/Socket;)V
    .registers 3

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method protected _connectAction_()V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    return-void
.end method

.method public addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->addProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/lang/String;I)V

    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .registers 4

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 6

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;)V
    .registers 3

    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/SocketClient;->connect(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .registers 6

    const/4 v2, -0x1

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v0, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    if-eq v0, v2, :cond_14

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_14
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    if-eq v0, v2, :cond_1f

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_1f
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v2, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    return-void
.end method

.method public connect(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 8

    const/4 v2, -0x1

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v0, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    if-eq v0, v2, :cond_14

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_14
    iget v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    if-eq v0, v2, :cond_1f

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_1f
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v2, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    return-void
.end method

.method protected createCommandSupport()V
    .registers 2

    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->__commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-void
.end method

.method public disconnect()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/SocketClient;->closeQuietly(Ljava/net/Socket;)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/SocketClient;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/SocketClient;->closeQuietly(Ljava/io/Closeable;)V

    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    return-void
.end method

.method protected fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method protected fireReplyReceived(ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireReplyReceived(ILjava/lang/String;)V

    :cond_11
    return-void
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->__commandSupport:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    return v0
.end method

.method public getDefaultPort()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    return v0
.end method

.method public getDefaultTimeout()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    return v0
.end method

.method public getKeepAlive()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected getReceiveBufferSize()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method protected getSendBufferSize()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    return v0
.end method

.method public getServerSocketFactory()Ljavax/net/ServerSocketFactory;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    return-object v0
.end method

.method public getSoLinger()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_f

    :try_start_7
    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_42} :catch_44

    const/4 v0, 0x1

    goto :goto_f

    :catch_44
    move-exception v1

    goto :goto_f
.end method

.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    goto :goto_5
.end method

.method public removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ProtocolCommandSupport;->removeProtocolCommandListener(Lorg/apache/commons/net/ProtocolCommandListener;)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    return-void
.end method

.method public setDefaultPort(I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/net/SocketClient;->_defaultPort_:I

    return-void
.end method

.method public setDefaultTimeout(I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/net/SocketClient;->_timeout_:I

    return-void
.end method

.method public setKeepAlive(Z)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/net/SocketClient;->receiveBufferSize:I

    return-void
.end method

.method public setSendBufferSize(I)V
    .registers 2

    iput p1, p0, Lorg/apache/commons/net/SocketClient;->sendBufferSize:I

    return-void
.end method

.method public setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V
    .registers 3

    if-nez p1, :cond_7

    sget-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SERVER_SOCKET_FACTORY:Ljavax/net/ServerSocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    goto :goto_6
.end method

.method public setSoLinger(ZI)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    return-void
.end method

.method public setSoTimeout(I)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .registers 3

    if-nez p1, :cond_7

    sget-object v0, Lorg/apache/commons/net/SocketClient;->__DEFAULT_SOCKET_FACTORY:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    :goto_6
    return-void

    :cond_7
    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    goto :goto_6
.end method

.method public setTcpNoDelay(Z)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public verifyRemote(Ljava/net/Socket;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
