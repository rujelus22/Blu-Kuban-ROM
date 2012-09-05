.class public Ljava/net/PlainDatagramSocketImpl;
.super Ljava/net/DatagramSocketImpl;
.source "PlainDatagramSocketImpl.java"


# instance fields
.field private connectedAddress:Ljava/net/InetAddress;

.field private connectedPort:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private volatile isNativeConnected:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 45
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 64
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .registers 5
    .parameter "fd"
    .parameter "localPort"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    .line 45
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 56
    iput-object p1, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 57
    iput p2, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    .line 58
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 59
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 61
    :cond_1d
    return-void
.end method

.method private doRecv(Ljava/net/DatagramPacket;I)V
    .registers 11
    .parameter "pack"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    iget-boolean v7, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    move v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    .line 162
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_1d

    .line 163
    invoke-direct {p0, p1}, Ljava/net/PlainDatagramSocketImpl;->updatePacketRecvAddress(Ljava/net/DatagramPacket;)V

    .line 165
    :cond_1d
    return-void
.end method

.method private static makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Llibcore/io/StructGroupReq;
    .registers 4
    .parameter "gr_group"
    .parameter "networkInterface"

    .prologue
    .line 120
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    .line 121
    .local v0, gr_interface:I
    :goto_6
    new-instance v1, Llibcore/io/StructGroupReq;

    invoke-direct {v1, v0, p0}, Llibcore/io/StructGroupReq;-><init>(ILjava/net/InetAddress;)V

    return-object v1

    .line 120
    .end local v0           #gr_interface:I
    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private updatePacketRecvAddress(Ljava/net/DatagramPacket;)V
    .registers 3
    .parameter "packet"

    .prologue
    .line 235
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 236
    iget v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 237
    return-void
.end method


# virtual methods
.method public bind(ILjava/net/InetAddress;)V
    .registers 5
    .parameter "port"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p2, p1}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 69
    if-eqz p1, :cond_11

    .line 70
    iput p1, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    .line 75
    :goto_9
    const/16 v0, 0x20

    :try_start_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_1a

    .line 78
    :goto_10
    return-void

    .line 72
    :cond_11
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    goto :goto_9

    .line 76
    :catch_1a
    move-exception v0

    goto :goto_10
.end method

.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    .line 84
    :try_start_6
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_10

    .line 87
    :goto_b
    monitor-exit p0

    return-void

    .line 82
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :catch_10
    move-exception v0

    goto :goto_b
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .registers 7
    .parameter "inetAddr"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v1, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1, p2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z

    .line 203
    :try_start_5
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_f} :catch_15

    .line 209
    iput p2, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    .line 211
    return-void

    .line 204
    :catch_15
    move-exception v0

    .line 207
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host is unresolved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public create()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 92
    return-void
.end method

.method public disconnect()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 216
    :try_start_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_b
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_b} :catch_14

    .line 220
    const/4 v1, -0x1

    iput v1, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    .line 222
    iput-boolean v5, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    .line 223
    return-void

    .line 217
    :catch_14
    move-exception v0

    .line 218
    .local v0, errnoException:Llibcore/io/ErrnoException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 99
    :cond_9
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 101
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 103
    return-void

    .line 101
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .registers 3
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTTL()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getTimeToLive()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getTimeToLive()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public join(Ljava/net/InetAddress;)V
    .registers 4
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Llibcore/io/StructGroupReq;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .parameter "addr"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_13

    .line 132
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 133
    .local v0, groupAddr:Ljava/net/InetAddress;
    const/16 v1, 0x13

    invoke-static {v0, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Llibcore/io/StructGroupReq;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 135
    .end local v0           #groupAddr:Ljava/net/InetAddress;
    :cond_13
    return-void
.end method

.method public leave(Ljava/net/InetAddress;)V
    .registers 4
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Llibcore/io/StructGroupReq;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 140
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 6
    .parameter "addr"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_13

    .line 145
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 146
    .local v0, groupAddr:Ljava/net/InetAddress;
    const/16 v1, 0x14

    invoke-static {v0, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Llibcore/io/StructGroupReq;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 148
    .end local v0           #groupAddr:Ljava/net/InetAddress;
    :cond_13
    return-void
.end method

.method protected peek(Ljava/net/InetAddress;)I
    .registers 6
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 154
    .local v0, packet:Ljava/net/DatagramPacket;
    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v1

    .line 156
    .local v1, result:I
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iput-object v2, p1, Ljava/net/InetAddress;->ipaddress:[B

    .line 157
    return v1
.end method

.method public peekData(Ljava/net/DatagramPacket;)I
    .registers 3
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    sget v0, Llibcore/io/OsConstants;->MSG_PEEK:I

    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    .line 175
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .registers 3
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    .line 170
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .registers 9
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_1d

    move v6, v4

    .line 181
    .local v6, port:I
    :goto_6
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_22

    const/4 v5, 0x0

    .line 182
    .local v5, address:Ljava/net/InetAddress;
    :goto_b
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    .line 183
    return-void

    .line 180
    .end local v5           #address:Ljava/net/InetAddress;
    .end local v6           #port:I
    :cond_1d
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    goto :goto_6

    .line 181
    .restart local v6       #port:I
    :cond_22
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    goto :goto_b
.end method

.method public setOption(ILjava/lang/Object;)V
    .registers 4
    .parameter "option"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 187
    return-void
.end method

.method public setTTL(B)V
    .registers 3
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->setTimeToLive(I)V

    .line 197
    return-void
.end method

.method public setTimeToLive(I)V
    .registers 4
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/16 v0, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 192
    return-void
.end method
