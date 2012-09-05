.class public Ljava/net/DatagramSocket;
.super Ljava/lang/Object;
.source "DatagramSocket.java"


# static fields
.field static factory:Ljava/net/DatagramSocketImplFactory;


# instance fields
.field address:Ljava/net/InetAddress;

.field impl:Ljava/net/DatagramSocketImpl;

.field isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field private lock:Ljava/lang/Object;

.field private pendingConnectException:Ljava/net/SocketException;

.field port:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 45
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 51
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 97
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;->checkPort(I)V

    .line 98
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {p0, p1, v0}, Ljava/net/DatagramSocket;->createSocket(ILjava/net/InetAddress;)V

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/net/InetAddress;)V
    .registers 5
    .parameter "aPort"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 45
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 51
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 114
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;->checkPort(I)V

    .line 115
    if-nez p2, :cond_1b

    sget-object p2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .end local p2
    :cond_1b
    invoke-virtual {p0, p1, p2}, Ljava/net/DatagramSocket;->createSocket(ILjava/net/InetAddress;)V

    .line 116
    return-void
.end method

.method protected constructor <init>(Ljava/net/DatagramSocketImpl;)V
    .registers 4
    .parameter "socketImpl"

    .prologue
    const/4 v1, 0x0

    .line 398
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 45
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 51
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 399
    if-nez p1, :cond_1c

    .line 400
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 402
    :cond_1c
    iput-object p1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 403
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .registers 6
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Ljava/net/DatagramSocket;->port:I

    .line 45
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 47
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 51
    iput-boolean v2, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 53
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 418
    if-eqz p1, :cond_41

    .line 419
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_37

    .line 420
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local address not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    move-object v1, p1

    .line 423
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/net/DatagramSocket;->checkPort(I)V

    .line 425
    :cond_41
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_5c

    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    :goto_4b
    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 427
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V

    .line 428
    if-eqz p1, :cond_57

    .line 430
    :try_start_54
    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_57
    .catch Ljava/net/SocketException; {:try_start_54 .. :try_end_57} :catch_62

    .line 437
    :cond_57
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 438
    return-void

    .line 425
    :cond_5c
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    invoke-direct {v1}, Ljava/net/PlainDatagramSocketImpl;-><init>()V

    goto :goto_4b

    .line 431
    :catch_62
    move-exception v0

    .line 432
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 433
    throw v0
.end method

.method public constructor <init>(Z)V
    .registers 4
    .parameter "toBind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 45
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 47
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 51
    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    .line 66
    if-eqz p1, :cond_1f

    .line 67
    invoke-direct {p0, v1}, Ljava/net/DatagramSocket;->checkPort(I)V

    .line 68
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {p0, v1, v0}, Ljava/net/DatagramSocket;->createSocket(ILjava/net/InetAddress;)V

    .line 73
    :goto_1e
    return-void

    .line 70
    :cond_1f
    sget-object v0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v0, :cond_31

    sget-object v0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v0}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    :goto_29
    iput-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 71
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->create()V

    goto :goto_1e

    .line 70
    :cond_31
    new-instance v0, Ljava/net/PlainDatagramSocketImpl;

    invoke-direct {v0}, Ljava/net/PlainDatagramSocketImpl;-><init>()V

    goto :goto_29
.end method

.method private checkPort(I)V
    .registers 5
    .parameter "aPort"

    .prologue
    .line 119
    if-ltz p1, :cond_7

    const v0, 0xffff

    if-le p1, v0, :cond_20

    .line 120
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_20
    return-void
.end method

.method private ensureBound()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_11

    .line 448
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 451
    :cond_11
    return-void
.end method

.method public static declared-synchronized setDatagramSocketImplFactory(Ljava/net/DatagramSocketImplFactory;)V
    .registers 4
    .parameter "fac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    const-class v1, Ljava/net/DatagramSocket;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v0, :cond_12

    .line 385
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 384
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 387
    :cond_12
    :try_start_12
    sput-object p0, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    .line 388
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 8
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 468
    const/4 v2, 0x0

    .line 469
    .local v2, localPort:I
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 470
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz p1, :cond_56

    .line 471
    instance-of v3, p1, Ljava/net/InetSocketAddress;

    if-nez v3, :cond_29

    .line 472
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local address not an InetSocketAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_29
    move-object v1, p1

    .line 475
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 476
    .local v1, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 477
    if-nez v0, :cond_4f

    .line 478
    new-instance v3, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Host is unresolved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 480
    :cond_4f
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 481
    invoke-direct {p0, v2}, Ljava/net/DatagramSocket;->checkPort(I)V

    .line 483
    .end local v1           #inetAddr:Ljava/net/InetSocketAddress;
    :cond_56
    iget-object v3, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v3, v2, v0}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 484
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/net/DatagramSocket;->isBound:Z

    .line 485
    return-void
.end method

.method checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 442
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_e
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    .line 131
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->close()V

    .line 132
    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .registers 6
    .parameter "address"
    .parameter "port"

    .prologue
    .line 529
    if-nez p1, :cond_a

    .line 530
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "address == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_a
    :try_start_a
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_12
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_12} :catch_13

    .line 538
    :goto_12
    return-void

    .line 534
    :catch_13
    move-exception v0

    .line 536
    .local v0, connectException:Ljava/net/SocketException;
    iput-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    goto :goto_12
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .registers 7
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 495
    if-nez p1, :cond_a

    .line 496
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "peer == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_a
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_2b

    .line 500
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "peer not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    move-object v0, p1

    .line 503
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 504
    .local v0, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_51

    .line 505
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host is unresolved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_51
    iget-object v2, p0, Ljava/net/DatagramSocket;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 509
    :try_start_54
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 510
    invoke-direct {p0}, Ljava/net/DatagramSocket;->ensureBound()V

    .line 512
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 513
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    iput v1, p0, Ljava/net/DatagramSocket;->port:I

    .line 514
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isConnected:Z

    .line 516
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v3, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    iget v4, p0, Ljava/net/DatagramSocket;->port:I

    invoke-virtual {v1, v3, v4}, Ljava/net/DatagramSocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 517
    monitor-exit v2

    .line 518
    return-void

    .line 517
    :catchall_74
    move-exception v1

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_54 .. :try_end_76} :catchall_74

    throw v1
.end method

.method declared-synchronized createSocket(ILjava/net/InetAddress;)V
    .registers 5
    .parameter "aPort"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_1c

    sget-object v1, Ljava/net/DatagramSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    :goto_b
    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 151
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_22

    .line 153
    :try_start_12
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_22
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_1a} :catch_25

    .line 159
    monitor-exit p0

    return-void

    .line 149
    :cond_1c
    :try_start_1c
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    invoke-direct {v1}, Ljava/net/PlainDatagramSocketImpl;-><init>()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_22

    goto :goto_b

    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1

    .line 155
    :catch_25
    move-exception v0

    .line 156
    .local v0, e:Ljava/net/SocketException;
    :try_start_26
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 157
    throw v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_22
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 146
    :cond_c
    :goto_c
    return-void

    .line 142
    :cond_d
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->disconnect()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramSocket;->port:I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    goto :goto_c
.end method

.method public getBroadcast()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 628
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .prologue
    .line 673
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v0, v0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 181
    const/4 v0, 0x0

    .line 186
    :goto_7
    return-object v0

    .line 183
    :cond_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_11

    .line 184
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    goto :goto_7

    .line 186
    :cond_11
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_7
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 197
    const/4 v0, -0x1

    .line 202
    :goto_7
    return v0

    .line 199
    :cond_8
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_10

    .line 200
    const/4 v0, 0x0

    goto :goto_7

    .line 202
    :cond_10
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_7
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 569
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 570
    const/4 v0, 0x0

    .line 572
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 212
    iget v0, p0, Ljava/net/DatagramSocket;->port:I

    return v0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 229
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit p0

    return v0

    .line 228
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 559
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 560
    const/4 v0, 0x0

    .line 562
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_7
.end method

.method public getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 602
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 237
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit p0

    return v0

    .line 236
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 248
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit p0

    return v0

    .line 247
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 653
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 544
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 662
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isClosed:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 551
    iget-boolean v0, p0, Ljava/net/DatagramSocket;->isConnected:Z

    return v0
.end method

.method isMulticastSocket()Z
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .registers 5
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 265
    invoke-direct {p0}, Ljava/net/DatagramSocket;->ensureBound()V

    .line 266
    if-nez p1, :cond_12

    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 264
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    :cond_12
    :try_start_12
    iget-object v0, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    if-eqz v0, :cond_20

    .line 270
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Pending connect failure"

    iget-object v2, p0, Ljava/net/DatagramSocket;->pendingConnectException:Ljava/net/SocketException;

    invoke-direct {v0, v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 273
    :cond_20
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getCapacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 274
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_f

    .line 277
    monitor-exit p0

    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .registers 5
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 289
    invoke-direct {p0}, Ljava/net/DatagramSocket;->ensureBound()V

    .line 291
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 292
    .local v0, packAddr:Ljava/net/InetAddress;
    iget-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    if-eqz v1, :cond_38

    .line 293
    if-eqz v0, :cond_28

    .line 294
    iget-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget v1, p0, Ljava/net/DatagramSocket;->port:I

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    if-eq v1, v2, :cond_32

    .line 295
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Packet address mismatch with connected address"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_28
    iget-object v1, p0, Ljava/net/DatagramSocket;->address:Ljava/net/InetAddress;

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 299
    iget v1, p0, Ljava/net/DatagramSocket;->port:I

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 307
    :cond_32
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    .line 308
    return-void

    .line 303
    :cond_38
    if-nez v0, :cond_32

    .line 304
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Destination address is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBroadcast(Z)V
    .registers 5
    .parameter "broadcast"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 616
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x20

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 617
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .registers 8
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 320
    if-nez p1, :cond_a

    .line 321
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "networkInterface == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_a
    :try_start_a
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v2, v2, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v4, Llibcore/io/OsConstants;->SO_BINDTODEVICE:I

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    :try_end_1b
    .catch Llibcore/io/ErrnoException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 328
    return-void

    .line 325
    :catch_1c
    move-exception v0

    .line 326
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 345
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_f

    .line 346
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c

    .line 345
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 348
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 349
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_c

    .line 350
    monitor-exit p0

    return-void
.end method

.method public setReuseAddress(Z)V
    .registers 5
    .parameter "reuse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 590
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 591
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 334
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_f

    .line 335
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c

    .line 334
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 337
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 338
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_c

    .line 339
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .registers 5
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 364
    monitor-enter p0

    if-gez p1, :cond_e

    .line 365
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 364
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 367
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 368
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_b

    .line 369
    monitor-exit p0

    return-void
.end method

.method public setTrafficClass(I)V
    .registers 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->checkOpen()V

    .line 639
    if-ltz p1, :cond_9

    const/16 v0, 0xff

    if-le p1, v0, :cond_f

    .line 640
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 642
    :cond_f
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 643
    return-void
.end method
