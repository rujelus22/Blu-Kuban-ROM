.class public Ljava/net/PlainSocketImpl;
.super Ljava/net/SocketImpl;
.source "PlainSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/PlainSocketImpl$PlainSocketOutputStream;,
        Ljava/net/PlainSocketImpl$PlainSocketInputStream;
    }
.end annotation


# static fields
.field private static lastConnectedAddress:Ljava/net/InetAddress;

.field private static lastConnectedPort:I


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private proxy:Ljava/net/Proxy;

.field private shutdownInput:Z

.field private streaming:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-direct {p0, v0}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 4
    .parameter "fd"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 63
    iput-object p1, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 64
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 65
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 67
    :cond_1b
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V
    .registers 7
    .parameter "fd"
    .parameter "localport"
    .parameter "addr"
    .parameter "port"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 79
    iput-object p1, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 80
    iput p2, p0, Ljava/net/SocketImpl;->localport:I

    .line 81
    iput-object p3, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 82
    iput p4, p0, Ljava/net/SocketImpl;->port:I

    .line 83
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 84
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 86
    :cond_21
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .registers 3
    .parameter "proxy"

    .prologue
    .line 70
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-direct {p0, v0}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    .line 71
    iput-object p1, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    .line 72
    return-void
.end method

.method static synthetic access$000(Ljava/net/PlainSocketImpl;[BII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Ljava/net/PlainSocketImpl;->read([BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/net/PlainSocketImpl;[BII)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Ljava/net/PlainSocketImpl;->write([BII)V

    return-void
.end method

.method private checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_10

    .line 134
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_10
    return-void
.end method

.method private connect(Ljava/net/InetAddress;II)V
    .registers 6
    .parameter "anAddr"
    .parameter "aPort"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 189
    .local v0, normalAddr:Ljava/net/InetAddress;
    :goto_a
    iget-boolean v1, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    if-eqz v1, :cond_1f

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 190
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Ljava/net/PlainSocketImpl;->socksConnect(Ljava/net/InetAddress;II)V

    .line 194
    :goto_18
    iput-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 195
    iput p2, p0, Ljava/net/SocketImpl;->port:I

    .line 196
    return-void

    .end local v0           #normalAddr:Ljava/net/InetAddress;
    :cond_1d
    move-object v0, p1

    .line 188
    goto :goto_a

    .line 192
    .restart local v0       #normalAddr:Ljava/net/InetAddress;
    :cond_1f
    iget-object v1, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, v0, p2, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z

    goto :goto_18
.end method

.method private read([BII)I
    .registers 14
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 481
    if-nez p3, :cond_6

    .line 497
    :goto_5
    return v5

    .line 484
    :cond_6
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 485
    iget-boolean v1, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    if-eqz v1, :cond_10

    move v5, v9

    .line 486
    goto :goto_5

    .line 488
    :cond_10
    iget-object v1, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v7, v5

    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    move-result v8

    .line 490
    .local v8, readCount:I
    if-nez v8, :cond_23

    .line 491
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0

    .line 494
    :cond_23
    if-ne v8, v9, :cond_27

    .line 495
    iput-boolean v0, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    :cond_27
    move v5, v8

    .line 497
    goto :goto_5
.end method

.method private socksBind()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    :try_start_0
    iget-object v3, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v5

    invoke-static {v3, v4, v5}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_19

    .line 395
    sget-object v3, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    if-nez v3, :cond_22

    .line 396
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Invalid SOCKS client"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 390
    :catch_19
    move-exception v0

    .line 391
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to connect to SOCKS server"

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 400
    .end local v0           #e:Ljava/lang/Exception;
    :cond_22
    const/4 v3, 0x2

    sget-object v4, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    sget v5, Ljava/net/PlainSocketImpl;->lastConnectedPort:I

    invoke-direct {p0, v3, v4, v5}, Ljava/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 402
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    move-result-object v1

    .line 404
    .local v1, reply:Ljava/net/Socks4Message;
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_44

    .line 405
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    :cond_44
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getIP()I

    move-result v3

    if-nez v3, :cond_57

    .line 411
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 420
    :goto_50
    invoke-virtual {v1}, Ljava/net/Socks4Message;->getPort()I

    move-result v3

    iput v3, p0, Ljava/net/SocketImpl;->localport:I

    .line 421
    return-void

    .line 416
    :cond_57
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 417
    .local v2, replyBytes:[B
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/net/Socks4Message;->getIP()I

    move-result v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v3, v4, v5}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 418
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    goto :goto_50
.end method

.method private socksConnect(Ljava/net/InetAddress;II)V
    .registers 8
    .parameter "applicationServerAddress"
    .parameter "applicationServerPort"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    :try_start_0
    iget-object v1, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksGetServerPort()I

    move-result v3

    invoke-static {v1, v2, v3, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_15

    .line 329
    invoke-direct {p0, p1, p2}, Ljava/net/PlainSocketImpl;->socksRequestConnection(Ljava/net/InetAddress;I)V

    .line 331
    sput-object p1, Ljava/net/PlainSocketImpl;->lastConnectedAddress:Ljava/net/InetAddress;

    .line 332
    sput p2, Ljava/net/PlainSocketImpl;->lastConnectedPort:I

    .line 333
    return-void

    .line 325
    :catch_15
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "SOCKS connection failed"

    invoke-direct {v1, v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private socksGetServerAddress()Ljava/net/InetAddress;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v2, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 312
    .local v0, addr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, proxyName:Ljava/lang/String;
    if-nez v1, :cond_16

    .line 314
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 316
    :cond_16
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private socksGetServerPort()I
    .registers 3

    .prologue
    .line 299
    iget-object v1, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 300
    .local v0, addr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method private socksReadReply()Ljava/net/Socks4Message;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 440
    new-instance v2, Ljava/net/Socks4Message;

    invoke-direct {v2}, Ljava/net/Socks4Message;-><init>()V

    .line 441
    .local v2, reply:Ljava/net/Socks4Message;
    const/4 v0, 0x0

    .line 442
    .local v0, bytesRead:I
    :goto_8
    if-ge v0, v6, :cond_1b

    .line 443
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/Socks4Message;->getBytes()[B

    move-result-object v4

    rsub-int/lit8 v5, v0, 0x8

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 445
    .local v1, count:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_25

    .line 450
    .end local v1           #count:I
    :cond_1b
    if-eq v6, v0, :cond_27

    .line 451
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Malformed reply from SOCKS server"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 448
    .restart local v1       #count:I
    :cond_25
    add-int/2addr v0, v1

    .line 449
    goto :goto_8

    .line 453
    .end local v1           #count:I
    :cond_27
    return-object v2
.end method

.method private socksRequestConnection(Ljava/net/InetAddress;I)V
    .registers 6
    .parameter "applicationServerAddress"
    .parameter "applicationServerPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Ljava/net/PlainSocketImpl;->socksSendRequest(ILjava/net/InetAddress;I)V

    .line 343
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    move-result-object v0

    .line 344
    .local v0, reply:Ljava/net/Socks4Message;
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1e

    .line 345
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_1e
    return-void
.end method

.method private socksSendRequest(ILjava/net/InetAddress;I)V
    .registers 9
    .parameter "command"
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/net/Socks4Message;

    invoke-direct {v0}, Ljava/net/Socks4Message;-><init>()V

    .line 428
    .local v0, request:Ljava/net/Socks4Message;
    invoke-virtual {v0, p1}, Ljava/net/Socks4Message;->setCommandOrResult(I)V

    .line 429
    invoke-virtual {v0, p3}, Ljava/net/Socks4Message;->setPort(I)V

    .line 430
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/Socks4Message;->setIP([B)V

    .line 431
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/net/Socks4Message;->setUserId(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getLength()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 434
    return-void
.end method

.method private usingSocks()Z
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljava/net/PlainSocketImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private write([BII)V
    .registers 12
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 504
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 505
    iget-boolean v0, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    if-eqz v0, :cond_19

    .line 506
    :goto_9
    if-lez p3, :cond_25

    .line 507
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, v4

    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    move-result v7

    .line 508
    .local v7, bytesWritten:I
    sub-int/2addr p3, v7

    .line 509
    add-int/2addr p2, v7

    .line 510
    goto :goto_9

    .line 515
    .end local v7           #bytesWritten:I
    :cond_19
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v5, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    iget v6, p0, Ljava/net/SocketImpl;->port:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    .line 517
    :cond_25
    return-void
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .registers 7
    .parameter "newImpl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    move-result v3

    if-eqz v3, :cond_12

    move-object v3, p1

    .line 91
    check-cast v3, Ljava/net/PlainSocketImpl;

    invoke-direct {v3}, Ljava/net/PlainSocketImpl;->socksBind()V

    .line 92
    check-cast p1, Ljava/net/PlainSocketImpl;

    .end local p1
    invoke-virtual {p1}, Ljava/net/PlainSocketImpl;->socksAccept()V

    .line 117
    :goto_11
    return-void

    .line 97
    .restart local p1
    :cond_12
    :try_start_12
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V

    .line 98
    .local v2, peerAddress:Ljava/net/InetSocketAddress;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, v2}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 102
    .local v0, clientFd:Ljava/io/FileDescriptor;
    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 104
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p1, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 105
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p1, Ljava/net/SocketImpl;->port:I
    :try_end_34
    .catch Llibcore/io/ErrnoException; {:try_start_12 .. :try_end_34} :catch_47

    .line 114
    const/16 v3, 0x1006

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 116
    iget-object v3, p1, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v3

    iput v3, p1, Ljava/net/SocketImpl;->localport:I

    goto :goto_11

    .line 106
    .end local v0           #clientFd:Ljava/io/FileDescriptor;
    .end local v2           #peerAddress:Ljava/net/InetSocketAddress;
    :catch_47
    move-exception v1

    .line 107
    .local v1, errnoException:Llibcore/io/ErrnoException;
    iget v3, v1, Llibcore/io/ErrnoException;->errno:I

    sget v4, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v3, v4, :cond_54

    iget v3, v1, Llibcore/io/ErrnoException;->errno:I

    sget v4, Llibcore/io/OsConstants;->EWOULDBLOCK:I

    if-ne v3, v4, :cond_5a

    .line 108
    :cond_54
    new-instance v3, Ljava/net/SocketTimeoutException;

    invoke-direct {v3, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 110
    :cond_5a
    invoke-virtual {v1}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v3

    throw v3
.end method

.method protected declared-synchronized available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    .line 143
    iget-boolean v0, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    if-eqz v0, :cond_b

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->available(Ljava/io/FileDescriptor;)I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_9

    .line 140
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .registers 4
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 151
    iput-object p1, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 152
    if-eqz p2, :cond_c

    .line 153
    iput p2, p0, Ljava/net/SocketImpl;->localport:I

    .line 157
    :goto_b
    return-void

    .line 155
    :cond_c
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Ljava/net/SocketImpl;->localport:I

    goto :goto_b
.end method

.method protected declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 162
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 163
    monitor-exit p0

    return-void

    .line 161
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected connect(Ljava/lang/String;I)V
    .registers 4
    .parameter "aHost"
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 168
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .registers 4
    .parameter "anAddr"
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 173
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .registers 6
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 459
    .local v0, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/InetAddress;II)V

    .line 460
    return-void
.end method

.method protected create(Z)V
    .registers 3
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iput-boolean p1, p0, Ljava/net/PlainSocketImpl;->streaming:Z

    .line 201
    invoke-static {p1}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 202
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 207
    iget-object v0, p0, Ljava/net/PlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 209
    :cond_9
    invoke-virtual {p0}, Ljava/net/PlainSocketImpl;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 211
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 213
    return-void

    .line 211
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected declared-synchronized getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    .line 217
    new-instance v0, Ljava/net/PlainSocketImpl$PlainSocketInputStream;

    invoke-direct {v0, p0}, Ljava/net/PlainSocketImpl$PlainSocketInputStream;-><init>(Ljava/net/PlainSocketImpl;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 216
    :catchall_b
    move-exception v0

    monitor-exit p0

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
    .line 245
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->checkNotClosed()V

    .line 250
    new-instance v0, Ljava/net/PlainSocketImpl$PlainSocketOutputStream;

    invoke-direct {v0, p0}, Ljava/net/PlainSocketImpl$PlainSocketOutputStream;-><init>(Ljava/net/PlainSocketImpl;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 249
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initLocalPort(I)V
    .registers 2
    .parameter "localPort"

    .prologue
    .line 124
    iput p1, p0, Ljava/net/SocketImpl;->localport:I

    .line 125
    return-void
.end method

.method public initRemoteAddressAndPort(Ljava/net/InetAddress;I)V
    .registers 3
    .parameter "remoteAddress"
    .parameter "remotePort"

    .prologue
    .line 128
    iput-object p1, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 129
    iput p2, p0, Ljava/net/SocketImpl;->port:I

    .line 130
    return-void
.end method

.method protected listen(I)V
    .registers 5
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->usingSocks()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 285
    :goto_6
    return-void

    .line 281
    :cond_7
    :try_start_7
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V
    :try_end_e
    .catch Llibcore/io/ErrnoException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 282
    :catch_f
    move-exception v0

    .line 283
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method protected sendUrgentData(I)V
    .registers 11
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [B

    const/4 v0, 0x0

    int-to-byte v1, p1

    aput-byte v1, v2, v0

    .line 471
    .local v2, buffer:[B
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget v5, Llibcore/io/OsConstants;->MSG_OOB:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_14
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_14} :catch_15

    .line 475
    return-void

    .line 472
    .end local v2           #buffer:[B
    :catch_15
    move-exception v8

    .line 473
    .local v8, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v8}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
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
    .line 289
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    .line 290
    return-void
.end method

.method protected shutdownInput()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/PlainSocketImpl;->shutdownInput:Z

    .line 366
    :try_start_3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Llibcore/io/OsConstants;->SHUT_RD:I

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_c
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_c} :catch_d

    .line 370
    return-void

    .line 367
    :catch_d
    move-exception v0

    .line 368
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method protected shutdownOutput()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Llibcore/io/OsConstants;->SHUT_WR:I

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V
    :try_end_9
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_9} :catch_a

    .line 382
    return-void

    .line 379
    :catch_a
    move-exception v0

    .line 380
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method public socksAccept()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;->socksReadReply()Ljava/net/Socks4Message;

    move-result-object v0

    .line 354
    .local v0, reply:Ljava/net/Socks4Message;
    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1a

    .line 355
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/Socks4Message;->getCommandOrResult()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/Socks4Message;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_1a
    return-void
.end method

.method protected supportsUrgentData()Z
    .registers 2

    .prologue
    .line 464
    const/4 v0, 0x1

    return v0
.end method
