.class Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
.super Ljava/lang/Object;
.source "DefaultTcpTransportMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/transport/DefaultTcpTransportMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketEntry"
.end annotation


# instance fields
.field private lastUse:J

.field private message:Ljava/util/LinkedList;

.field private peerAddress:Lorg/snmp4j/smi/TcpAddress;

.field private readBuffer:Ljava/nio/ByteBuffer;

.field private volatile registrations:I

.field private socket:Ljava/net/Socket;

.field private final this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;


# direct methods
.method public constructor <init>(Lorg/snmp4j/transport/DefaultTcpTransportMapping;Lorg/snmp4j/smi/TcpAddress;Ljava/net/Socket;)V
    .registers 6
    .parameter
    .parameter "address"
    .parameter "socket"

    .prologue
    .line 404
    iput-object p1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->message:Ljava/util/LinkedList;

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->readBuffer:Ljava/nio/ByteBuffer;

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->registrations:I

    .line 405
    iput-object p2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->peerAddress:Lorg/snmp4j/smi/TcpAddress;

    .line 406
    iput-object p3, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->socket:Ljava/net/Socket;

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->lastUse:J

    .line 408
    return-void
.end method


# virtual methods
.method public declared-synchronized addMessage([B)V
    .registers 3
    .parameter "message"

    .prologue
    .line 458
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->message:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 459
    monitor-exit p0

    return-void

    .line 458
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRegistration(Ljava/nio/channels/Selector;I)V
    .registers 6
    .parameter "selector"
    .parameter "opKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 413
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->registrations:I

    and-int/2addr v0, p2

    if-nez v0, :cond_4a

    .line 414
    iget v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->registrations:I

    or-int/2addr v0, p2

    iput v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->registrations:I

    .line 415
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 416
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Adding operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 418
    :cond_3d
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->registrations:I

    invoke-virtual {v0, p1, v1, p0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_94

    .line 427
    :cond_48
    :goto_48
    monitor-exit p0

    return-void

    .line 420
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_48

    .line 421
    iput p2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->registrations:I

    .line 422
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 423
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Registering new operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 425
    :cond_8a
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_93
    .catchall {:try_start_4a .. :try_end_93} :catchall_94

    goto :goto_48

    .line 413
    :catchall_94
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastUse()J
    .registers 3

    .prologue
    .line 442
    iget-wide v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->lastUse:J

    return-wide v0
.end method

.method public getPeerAddress()Lorg/snmp4j/smi/TcpAddress;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->peerAddress:Lorg/snmp4j/smi/TcpAddress;

    return-object v0
.end method

.method public getReadBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->readBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public declared-synchronized hasMessage()Z
    .registers 2

    .prologue
    .line 469
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->message:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRegistered(I)Z
    .registers 3
    .parameter "opKey"

    .prologue
    .line 438
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->registrations:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

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

.method public declared-synchronized nextMessage()[B
    .registers 2

    .prologue
    .line 462
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->message:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 463
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->message:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    .line 465
    :goto_13
    monitor-exit p0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13

    .line 462
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRegistration(Ljava/nio/channels/Selector;I)V
    .registers 5
    .parameter "selector"
    .parameter "opKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 431
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->registrations:I

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_18

    .line 432
    iget v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->registrations:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->registrations:I

    .line 433
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->registrations:I

    invoke-virtual {v0, p1, v1, p0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 435
    :cond_18
    monitor-exit p0

    return-void

    .line 431
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setReadBuffer(Ljava/nio/ByteBuffer;)V
    .registers 2
    .parameter "byteBuffer"

    .prologue
    .line 473
    iput-object p1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->readBuffer:Ljava/nio/ByteBuffer;

    .line 474
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SocketEntry[peerAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->peerAddress:Lorg/snmp4j/smi/TcpAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",socket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",lastUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->lastUse:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public used()V
    .registers 3

    .prologue
    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->lastUse:J

    .line 447
    return-void
.end method
