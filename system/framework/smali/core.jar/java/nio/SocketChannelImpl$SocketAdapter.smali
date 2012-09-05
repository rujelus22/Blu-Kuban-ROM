.class Ljava/nio/SocketChannelImpl$SocketAdapter;
.super Ljava/net/Socket;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketAdapter"
.end annotation


# instance fields
.field private final channel:Ljava/nio/SocketChannelImpl;

.field private final socketImpl:Ljava/net/PlainSocketImpl;


# direct methods
.method constructor <init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V
    .registers 3
    .parameter "socketImpl"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-direct {p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 471
    iput-object p1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    .line 472
    iput-object p2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    .line 473
    invoke-static {p0}, Ljava/net/SocketUtils;->setCreated(Ljava/net/Socket;)V

    .line 474
    return-void
.end method

.method private checkOpenAndConnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 565
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_10
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_20

    .line 568
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_20
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 4
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 522
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 523
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 525
    :cond_f
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #getter for: Ljava/nio/SocketChannelImpl;->status:I
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$200(Ljava/nio/SocketChannelImpl;)I

    move-result v0

    if-ne v1, v0, :cond_1d

    .line 526
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0

    .line 528
    :cond_1d
    invoke-super {p0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 529
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #calls: Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$100(Ljava/nio/SocketChannelImpl;)V

    .line 530
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #setter for: Ljava/nio/SocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/SocketChannelImpl;->access$002(Ljava/nio/SocketChannelImpl;Z)Z

    .line 531
    return-void
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    monitor-enter v1

    .line 536
    :try_start_3
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 537
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->close()V

    .line 541
    :goto_10
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    const/4 v2, 0x3

    #setter for: Ljava/nio/SocketChannelImpl;->status:I
    invoke-static {v0, v2}, Ljava/nio/SocketChannelImpl;->access$202(Ljava/nio/SocketChannelImpl;I)I

    .line 542
    monitor-exit v1

    .line 543
    return-void

    .line 539
    :cond_18
    invoke-super {p0}, Ljava/net/Socket;->close()V

    goto :goto_10

    .line 542
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .registers 5
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_e

    .line 507
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 509
    :cond_e
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 510
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 512
    :cond_1a
    invoke-super {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 513
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #calls: Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$100(Ljava/nio/SocketChannelImpl;)V

    .line 514
    invoke-super {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 515
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->setConnected()V

    .line 516
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-super {p0}, Ljava/net/Socket;->isBound()Z

    move-result v1

    #setter for: Ljava/nio/SocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/SocketChannelImpl;->access$002(Ljava/nio/SocketChannelImpl;Z)Z

    .line 518
    :cond_36
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/PlainSocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->checkOpenAndConnected()V

    .line 557
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 558
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_11
    new-instance v0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1}, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 498
    :try_start_0
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->getLocalAddress()Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 500
    :goto_6
    return-object v1

    .line 499
    :catch_7
    move-exception v0

    .line 500
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->checkOpenAndConnected()V

    .line 548
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 549
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_11
    new-instance v0, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1}, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #getter for: Ljava/nio/SocketChannelImpl;->isBound:Z
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$000(Ljava/nio/SocketChannelImpl;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method socketImpl()Ljava/net/PlainSocketImpl;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    return-object v0
.end method
