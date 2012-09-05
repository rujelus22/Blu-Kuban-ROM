.class Ljava/nio/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/SocketChannelImpl$SocketChannelInputStream;,
        Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;,
        Ljava/nio/SocketChannelImpl$SocketAdapter;
    }
.end annotation


# static fields
.field private static final SOCKET_STATUS_CLOSED:I = 0x3

.field private static final SOCKET_STATUS_CONNECTED:I = 0x2

.field private static final SOCKET_STATUS_PENDING:I = 0x1

.field private static final SOCKET_STATUS_UNCONNECTED:I = 0x0

.field private static final SOCKET_STATUS_UNINITIALIZED:I = -0x1


# instance fields
.field private connectAddress:Ljava/net/InetSocketAddress;

.field private final fd:Ljava/io/FileDescriptor;

.field private volatile isBound:Z

.field private localAddress:Ljava/net/InetAddress;

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

.field private status:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .parameter "selectorProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Z)V
    .registers 5
    .parameter "selectorProvider"
    .parameter "connect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 72
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    .line 75
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 77
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 83
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 101
    iput v1, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 102
    if-eqz p2, :cond_2a

    const/4 v0, 0x1

    invoke-static {v0}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_27
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 103
    return-void

    .line 102
    :cond_2a
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    goto :goto_27
.end method

.method static synthetic access$000(Ljava/nio/SocketChannelImpl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    return v0
.end method

.method static synthetic access$002(Ljava/nio/SocketChannelImpl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    return p1
.end method

.method static synthetic access$100(Ljava/nio/SocketChannelImpl;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    return-void
.end method

.method static synthetic access$200(Ljava/nio/SocketChannelImpl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    return v0
.end method

.method static synthetic access$202(Ljava/nio/SocketChannelImpl;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Ljava/nio/SocketChannelImpl;->status:I

    return p1
.end method

.method private declared-synchronized checkOpenConnected()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 386
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 387
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 386
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 389
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 390
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_d

    .line 392
    :cond_1c
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized checkUnconnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 399
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 398
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 401
    :cond_10
    :try_start_10
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 402
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 404
    :cond_1b
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 405
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_d

    .line 407
    :cond_26
    monitor-exit p0

    return-void
.end method

.method private initLocalAddressAndPort()V
    .registers 6

    .prologue
    .line 206
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    :try_end_7
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_7} :catch_27

    move-result-object v2

    .local v2, sa:Ljava/net/SocketAddress;
    move-object v1, v2

    .line 210
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 211
    .local v1, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 212
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    .line 213
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v3, :cond_26

    .line 214
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v3}, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl()Ljava/net/PlainSocketImpl;

    move-result-object v3

    iget v4, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-virtual {v3, v4}, Ljava/net/PlainSocketImpl;->initLocalPort(I)V

    .line 216
    :cond_26
    return-void

    .line 207
    .end local v1           #isa:Ljava/net/InetSocketAddress;
    .end local v2           #sa:Ljava/net/SocketAddress;
    :catch_27
    move-exception v0

    .line 208
    .local v0, errnoException:Llibcore/io/ErrnoException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .registers 12
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 299
    iget-object v9, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v9

    .line 300
    const/4 v6, 0x0

    .line 302
    .local v6, readCount:I
    :try_start_6
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 303
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 305
    :cond_f
    const/4 v0, 0x1

    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I

    move-result v6

    .line 306
    if-lez v6, :cond_24

    .line 307
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_33

    .line 310
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 311
    if-lez v6, :cond_31

    :goto_2c
    invoke-virtual {p0, v7}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 314
    :cond_2f
    monitor-exit v9

    return v6

    :cond_31
    move v7, v8

    .line 311
    goto :goto_2c

    .line 310
    :catchall_33
    move-exception v0

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 311
    if-lez v6, :cond_44

    move v1, v7

    :goto_3d
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_40
    throw v0

    .line 315
    :catchall_41
    move-exception v0

    monitor-exit v9
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    move v1, v8

    .line 311
    goto :goto_3d
.end method

.method static validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .registers 3
    .parameter "socketAddress"

    .prologue
    .line 414
    if-nez p0, :cond_8

    .line 415
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 417
    :cond_8
    instance-of v1, p0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_12

    .line 418
    new-instance v1, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v1}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v1

    :cond_12
    move-object v0, p0

    .line 420
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 421
    .local v0, inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 422
    new-instance v1, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v1}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v1

    .line 424
    :cond_21
    return-object v0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .registers 10
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 360
    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 361
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_e

    .line 362
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_38

    move v0, v1

    .line 378
    :goto_d
    return v0

    .line 364
    :cond_e
    const/4 v0, 0x0

    .line 366
    .local v0, writeCount:I
    :try_start_f
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 367
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 369
    :cond_18
    iget-object v2, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, p1, v5, v6, v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v0

    .line 370
    if-lez v0, :cond_2b

    .line 371
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_3d

    .line 374
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 375
    if-ltz v0, :cond_3b

    :goto_33
    invoke-virtual {p0, v3}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 378
    :cond_36
    monitor-exit v4

    goto :goto_d

    .line 379
    .end local v0           #writeCount:I
    :catchall_38
    move-exception v1

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v1

    .restart local v0       #writeCount:I
    :cond_3b
    move v3, v1

    .line 375
    goto :goto_33

    .line 374
    :catchall_3d
    move-exception v2

    :try_start_3e
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 375
    if-ltz v0, :cond_47

    move v1, v3

    :cond_47
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_4a
    throw v2
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_38
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)Z
    .registers 10
    .parameter "socketAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkUnconnected()V

    .line 154
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v2

    .line 155
    .local v2, inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 156
    .local v3, normalAddr:Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 159
    .local v4, port:I
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 160
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    .line 163
    :cond_19
    const/4 v1, 0x0

    .line 165
    .local v1, finished:Z
    :try_start_1a
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 166
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 168
    :cond_23
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5, v3, v4}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z

    move-result v1

    .line 169
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_83
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2b} :catch_60

    .line 181
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 182
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 186
    :cond_34
    :goto_34
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    .line 187
    iput-object v2, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 188
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v5, :cond_52

    .line 189
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v5}, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl()Ljava/net/PlainSocketImpl;

    move-result-object v5

    iget-object v6, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    iget-object v7, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/net/PlainSocketImpl;->initRemoteAddressAndPort(Ljava/net/InetAddress;I)V

    .line 193
    :cond_52
    monitor-enter p0

    .line 194
    :try_start_53
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 195
    if-eqz v1, :cond_8e

    const/4 v5, 0x2

    :goto_5c
    iput v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 199
    :goto_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_94

    .line 200
    return v1

    .line 170
    :catch_60
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    :try_start_61
    instance-of v5, v0, Ljava/net/ConnectException;

    if-eqz v5, :cond_78

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-nez v5, :cond_78

    .line 172
    const/4 v5, 0x1

    iput v5, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_83

    .line 181
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 182
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    goto :goto_34

    .line 174
    :cond_78
    :try_start_78
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 175
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 176
    const/4 v1, 0x1

    .line 178
    :cond_82
    throw v0
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_83

    .line 181
    .end local v0           #e:Ljava/io/IOException;
    :catchall_83
    move-exception v5

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 182
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_8d
    throw v5

    .line 195
    :cond_8e
    const/4 v5, 0x0

    goto :goto_5c

    .line 197
    :cond_90
    const/4 v5, 0x1

    :try_start_91
    iput v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    goto :goto_5e

    .line 199
    :catchall_94
    move-exception v5

    monitor-exit p0
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_94

    throw v5
.end method

.method finishAccept()V
    .registers 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    .line 258
    return-void
.end method

.method public finishConnect()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 220
    monitor-enter p0

    .line 221
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_12

    .line 222
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v4

    .line 230
    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v4

    .line 224
    :cond_12
    :try_start_12
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-ne v5, v4, :cond_18

    .line 225
    monitor-exit p0

    .line 253
    :goto_17
    return v1

    .line 227
    :cond_18
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v5, v1, :cond_22

    .line 228
    new-instance v4, Ljava/nio/channels/NoConnectionPendingException;

    invoke-direct {v4}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    throw v4

    .line 230
    :cond_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_f

    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, finished:Z
    :try_start_24
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    .line 235
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 236
    .local v2, inetAddress:Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 237
    .local v3, port:I
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v2, v3, v6, v7}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z

    move-result v1

    .line 238
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_58
    .catch Ljava/net/ConnectException; {:try_start_24 .. :try_end_3d} :catch_4c

    .line 246
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    .line 249
    monitor-enter p0

    .line 250
    if-eqz v1, :cond_5d

    :goto_43
    :try_start_43
    iput v4, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 251
    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 252
    monitor-exit p0

    goto :goto_17

    :catchall_49
    move-exception v4

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_49

    throw v4

    .line 239
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    .end local v3           #port:I
    :catch_4c
    move-exception v0

    .line 240
    .local v0, e:Ljava/net/ConnectException;
    :try_start_4d
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 241
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 242
    const/4 v1, 0x1

    .line 244
    :cond_57
    throw v0
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_58

    .line 246
    .end local v0           #e:Ljava/net/ConnectException;
    :catchall_58
    move-exception v4

    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    throw v4

    .line 250
    .restart local v2       #inetAddress:Ljava/net/InetAddress;
    .restart local v3       #port:I
    :cond_5d
    :try_start_5d
    iget v4, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_5f
    .catchall {:try_start_5d .. :try_end_5f} :catchall_49

    goto :goto_43
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 431
    iget-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    goto :goto_6
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 439
    monitor-enter p0

    :try_start_2
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v0, v1, :cond_1a

    .line 440
    const/4 v0, 0x3

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    .line 441
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 442
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->close()V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_22

    .line 447
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 444
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_22

    goto :goto_1a

    .line 439
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .registers 4
    .parameter "blocking"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 451
    :try_start_5
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 452
    monitor-exit v1

    .line 453
    return-void

    .line 452
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .registers 3

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnectionPending()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 145
    monitor-enter p0

    :try_start_2
    iget v1, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_a

    if-ne v1, v0, :cond_8

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 263
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 264
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_e

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_d
    return v0

    :cond_e
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_d
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 13
    .parameter "targets"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 273
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 274
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v6

    .line 275
    .local v6, totalCount:I
    if-nez v6, :cond_11

    .line 276
    const-wide/16 v7, 0x0

    .line 295
    :goto_10
    return-wide v7

    .line 278
    :cond_11
    new-array v3, v6, [B

    .line 279
    .local v3, readArray:[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 282
    .local v4, readBuffer:Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 283
    .local v5, readCount:I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 284
    if-lez v5, :cond_39

    .line 285
    move v1, v5

    .line 286
    .local v1, left:I
    move v0, p2

    .line 288
    .local v0, index:I
    :goto_22
    if-lez v1, :cond_39

    .line 289
    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 290
    .local v2, putLength:I
    aget-object v7, p1, v0

    sub-int v8, v5, v1

    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 291
    add-int/lit8 v0, v0, 0x1

    .line 292
    sub-int/2addr v1, v2

    .line 293
    goto :goto_22

    .line 295
    .end local v0           #index:I
    .end local v1           #left:I
    .end local v2           #putLength:I
    :cond_39
    int-to-long v7, v5

    goto :goto_10
.end method

.method setBound(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 140
    iput-boolean p1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    .line 141
    return-void
.end method

.method declared-synchronized setConnected()V
    .registers 2

    .prologue
    .line 136
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 137
    monitor-exit p0

    return-void

    .line 136
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized socket()Ljava/net/Socket;
    .registers 8

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    if-nez v3, :cond_27

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, addr:Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 115
    .local v2, port:I
    :try_start_7
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_17

    .line 116
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 117
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 119
    :cond_17
    new-instance v3, Ljava/nio/SocketChannelImpl$SocketAdapter;

    new-instance v4, Ljava/net/PlainSocketImpl;

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v6, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-direct {v4, v5, v6, v0, v2}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V

    invoke-direct {v3, v4, p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;-><init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V

    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_2e
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_27} :catch_2b

    .line 124
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #port:I
    :cond_27
    :try_start_27
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2e

    :goto_29
    monitor-exit p0

    return-object v3

    .line 120
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v2       #port:I
    :catch_2b
    move-exception v1

    .line 121
    .local v1, e:Ljava/net/SocketException;
    const/4 v3, 0x0

    goto :goto_29

    .line 111
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #e:Ljava/net/SocketException;
    .end local v2           #port:I
    :catchall_2e
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    if-nez p1, :cond_8

    .line 321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 323
    :cond_8
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 324
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_13

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_12
    return v0

    :cond_13
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_12
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 14
    .parameter "sources"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 333
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    .line 334
    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v8}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v0

    .line 335
    .local v0, count:I
    if-nez v0, :cond_11

    .line 336
    const-wide/16 v8, 0x0

    .line 356
    :goto_10
    return-wide v8

    .line 338
    :cond_11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 339
    .local v6, writeBuf:Ljava/nio/ByteBuffer;
    move v5, p2

    .local v5, val:I
    :goto_16
    add-int v8, p3, p2

    if-ge v5, v8, :cond_29

    .line 340
    aget-object v4, p1, v5

    .line 341
    .local v4, source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 342
    .local v2, oldPosition:I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 343
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 345
    .end local v2           #oldPosition:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_29
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 346
    invoke-direct {p0, v6}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 347
    .local v3, result:I
    move v5, p2

    .line 348
    move v7, v3

    .line 349
    .local v7, written:I
    :goto_32
    if-lez v3, :cond_4a

    .line 350
    aget-object v4, p1, v5

    .line 351
    .restart local v4       #source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 352
    .local v1, gap:I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 353
    add-int/lit8 v5, v5, 0x1

    .line 354
    sub-int/2addr v3, v1

    .line 355
    goto :goto_32

    .line 356
    .end local v1           #gap:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_4a
    int-to-long v8, v7

    goto :goto_10
.end method
