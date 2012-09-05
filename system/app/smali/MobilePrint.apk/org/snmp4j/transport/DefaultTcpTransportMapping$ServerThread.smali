.class Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;
.super Ljava/lang/Object;
.source "DefaultTcpTransportMapping.java"

# interfaces
.implements Lorg/snmp4j/util/WorkerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/transport/DefaultTcpTransportMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field private buf:[B

.field private lastError:Ljava/lang/Throwable;

.field private pending:Ljava/util/LinkedList;

.field private selector:Ljava/nio/channels/Selector;

.field private ssc:Ljava/nio/channels/ServerSocketChannel;

.field private volatile stop:Z

.field private final this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;


# direct methods
.method public constructor <init>(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 574
    iput-object p1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-boolean v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->stop:Z

    .line 568
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->lastError:Ljava/lang/Throwable;

    .line 572
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    .line 575
    invoke-virtual {p1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->getMaxInboundMessageSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->buf:[B

    .line 577
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    iput-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    .line 579
    invoke-static {p1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$400(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 581
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->ssc:Ljava/nio/channels/ServerSocketChannel;

    .line 582
    iget-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->ssc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 585
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p1, Lorg/snmp4j/transport/TcpTransportMapping;->tcpAddress:Lorg/snmp4j/smi/TcpAddress;

    invoke-virtual {v1}, Lorg/snmp4j/smi/TcpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p1, Lorg/snmp4j/transport/TcpTransportMapping;->tcpAddress:Lorg/snmp4j/smi/TcpAddress;

    invoke-virtual {v2}, Lorg/snmp4j/smi/TcpAddress;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 587
    .local v0, isa:Ljava/net/InetSocketAddress;
    iget-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->ssc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->setSocketOptions(Ljava/net/ServerSocket;)V

    .line 588
    iget-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->ssc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 593
    iget-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->ssc:Ljava/nio/channels/ServerSocketChannel;

    iget-object v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 595
    .end local v0           #isa:Ljava/net/InetSocketAddress;
    :cond_5d
    return-void
.end method

.method private closeChannel(Ljava/nio/channels/SelectableChannel;)V
    .registers 4
    .parameter "channel"

    .prologue
    .line 917
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 922
    :goto_3
    return-void

    .line 919
    :catch_4
    move-exception v0

    .line 920
    .local v0, channelCloseException:Ljava/io/IOException;
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private connectChannel(Ljava/nio/channels/SelectionKey;Lorg/snmp4j/smi/TcpAddress;)V
    .registers 11
    .parameter "sk"
    .parameter "incomingAddress"

    .prologue
    .line 843
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    .line 845
    .local v2, entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    :try_start_6
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SocketChannel;

    .line 846
    .local v4, sc:Ljava/nio/channels/SocketChannel;
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v5

    if-nez v5, :cond_4c

    .line 847
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 848
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 849
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Connected to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getPeerAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 852
    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v5, v2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$500(Lorg/snmp4j/transport/DefaultTcpTransportMapping;Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;)V

    .line 853
    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    const/16 v6, 0x8

    invoke-virtual {v2, v5, v6}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->removeRegistration(Ljava/nio/channels/Selector;I)V

    .line 854
    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->addRegistration(Ljava/nio/channels/Selector;I)V

    .line 860
    :cond_4c
    :goto_4c
    if-eqz v2, :cond_7c

    .line 861
    if-nez p2, :cond_7f

    invoke-virtual {v2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getPeerAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v0

    .line 863
    .local v0, addr:Lorg/snmp4j/smi/Address;
    :goto_54
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Fire connected event for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 864
    new-instance v1, Lorg/snmp4j/transport/TransportStateEvent;

    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v1, v5, v0, v6, v7}, Lorg/snmp4j/transport/TransportStateEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;ILjava/io/IOException;)V

    .line 870
    .local v1, e:Lorg/snmp4j/transport/TransportStateEvent;
    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v5, v1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->fireConnectionStateChanged(Lorg/snmp4j/transport/TransportStateEvent;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_7c} :catch_81

    .line 881
    .end local v0           #addr:Lorg/snmp4j/smi/Address;
    .end local v1           #e:Lorg/snmp4j/transport/TransportStateEvent;
    .end local v4           #sc:Ljava/nio/channels/SocketChannel;
    :cond_7c
    :goto_7c
    return-void

    .line 857
    .restart local v4       #sc:Ljava/nio/channels/SocketChannel;
    :cond_7d
    const/4 v2, 0x0

    goto :goto_4c

    :cond_7f
    move-object v0, p2

    .line 861
    goto :goto_54

    .line 873
    .end local v4           #sc:Ljava/nio/channels/SocketChannel;
    :catch_81
    move-exception v3

    .line 874
    .local v3, iox:Ljava/io/IOException;
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 875
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 876
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->closeChannel(Ljava/nio/channels/SelectableChannel;)V

    .line 877
    if-eqz v2, :cond_7c

    .line 878
    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_7c
.end method

.method private dispatchMessage(Lorg/snmp4j/smi/TcpAddress;Ljava/nio/ByteBuffer;J)V
    .registers 13
    .parameter "incomingAddress"
    .parameter "byteBuffer"
    .parameter "bytesRead"

    .prologue
    const/4 v7, 0x0

    .line 1027
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1028
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    invoke-interface {v2}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1029
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Received message from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " with length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Lorg/snmp4j/smi/OctetString;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    long-to-int v6, p3

    invoke-direct {v4, v5, v7, v6}, Lorg/snmp4j/smi/OctetString;-><init>([BII)V

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1035
    :cond_4a
    iget-object v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->isAsyncMsgProcessingSupported()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1036
    long-to-int v2, p3

    new-array v1, v2, [B

    .line 1037
    .local v1, bytes:[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    long-to-int v3, p3

    invoke-static {v2, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1038
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1044
    .end local v1           #bytes:[B
    .local v0, bis:Ljava/nio/ByteBuffer;
    :goto_61
    iget-object v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v2, p1, v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->fireProcessMessage(Lorg/snmp4j/smi/Address;Ljava/nio/ByteBuffer;)V

    .line 1045
    return-void

    .line 1041
    .end local v0           #bis:Ljava/nio/ByteBuffer;
    :cond_67
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    long-to-int v3, p3

    invoke-static {v2, v7, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0       #bis:Ljava/nio/ByteBuffer;
    goto :goto_61
.end method

.method private processPending()V
    .registers 12

    .prologue
    .line 598
    iget-object v7, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    monitor-enter v7

    .line 599
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    :try_start_4
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v4, v6, :cond_a6

    .line 600
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_63

    .line 607
    .local v2, entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    :try_start_14
    invoke-virtual {v2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 608
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    const/4 v8, 0x4

    invoke-virtual {v2, v6, v8}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->addRegistration(Ljava/nio/channels/Selector;I)V

    .line 599
    :cond_24
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 611
    :cond_27
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    const/16 v8, 0x8

    invoke-virtual {v2, v6, v8}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->addRegistration(Ljava/nio/channels/Selector;I)V
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_63
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_14 .. :try_end_2e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2e} :catch_66

    goto :goto_24

    .line 614
    :catch_2f
    move-exception v0

    .line 615
    .local v0, ckex:Ljava/nio/channels/CancelledKeyException;
    :try_start_30
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    invoke-interface {v6, v0}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 616
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_63

    .line 618
    :try_start_3c
    invoke-virtual {v2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->close()V

    .line 619
    new-instance v1, Lorg/snmp4j/transport/TransportStateEvent;

    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getPeerAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v8

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-direct {v1, v6, v8, v9, v10}, Lorg/snmp4j/transport/TransportStateEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;ILjava/io/IOException;)V

    .line 624
    .local v1, e:Lorg/snmp4j/transport/TransportStateEvent;
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v6, v1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->fireConnectionStateChanged(Lorg/snmp4j/transport/TransportStateEvent;)V
    :try_end_59
    .catchall {:try_start_3c .. :try_end_59} :catchall_63
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_59} :catch_5a

    goto :goto_24

    .line 626
    .end local v1           #e:Lorg/snmp4j/transport/TransportStateEvent;
    :catch_5a
    move-exception v3

    .line 627
    .local v3, ex:Ljava/io/IOException;
    :try_start_5b
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    invoke-interface {v6, v3}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    goto :goto_24

    .line 653
    .end local v0           #ckex:Ljava/nio/channels/CancelledKeyException;
    .end local v2           #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_63
    move-exception v6

    monitor-exit v7
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_63

    throw v6

    .line 630
    .restart local v2       #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    :catch_66
    move-exception v5

    .line 631
    .local v5, iox:Ljava/io/IOException;
    :try_start_67
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 632
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_63

    .line 636
    :try_start_73
    invoke-virtual {v2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->close()V

    .line 637
    new-instance v1, Lorg/snmp4j/transport/TransportStateEvent;

    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getPeerAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v8

    const/4 v9, 0x4

    invoke-direct {v1, v6, v8, v9, v5}, Lorg/snmp4j/transport/TransportStateEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;ILjava/io/IOException;)V

    .line 642
    .restart local v1       #e:Lorg/snmp4j/transport/TransportStateEvent;
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v6, v1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->fireConnectionStateChanged(Lorg/snmp4j/transport/TransportStateEvent;)V
    :try_end_8f
    .catchall {:try_start_73 .. :try_end_8f} :catchall_63
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_8f} :catch_9d

    .line 647
    .end local v1           #e:Lorg/snmp4j/transport/TransportStateEvent;
    :goto_8f
    :try_start_8f
    iput-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->lastError:Ljava/lang/Throwable;

    .line 648
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->isFowardRuntimeExceptions()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 649
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 644
    :catch_9d
    move-exception v3

    .line 645
    .restart local v3       #ex:Ljava/io/IOException;
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    invoke-interface {v6, v3}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    goto :goto_8f

    .line 653
    .end local v2           #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    .end local v3           #ex:Ljava/io/IOException;
    .end local v5           #iox:Ljava/io/IOException;
    :cond_a6
    monitor-exit v7
    :try_end_a7
    .catchall {:try_start_8f .. :try_end_a7} :catchall_63

    .line 654
    return-void
.end method

.method private readMessage(Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;Lorg/snmp4j/smi/TcpAddress;)V
    .registers 21
    .parameter "sk"
    .parameter "readChannel"
    .parameter "incomingAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 926
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v14}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$300(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Ljava/util/Map;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    .line 927
    .local v8, entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    if-eqz v8, :cond_40

    .line 929
    invoke-virtual {v8}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->used()V

    .line 930
    invoke-virtual {v8}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 931
    .local v12, readBuffer:Ljava/nio/ByteBuffer;
    if-eqz v12, :cond_40

    .line 932
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 933
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 934
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    const/4 v15, 0x1

    invoke-virtual {v8, v14, v15}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->addRegistration(Ljava/nio/channels/Selector;I)V

    .line 1023
    .end local v12           #readBuffer:Ljava/nio/ByteBuffer;
    :cond_2e
    :goto_2e
    return-void

    .line 937
    .restart local v12       #readBuffer:Ljava/nio/ByteBuffer;
    :cond_2f
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->setReadBuffer(Ljava/nio/ByteBuffer;)V

    .line 938
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v12, v14, v15}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->dispatchMessage(Lorg/snmp4j/smi/TcpAddress;Ljava/nio/ByteBuffer;J)V

    goto :goto_2e

    .line 943
    .end local v12           #readBuffer:Ljava/nio/ByteBuffer;
    :cond_40
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->buf:[B

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 944
    .local v3, byteBuffer:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v14}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$700(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Lorg/snmp4j/transport/MessageLengthDecoder;

    move-result-object v14

    invoke-interface {v14}, Lorg/snmp4j/transport/MessageLengthDecoder;->getMinHeaderLength()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 945
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v14

    if-nez v14, :cond_87

    .line 946
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 947
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v14

    invoke-interface {v14}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 948
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Read channel not open, no bytes read from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    goto :goto_2e

    .line 953
    :cond_87
    const-wide/16 v4, 0x0

    .line 955
    .local v4, bytesRead:J
    :try_start_89
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v14

    int-to-long v4, v14

    .line 956
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v14

    invoke-interface {v14}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_c0

    .line 957
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Reading header "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, " bytes from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_c0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_89 .. :try_end_c0} :catch_184

    .line 969
    :cond_c0
    new-instance v10, Lorg/snmp4j/transport/MessageLength;

    const/4 v14, 0x0

    const/high16 v15, -0x8000

    invoke-direct {v10, v14, v15}, Lorg/snmp4j/transport/MessageLength;-><init>(II)V

    .line 970
    .local v10, messageLength:Lorg/snmp4j/transport/MessageLength;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v14}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$700(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Lorg/snmp4j/transport/MessageLengthDecoder;

    move-result-object v14

    invoke-interface {v14}, Lorg/snmp4j/transport/MessageLengthDecoder;->getMinHeaderLength()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v4, v14

    if-nez v14, :cond_1fb

    .line 971
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v14}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$700(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Lorg/snmp4j/transport/MessageLengthDecoder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->buf:[B

    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/snmp4j/transport/MessageLengthDecoder;->getMessageLength(Ljava/nio/ByteBuffer;)Lorg/snmp4j/transport/MessageLength;

    move-result-object v10

    .line 973
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v14

    invoke-interface {v14}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_111

    .line 974
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Message length is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 976
    :cond_111
    invoke-virtual {v10}, Lorg/snmp4j/transport/MessageLength;->getMessageLength()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v15}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->getMaxInboundMessageSize()I

    move-result v15

    if-gt v14, v15, :cond_125

    invoke-virtual {v10}, Lorg/snmp4j/transport/MessageLength;->getMessageLength()I

    move-result v14

    if-gtz v14, :cond_1b0

    .line 978
    :cond_125
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Received message length "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, " is greater than inboundBufferSize "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->getMaxInboundMessageSize()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 981
    if-eqz v8, :cond_2e

    .line 982
    invoke-virtual {v8}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getSocket()Ljava/net/Socket;

    move-result-object v13

    .line 983
    .local v13, s:Ljava/net/Socket;
    if-eqz v13, :cond_2e

    .line 984
    invoke-virtual {v13}, Ljava/net/Socket;->close()V

    .line 985
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Socket to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v8}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getPeerAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, " closed due to an error"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/snmp4j/log/LogAdapter;->info(Ljava/lang/Object;)V

    goto/16 :goto_2e

    .line 961
    .end local v10           #messageLength:Lorg/snmp4j/transport/MessageLength;
    .end local v13           #s:Ljava/net/Socket;
    :catch_184
    move-exception v6

    .line 962
    .local v6, ccex:Ljava/nio/channels/ClosedChannelException;
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 963
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v14

    invoke-interface {v14}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 964
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Read channel not open, no bytes read from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    goto/16 :goto_2e

    .line 991
    .end local v6           #ccex:Ljava/nio/channels/ClosedChannelException;
    .restart local v10       #messageLength:Lorg/snmp4j/transport/MessageLength;
    :cond_1b0
    invoke-virtual {v10}, Lorg/snmp4j/transport/MessageLength;->getMessageLength()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 992
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v4, v14

    .line 993
    invoke-virtual {v10}, Lorg/snmp4j/transport/MessageLength;->getMessageLength()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v4, v14

    if-nez v14, :cond_1d9

    .line 994
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->dispatchMessage(Lorg/snmp4j/smi/TcpAddress;Ljava/nio/ByteBuffer;J)V

    .line 1005
    :goto_1cf
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    const/4 v15, 0x1

    invoke-virtual {v8, v14, v15}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->addRegistration(Ljava/nio/channels/Selector;I)V

    goto/16 :goto_2e

    .line 997
    :cond_1d9
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    new-array v9, v14, [B

    .line 998
    .local v9, message:[B
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    sub-int v2, v14, v15

    .line 999
    .local v2, buflen:I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1000
    const/4 v14, 0x0

    invoke-virtual {v3, v9, v14, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1001
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 1002
    .local v11, newBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1003
    invoke-virtual {v8, v11}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->setReadBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_1cf

    .line 1008
    .end local v2           #buflen:I
    .end local v9           #message:[B
    .end local v11           #newBuffer:Ljava/nio/ByteBuffer;
    :cond_1fb
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-gez v14, :cond_229

    .line 1009
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v14

    const-string v15, "Socket closed remotely"

    invoke-interface {v14, v15}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1010
    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 1011
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/SocketChannel;->close()V

    .line 1012
    new-instance v7, Lorg/snmp4j/transport/TransportStateEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-direct {v7, v14, v0, v15, v1}, Lorg/snmp4j/transport/TransportStateEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;ILjava/io/IOException;)V

    .line 1018
    .local v7, e:Lorg/snmp4j/transport/TransportStateEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v14, v7}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->fireConnectionStateChanged(Lorg/snmp4j/transport/TransportStateEvent;)V

    goto/16 :goto_2e

    .line 1021
    .end local v7           #e:Lorg/snmp4j/transport/TransportStateEvent;
    :cond_229
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    const/4 v15, 0x1

    invoke-virtual {v8, v14, v15}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->addRegistration(Ljava/nio/channels/Selector;I)V

    goto/16 :goto_2e
.end method

.method private writeData(Ljava/nio/channels/SelectionKey;Lorg/snmp4j/smi/TcpAddress;)Lorg/snmp4j/smi/TcpAddress;
    .registers 11
    .parameter "sk"
    .parameter "incomingAddress"

    .prologue
    .line 884
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    .line 886
    .local v1, entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    :try_start_6
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SocketChannel;

    .line 887
    .local v4, sc:Ljava/nio/channels/SocketChannel;
    new-instance v2, Lorg/snmp4j/smi/TcpAddress;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getPort()I

    move-result v6

    invoke-direct {v2, v5, v6}, Lorg/snmp4j/smi/TcpAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_21} :catch_5e

    .line 890
    .end local p2
    .local v2, incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    :try_start_21
    invoke-virtual {v1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->hasMessage()Z

    move-result v5

    if-nez v5, :cond_36

    .line 891
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_40

    .line 892
    :try_start_2a
    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 893
    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    const/4 v7, 0x4

    invoke-virtual {v1, v5, v7}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->removeRegistration(Ljava/nio/channels/Selector;I)V

    .line 894
    monitor-exit v6
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_3d

    .line 896
    :cond_36
    if-eqz v1, :cond_3b

    .line 897
    :try_start_38
    invoke-direct {p0, v1, v4}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->writeMessage(Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;Ljava/nio/channels/SocketChannel;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_40

    :cond_3b
    move-object p2, v2

    .line 912
    .end local v2           #incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    .end local v4           #sc:Ljava/nio/channels/SocketChannel;
    .restart local p2
    :goto_3c
    return-object p2

    .line 894
    .end local p2
    .restart local v2       #incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    .restart local v4       #sc:Ljava/nio/channels/SocketChannel;
    :catchall_3d
    move-exception v5

    :try_start_3e
    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v5
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_40} :catch_40

    .line 900
    :catch_40
    move-exception v3

    move-object p2, v2

    .line 901
    .end local v2           #incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    .end local v4           #sc:Ljava/nio/channels/SocketChannel;
    .local v3, iox:Ljava/io/IOException;
    .restart local p2
    :goto_42
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 902
    new-instance v0, Lorg/snmp4j/transport/TransportStateEvent;

    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    const/4 v6, 0x2

    invoke-direct {v0, v5, p2, v6, v3}, Lorg/snmp4j/transport/TransportStateEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;ILjava/io/IOException;)V

    .line 908
    .local v0, e:Lorg/snmp4j/transport/TransportStateEvent;
    iget-object v5, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v5, v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->fireConnectionStateChanged(Lorg/snmp4j/transport/TransportStateEvent;)V

    .line 910
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->closeChannel(Ljava/nio/channels/SelectableChannel;)V

    goto :goto_3c

    .line 900
    .end local v0           #e:Lorg/snmp4j/transport/TransportStateEvent;
    .end local v3           #iox:Ljava/io/IOException;
    :catch_5e
    move-exception v3

    goto :goto_42
.end method

.method private writeMessage(Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;Ljava/nio/channels/SocketChannel;)V
    .registers 8
    .parameter "entry"
    .parameter "sc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 1049
    invoke-virtual {p1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->nextMessage()[B

    move-result-object v1

    .line 1050
    .local v1, message:[B
    if-eqz v1, :cond_5b

    .line 1051
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1052
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p2, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1053
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    invoke-interface {v2}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1054
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Send message with length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getPeerAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v4, v1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1059
    :cond_54
    iget-object v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->addRegistration(Ljava/nio/channels/Selector;I)V

    .line 1071
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :cond_5a
    :goto_5a
    return-void

    .line 1062
    :cond_5b
    iget-object v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v2, v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->removeRegistration(Ljava/nio/channels/Selector;I)V

    .line 1065
    invoke-virtual {p1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->hasMessage()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {p1, v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 1066
    iget-object v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v2, v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->addRegistration(Ljava/nio/channels/Selector;I)V

    .line 1067
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    const-string v3, "Waking up selector"

    invoke-interface {v2, v3}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1068
    iget-object v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    goto :goto_5a
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 1074
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->stop:Z

    .line 1075
    iget-object v1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$600(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Lorg/snmp4j/util/WorkerTask;

    move-result-object v0

    .line 1076
    .local v0, st:Lorg/snmp4j/util/WorkerTask;
    if-eqz v0, :cond_e

    .line 1077
    invoke-interface {v0}, Lorg/snmp4j/util/WorkerTask;->terminate()V

    .line 1079
    :cond_e
    return-void
.end method

.method public getLastError()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 657
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->lastError:Ljava/lang/Throwable;

    return-object v0
.end method

.method public interrupt()V
    .registers 4

    .prologue
    .line 1095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->stop:Z

    .line 1096
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1097
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Interrupting worker task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1099
    :cond_2f
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 1100
    return-void
.end method

.method public join()V
    .registers 4

    .prologue
    .line 1089
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1090
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Joining worker task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1092
    :cond_2c
    return-void
.end method

.method public run()V
    .registers 16

    .prologue
    .line 721
    :goto_0
    :try_start_0
    iget-boolean v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->stop:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2} :catch_14a

    if-nez v12, :cond_10

    .line 723
    :try_start_4
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->select()I

    move-result v12

    if-lez v12, :cond_145

    .line 724
    iget-boolean v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->stop:Z
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_135
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_14a

    if-eqz v12, :cond_60

    .line 820
    :cond_10
    :try_start_10
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->ssc:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v12, :cond_19

    .line 821
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->ssc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v12}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 823
    :cond_19
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    if-eqz v12, :cond_22

    .line 824
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_14a

    .line 831
    :cond_22
    :goto_22
    iget-boolean v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->stop:Z

    if-nez v12, :cond_33

    .line 832
    const/4 v12, 0x1

    iput-boolean v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->stop:Z

    .line 833
    iget-object v13, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    monitor-enter v13

    .line 834
    :try_start_2c
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$602(Lorg/snmp4j/transport/DefaultTcpTransportMapping;Lorg/snmp4j/util/WorkerTask;)Lorg/snmp4j/util/WorkerTask;

    .line 835
    monitor-exit v13
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_1ab

    .line 837
    :cond_33
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    invoke-interface {v12}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_5f

    .line 838
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Worker task finished: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 840
    :cond_5f
    return-void

    .line 728
    :cond_60
    :try_start_60
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v12}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v9

    .line 729
    .local v9, readyKeys:Ljava/util/Set;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 732
    .local v5, it:Ljava/util/Iterator;
    :cond_6a
    :goto_6a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_6d
    .catch Ljava/lang/NullPointerException; {:try_start_60 .. :try_end_6d} :catch_135
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6d} :catch_14a

    move-result v12

    if-eqz v12, :cond_145

    .line 734
    :try_start_70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/channels/SelectionKey;

    .line 735
    .local v11, sk:Ljava/nio/channels/SelectionKey;
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 736
    const/4 v8, 0x0

    .line 737
    .local v8, readChannel:Ljava/nio/channels/SocketChannel;
    const/4 v3, 0x0

    .line 738
    .local v3, incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v12

    if-eqz v12, :cond_156

    .line 739
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    const-string v13, "Key is acceptable"

    invoke-interface {v12, v13}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 742
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/ServerSocketChannel;

    .line 744
    .local v6, nextReady:Ljava/nio/channels/ServerSocketChannel;
    invoke-virtual {v6}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v10

    .line 745
    .local v10, s:Ljava/net/Socket;
    invoke-virtual {v10}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v8

    .line 746
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 748
    new-instance v3, Lorg/snmp4j/smi/TcpAddress;

    .end local v3           #incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    invoke-virtual {v10}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v10}, Ljava/net/Socket;->getPort()I

    move-result v13

    invoke-direct {v3, v12, v13}, Lorg/snmp4j/smi/TcpAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 750
    .restart local v3       #incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    new-instance v2, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-direct {v2, v12, v3, v10}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;-><init>(Lorg/snmp4j/transport/DefaultTcpTransportMapping;Lorg/snmp4j/smi/TcpAddress;Ljava/net/Socket;)V

    .line 751
    .local v2, entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->addRegistration(Ljava/nio/channels/Selector;I)V

    .line 752
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v12}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$300(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v12, v2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$500(Lorg/snmp4j/transport/DefaultTcpTransportMapping;Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;)V

    .line 754
    new-instance v1, Lorg/snmp4j/transport/TransportStateEvent;

    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v1, v12, v3, v13, v14}, Lorg/snmp4j/transport/TransportStateEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;ILjava/io/IOException;)V

    .line 760
    .local v1, e:Lorg/snmp4j/transport/TransportStateEvent;
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v12, v1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->fireConnectionStateChanged(Lorg/snmp4j/transport/TransportStateEvent;)V

    .line 761
    invoke-virtual {v1}, Lorg/snmp4j/transport/TransportStateEvent;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_f2

    .line 762
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    const-string v13, "Incoming connection cancelled"

    invoke-interface {v12, v13}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 763
    invoke-virtual {v10}, Ljava/net/Socket;->close()V

    .line 764
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v12}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$300(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const/4 v8, 0x0

    .line 784
    .end local v1           #e:Lorg/snmp4j/transport/TransportStateEvent;
    .end local v2           #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    .end local v6           #nextReady:Ljava/nio/channels/ServerSocketChannel;
    .end local v10           #s:Ljava/net/Socket;
    :cond_f2
    :goto_f2
    if-eqz v8, :cond_6a

    .line 785
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    const-string v13, "Key is reading"

    invoke-interface {v12, v13}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_fd
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_70 .. :try_end_fd} :catch_11f
    .catch Ljava/lang/NullPointerException; {:try_start_70 .. :try_end_fd} :catch_135
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_fd} :catch_14a

    .line 787
    :try_start_fd
    invoke-direct {p0, v11, v8, v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->readMessage(Ljava/nio/channels/SelectionKey;Ljava/nio/channels/SocketChannel;Lorg/snmp4j/smi/TcpAddress;)V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_102
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_fd .. :try_end_100} :catch_11f
    .catch Ljava/lang/NullPointerException; {:try_start_fd .. :try_end_100} :catch_135

    goto/16 :goto_6a

    .line 789
    :catch_102
    move-exception v4

    .line 791
    .local v4, iox:Ljava/io/IOException;
    :try_start_103
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    invoke-interface {v12, v4}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 792
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 793
    invoke-virtual {v8}, Ljava/nio/channels/SocketChannel;->close()V

    .line 794
    new-instance v1, Lorg/snmp4j/transport/TransportStateEvent;

    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    const/4 v13, 0x2

    invoke-direct {v1, v12, v3, v13, v4}, Lorg/snmp4j/transport/TransportStateEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;ILjava/io/IOException;)V

    .line 800
    .restart local v1       #e:Lorg/snmp4j/transport/TransportStateEvent;
    iget-object v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-virtual {v12, v1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->fireConnectionStateChanged(Lorg/snmp4j/transport/TransportStateEvent;)V
    :try_end_11d
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_103 .. :try_end_11d} :catch_11f
    .catch Ljava/lang/NullPointerException; {:try_start_103 .. :try_end_11d} :catch_135
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_11d} :catch_14a

    goto/16 :goto_6a

    .line 804
    .end local v1           #e:Lorg/snmp4j/transport/TransportStateEvent;
    .end local v3           #incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    .end local v4           #iox:Ljava/io/IOException;
    .end local v8           #readChannel:Ljava/nio/channels/SocketChannel;
    .end local v11           #sk:Ljava/nio/channels/SelectionKey;
    :catch_11f
    move-exception v0

    .line 805
    .local v0, ckex:Ljava/nio/channels/CancelledKeyException;
    :try_start_120
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    invoke-interface {v12}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_6a

    .line 806
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    const-string v13, "Selection key cancelled, skipping it"

    invoke-interface {v12, v13}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_133
    .catch Ljava/lang/NullPointerException; {:try_start_120 .. :try_end_133} :catch_135
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_133} :catch_14a

    goto/16 :goto_6a

    .line 812
    .end local v0           #ckex:Ljava/nio/channels/CancelledKeyException;
    .end local v5           #it:Ljava/util/Iterator;
    .end local v9           #readyKeys:Ljava/util/Set;
    :catch_135
    move-exception v7

    .line 814
    .local v7, npex:Ljava/lang/NullPointerException;
    :try_start_136
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 815
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    const-string v13, "NullPointerException within select()?"

    invoke-interface {v12, v13}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 816
    const/4 v12, 0x1

    iput-boolean v12, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->stop:Z

    .line 818
    .end local v7           #npex:Ljava/lang/NullPointerException;
    :cond_145
    invoke-direct {p0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->processPending()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_148} :catch_14a

    goto/16 :goto_0

    .line 827
    :catch_14a
    move-exception v4

    .line 828
    .restart local v4       #iox:Ljava/io/IOException;
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    invoke-interface {v12, v4}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 829
    iput-object v4, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->lastError:Ljava/lang/Throwable;

    goto/16 :goto_22

    .line 768
    .end local v4           #iox:Ljava/io/IOException;
    .restart local v3       #incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    .restart local v5       #it:Ljava/util/Iterator;
    .restart local v8       #readChannel:Ljava/nio/channels/SocketChannel;
    .restart local v9       #readyKeys:Ljava/util/Set;
    .restart local v11       #sk:Ljava/nio/channels/SelectionKey;
    :cond_156
    :try_start_156
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v12

    if-eqz v12, :cond_182

    .line 769
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    const-string v13, "Key is readable"

    invoke-interface {v12, v13}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 770
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v8

    .end local v8           #readChannel:Ljava/nio/channels/SocketChannel;
    check-cast v8, Ljava/nio/channels/SocketChannel;

    .line 771
    .restart local v8       #readChannel:Ljava/nio/channels/SocketChannel;
    new-instance v3, Lorg/snmp4j/smi/TcpAddress;

    .end local v3           #incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    invoke-virtual {v8}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v8}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/Socket;->getPort()I

    move-result v13

    invoke-direct {v3, v12, v13}, Lorg/snmp4j/smi/TcpAddress;-><init>(Ljava/net/InetAddress;I)V

    .restart local v3       #incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    goto/16 :goto_f2

    .line 775
    :cond_182
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v12

    if-eqz v12, :cond_197

    .line 776
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    const-string v13, "Key is writable"

    invoke-interface {v12, v13}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 777
    invoke-direct {p0, v11, v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->writeData(Ljava/nio/channels/SelectionKey;Lorg/snmp4j/smi/TcpAddress;)Lorg/snmp4j/smi/TcpAddress;

    move-result-object v3

    goto/16 :goto_f2

    .line 779
    :cond_197
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v12

    if-eqz v12, :cond_f2

    .line 780
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v12

    const-string v13, "Key is connectable"

    invoke-interface {v12, v13}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 781
    invoke-direct {p0, v11, v3}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->connectChannel(Ljava/nio/channels/SelectionKey;Lorg/snmp4j/smi/TcpAddress;)V
    :try_end_1a9
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_156 .. :try_end_1a9} :catch_11f
    .catch Ljava/lang/NullPointerException; {:try_start_156 .. :try_end_1a9} :catch_135
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_1a9} :catch_14a

    goto/16 :goto_f2

    .line 835
    .end local v3           #incomingAddress:Lorg/snmp4j/smi/TcpAddress;
    .end local v5           #it:Ljava/util/Iterator;
    .end local v8           #readChannel:Ljava/nio/channels/SocketChannel;
    .end local v9           #readyKeys:Ljava/util/Set;
    .end local v11           #sk:Ljava/nio/channels/SelectionKey;
    :catchall_1ab
    move-exception v12

    :try_start_1ac
    monitor-exit v13
    :try_end_1ad
    .catchall {:try_start_1ac .. :try_end_1ad} :catchall_1ab

    throw v12
.end method

.method public sendMessage(Lorg/snmp4j/smi/Address;[B)V
    .registers 12
    .parameter "address"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    const/4 v4, 0x0

    .line 664
    .local v4, s:Ljava/net/Socket;
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v6}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$300(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    .line 665
    .local v1, entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    invoke-interface {v6}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 666
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Looking up connection for destination \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\' returned: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 668
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v7}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$300(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 670
    :cond_4c
    if-eqz v1, :cond_52

    .line 671
    invoke-virtual {v1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getSocket()Ljava/net/Socket;

    move-result-object v4

    .line 673
    :cond_52
    if-eqz v4, :cond_60

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_60

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-nez v6, :cond_109

    .line 674
    :cond_60
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    invoke-interface {v6}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 675
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Socket for address \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\' is closed, opening it..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 678
    :cond_8a
    iget-object v7, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    monitor-enter v7

    .line 679
    :try_start_8d
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 680
    monitor-exit v7
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_f9

    .line 681
    const/4 v5, 0x0

    .line 684
    .local v5, sc:Ljava/nio/channels/SocketChannel;
    :try_start_94
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v5

    .line 685
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 686
    new-instance v7, Ljava/net/InetSocketAddress;

    move-object v0, p1

    check-cast v0, Lorg/snmp4j/smi/TcpAddress;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/snmp4j/smi/TcpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v8

    move-object v0, p1

    check-cast v0, Lorg/snmp4j/smi/TcpAddress;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/snmp4j/smi/TcpAddress;->getPort()I

    move-result v6

    invoke-direct {v7, v8, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, v7}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 688
    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v4

    .line 689
    new-instance v2, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    iget-object v7, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    move-object v0, p1

    check-cast v0, Lorg/snmp4j/smi/TcpAddress;

    move-object v6, v0

    invoke-direct {v2, v7, v6, v4}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;-><init>(Lorg/snmp4j/transport/DefaultTcpTransportMapping;Lorg/snmp4j/smi/TcpAddress;Ljava/net/Socket;)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_c3} :catch_127

    .line 690
    .end local v1           #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    .local v2, entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    :try_start_c3
    invoke-virtual {v2, p2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->addMessage([B)V

    .line 691
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->this$0:Lorg/snmp4j/transport/DefaultTcpTransportMapping;

    invoke-static {v6}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$300(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v7, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    monitor-enter v7
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_d2} :catch_ff

    .line 694
    :try_start_d2
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 695
    monitor-exit v7
    :try_end_d8
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_fc

    .line 697
    :try_start_d8
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 698
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Trying to connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_f7} :catch_ff

    move-object v1, v2

    .line 713
    .end local v2           #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    .end local v5           #sc:Ljava/nio/channels/SocketChannel;
    .restart local v1       #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    :goto_f8
    return-void

    .line 680
    :catchall_f9
    move-exception v6

    :try_start_fa
    monitor-exit v7
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v6

    .line 695
    .end local v1           #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    .restart local v2       #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    .restart local v5       #sc:Ljava/nio/channels/SocketChannel;
    :catchall_fc
    move-exception v6

    :try_start_fd
    monitor-exit v7
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    :try_start_fe
    throw v6
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_ff} :catch_ff

    .line 700
    :catch_ff
    move-exception v3

    move-object v1, v2

    .line 701
    .end local v2           #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    .restart local v1       #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    .local v3, iox:Ljava/io/IOException;
    :goto_101
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    invoke-interface {v6, v3}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 702
    throw v3

    .line 706
    .end local v3           #iox:Ljava/io/IOException;
    .end local v5           #sc:Ljava/nio/channels/SocketChannel;
    :cond_109
    invoke-virtual {v1, p2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->addMessage([B)V

    .line 707
    iget-object v7, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    monitor-enter v7

    .line 708
    :try_start_10f
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->pending:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 709
    monitor-exit v7
    :try_end_115
    .catchall {:try_start_10f .. :try_end_115} :catchall_124

    .line 710
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v6

    const-string v7, "Waking up selector for new message"

    invoke-interface {v6, v7}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 711
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    goto :goto_f8

    .line 709
    :catchall_124
    move-exception v6

    :try_start_125
    monitor-exit v7
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_124

    throw v6

    .line 700
    .restart local v5       #sc:Ljava/nio/channels/SocketChannel;
    :catch_127
    move-exception v3

    goto :goto_101
.end method

.method public terminate()V
    .registers 4

    .prologue
    .line 1082
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->stop:Z

    .line 1083
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1084
    invoke-static {}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Terminated worker task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1086
    :cond_2f
    return-void
.end method
