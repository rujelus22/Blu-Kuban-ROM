.class public Lorg/snmp4j/transport/DefaultUdpTransportMapping;
.super Lorg/snmp4j/transport/UdpTransportMapping;
.source "DefaultUdpTransportMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;
    }
.end annotation


# static fields
.field static class$org$snmp4j$transport$DefaultUdpTransportMapping:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field protected listener:Lorg/snmp4j/util/WorkerTask;

.field protected listenerThread:Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;

.field private receiveBufferSize:I

.field protected socket:Ljava/net/DatagramSocket;

.field private socketTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->class$org$snmp4j$transport$DefaultUdpTransportMapping:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.transport.DefaultUdpTransportMapping"

    invoke-static {v0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->class$org$snmp4j$transport$DefaultUdpTransportMapping:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->class$org$snmp4j$transport$DefaultUdpTransportMapping:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v0, Lorg/snmp4j/smi/UdpAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lorg/snmp4j/transport/UdpTransportMapping;-><init>(Lorg/snmp4j/smi/UdpAddress;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    .line 49
    iput v2, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socketTimeout:I

    .line 51
    iput v2, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->receiveBufferSize:I

    .line 62
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/snmp4j/transport/UdpTransportMapping;->udpAddress:Lorg/snmp4j/smi/UdpAddress;

    invoke-virtual {v1}, Lorg/snmp4j/smi/UdpAddress;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/UdpAddress;)V
    .registers 5
    .parameter "udpAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Lorg/snmp4j/transport/UdpTransportMapping;-><init>(Lorg/snmp4j/smi/UdpAddress;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    .line 49
    iput v1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socketTimeout:I

    .line 51
    iput v1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->receiveBufferSize:I

    .line 99
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-virtual {p1}, Lorg/snmp4j/smi/UdpAddress;->getPort()I

    move-result v1

    invoke-virtual {p1}, Lorg/snmp4j/smi/UdpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/UdpAddress;Z)V
    .registers 6
    .parameter "udpAddress"
    .parameter "reuseAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lorg/snmp4j/transport/UdpTransportMapping;-><init>(Lorg/snmp4j/smi/UdpAddress;)V

    .line 46
    iput-object v2, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    .line 49
    iput v1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socketTimeout:I

    .line 51
    iput v1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->receiveBufferSize:I

    .line 81
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    .line 82
    iget-object v1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 83
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lorg/snmp4j/smi/UdpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/smi/UdpAddress;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 85
    .local v0, addr:Ljava/net/SocketAddress;
    iget-object v1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 86
    return-void
.end method

.method static access$000(Lorg/snmp4j/transport/DefaultUdpTransportMapping;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->receiveBufferSize:I

    return v0
.end method

.method static access$100()Lorg/snmp4j/log/LogAdapter;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private declared-synchronized ensureSocket()Ljava/net/DatagramSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    .line 171
    .local v0, s:Ljava/net/DatagramSocket;
    if-nez v0, :cond_17

    .line 172
    new-instance v0, Ljava/net/DatagramSocket;

    .end local v0           #s:Ljava/net/DatagramSocket;
    iget-object v1, p0, Lorg/snmp4j/transport/UdpTransportMapping;->udpAddress:Lorg/snmp4j/smi/UdpAddress;

    invoke-virtual {v1}, Lorg/snmp4j/smi/UdpAddress;->getPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 173
    .restart local v0       #s:Ljava/net/DatagramSocket;
    iget v1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socketTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 174
    iput-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 176
    :cond_17
    monitor-exit p0

    return-object v0

    .line 170
    .end local v0           #s:Ljava/net/DatagramSocket;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, interrupted:Z
    iget-object v3, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    .line 126
    .local v3, l:Lorg/snmp4j/util/WorkerTask;
    if-eqz v3, :cond_15

    .line 127
    invoke-interface {v3}, Lorg/snmp4j/util/WorkerTask;->terminate()V

    .line 128
    invoke-interface {v3}, Lorg/snmp4j/util/WorkerTask;->interrupt()V

    .line 129
    iget v4, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socketTimeout:I

    if-lez v4, :cond_13

    .line 131
    :try_start_10
    invoke-interface {v3}, Lorg/snmp4j/util/WorkerTask;->join()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_2e

    .line 138
    :cond_13
    :goto_13
    iput-object v5, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    .line 140
    :cond_15
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    .line 141
    .local v0, closingSocket:Ljava/net/DatagramSocket;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_22

    .line 142
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 144
    :cond_22
    iput-object v5, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    .line 145
    if-eqz v2, :cond_2d

    .line 146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 148
    :cond_2d
    return-void

    .line 133
    .end local v0           #closingSocket:Ljava/net/DatagramSocket;
    :catch_2e
    move-exception v1

    .line 134
    .local v1, ex:Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    .line 135
    sget-object v4, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v4, v1}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto :goto_13
.end method

.method public getPriority()I
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    .line 205
    .local v0, lt:Lorg/snmp4j/util/WorkerTask;
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_d

    .line 206
    check-cast v0, Ljava/lang/Thread;

    .end local v0           #lt:Lorg/snmp4j/util/WorkerTask;
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    .line 209
    :goto_c
    return v1

    .restart local v0       #lt:Lorg/snmp4j/util/WorkerTask;
    :cond_d
    const/4 v1, 0x5

    goto :goto_c
.end method

.method public getReceiveBufferSize()I
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->receiveBufferSize:I

    return v0
.end method

.method public getSocketTimeout()I
    .registers 2

    .prologue
    .line 256
    iget v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socketTimeout:I

    return v0
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    .line 237
    .local v0, lt:Lorg/snmp4j/util/WorkerTask;
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_d

    .line 238
    check-cast v0, Ljava/lang/Thread;

    .end local v0           #lt:Lorg/snmp4j/util/WorkerTask;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 241
    :goto_c
    return-object v1

    .restart local v0       #lt:Lorg/snmp4j/util/WorkerTask;
    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isListening()Z
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public declared-synchronized listen()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    if-eqz v0, :cond_10

    .line 160
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Port already listening"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 159
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 162
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->ensureSocket()Ljava/net/DatagramSocket;

    .line 163
    new-instance v0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;

    invoke-direct {v0, p0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;-><init>(Lorg/snmp4j/transport/DefaultUdpTransportMapping;)V

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listenerThread:Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;

    .line 164
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->getThreadFactory()Lorg/snmp4j/util/ThreadFactory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DefaultUDPTransportMapping_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->getAddress()Lorg/snmp4j/smi/UdpAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listenerThread:Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lorg/snmp4j/util/ThreadFactory;->createWorkerThread(Ljava/lang/String;Lorg/snmp4j/util/WorkerTask;Z)Lorg/snmp4j/util/WorkerTask;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    .line 166
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    invoke-interface {v0}, Lorg/snmp4j/util/WorkerTask;->run()V
    :try_end_43
    .catchall {:try_start_10 .. :try_end_43} :catchall_d

    .line 167
    monitor-exit p0

    return-void
.end method

.method public sendMessage(Lorg/snmp4j/smi/Address;[B)V
    .registers 8
    .parameter "targetAddress"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljava/net/InetSocketAddress;

    move-object v2, p1

    check-cast v2, Lorg/snmp4j/smi/UdpAddress;

    invoke-virtual {v2}, Lorg/snmp4j/smi/UdpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lorg/snmp4j/smi/UdpAddress;

    invoke-virtual {v2}, Lorg/snmp4j/smi/UdpAddress;->getPort()I

    move-result v2

    invoke-direct {v1, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 109
    .local v1, targetSocketAddress:Ljava/net/InetSocketAddress;
    sget-object v2, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v2}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 110
    sget-object v2, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Sending message to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " with length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v4, p2}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 114
    :cond_51
    invoke-direct {p0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->ensureSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    .line 115
    .local v0, s:Ljava/net/DatagramSocket;
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, p2

    invoke-direct {v2, p2, v3, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 116
    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .registers 2
    .parameter "maxInboundMessageSize"

    .prologue
    .line 246
    iput p1, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->maxInboundMessageSize:I

    .line 247
    return-void
.end method

.method public setPriority(I)V
    .registers 4
    .parameter "newPriority"

    .prologue
    .line 190
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    .line 191
    .local v0, lt:Lorg/snmp4j/util/WorkerTask;
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_b

    .line 192
    check-cast v0, Ljava/lang/Thread;

    .end local v0           #lt:Lorg/snmp4j/util/WorkerTask;
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 194
    :cond_b
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .registers 4
    .parameter "receiveBufferSize"

    .prologue
    .line 279
    if-gtz p1, :cond_a

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Receive buffer size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_a
    iput p1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->receiveBufferSize:I

    .line 283
    return-void
.end method

.method public setSocketTimeout(I)V
    .registers 4
    .parameter "socketTimeout"

    .prologue
    .line 292
    iput p1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socketTimeout:I

    .line 293
    iget-object v1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_b

    .line 295
    :try_start_6
    iget-object v1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_b} :catch_c

    .line 301
    :cond_b
    return-void

    .line 297
    :catch_c
    move-exception v0

    .line 298
    .local v0, ex:Ljava/net/SocketException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setThreadName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 223
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    .line 224
    .local v0, lt:Lorg/snmp4j/util/WorkerTask;
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_b

    .line 225
    check-cast v0, Ljava/lang/Thread;

    .end local v0           #lt:Lorg/snmp4j/util/WorkerTask;
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 227
    :cond_b
    return-void
.end method
