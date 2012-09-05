.class Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;
.super Ljava/lang/Object;
.source "DefaultUdpTransportMapping.java"

# interfaces
.implements Lorg/snmp4j/util/WorkerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/transport/DefaultUdpTransportMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListenThread"
.end annotation


# instance fields
.field private buf:[B

.field private volatile stop:Z

.field private final this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;


# direct methods
.method public constructor <init>(Lorg/snmp4j/transport/DefaultUdpTransportMapping;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 313
    iput-object p1, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->stop:Z

    .line 314
    invoke-virtual {p1}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->getMaxInboundMessageSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->buf:[B

    .line 315
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->stop:Z

    .line 416
    return-void
.end method

.method public interrupt()V
    .registers 4

    .prologue
    .line 432
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 433
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

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

    .line 435
    :cond_2c
    invoke-virtual {p0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->close()V

    .line 436
    return-void
.end method

.method public join()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 427
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

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

    .line 429
    :cond_2c
    return-void
.end method

.method public run()V
    .registers 16

    .prologue
    .line 319
    :try_start_0
    iget-object v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    iget-object v9, v9, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    iget-object v10, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-virtual {v10}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->getSocketTimeout()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 320
    iget-object v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-static {v9}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$000(Lorg/snmp4j/transport/DefaultUdpTransportMapping;)I

    move-result v9

    if-lez v9, :cond_2a

    .line 321
    iget-object v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    iget-object v9, v9, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    iget-object v10, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-static {v10}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$000(Lorg/snmp4j/transport/DefaultUdpTransportMapping;)I

    move-result v10

    iget-object v11, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    iget v11, v11, Lorg/snmp4j/transport/AbstractTransportMapping;->maxInboundMessageSize:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 324
    :cond_2a
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    invoke-interface {v9}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_66

    .line 325
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "UDP receive buffer size for socket "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-virtual {v11}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->getAddress()Lorg/snmp4j/smi/UdpAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " is set to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    iget-object v11, v11, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v11}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_66
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_66} :catch_11e

    .line 334
    :cond_66
    :goto_66
    iget-boolean v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->stop:Z

    if-nez v9, :cond_1c2

    .line 335
    new-instance v6, Ljava/net/DatagramPacket;

    iget-object v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->buf:[B

    iget-object v10, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->buf:[B

    array-length v10, v10

    iget-object v11, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    iget-object v11, v11, Lorg/snmp4j/transport/UdpTransportMapping;->udpAddress:Lorg/snmp4j/smi/UdpAddress;

    invoke-virtual {v11}, Lorg/snmp4j/smi/UdpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v11

    iget-object v12, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    iget-object v12, v12, Lorg/snmp4j/transport/UdpTransportMapping;->udpAddress:Lorg/snmp4j/smi/UdpAddress;

    invoke-virtual {v12}, Lorg/snmp4j/smi/UdpAddress;->getPort()I

    move-result v12

    invoke-direct {v6, v9, v10, v11, v12}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 340
    .local v6, packet:Ljava/net/DatagramPacket;
    :try_start_84
    iget-object v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    iget-object v9, v9, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v9, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_8b
    .catch Ljava/io/InterruptedIOException; {:try_start_84 .. :try_end_8b} :catch_12e
    .catch Ljava/net/SocketTimeoutException; {:try_start_84 .. :try_end_8b} :catch_11b
    .catch Ljava/net/PortUnreachableException; {:try_start_84 .. :try_end_8b} :catch_13e
    .catch Ljava/net/SocketException; {:try_start_84 .. :try_end_8b} :catch_16b
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8b} :catch_1a1

    .line 347
    :cond_8b
    :try_start_8b
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    invoke-interface {v9}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_eb

    .line 348
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Received message from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getPort()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " with length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    new-instance v11, Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v14

    invoke-direct {v11, v12, v13, v14}, Lorg/snmp4j/smi/OctetString;-><init>([BII)V

    invoke-virtual {v11}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 357
    :cond_eb
    iget-object v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    invoke-virtual {v9}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->isAsyncMsgProcessingSupported()Z

    move-result v9

    if-eqz v9, :cond_135

    .line 358
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    new-array v1, v9, [B

    .line 359
    .local v1, bytes:[B
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v1

    invoke-static {v9, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 365
    .end local v1           #bytes:[B
    .local v0, bis:Ljava/nio/ByteBuffer;
    :goto_107
    iget-object v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    new-instance v10, Lorg/snmp4j/smi/UdpAddress;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getPort()I

    move-result v12

    invoke-direct {v10, v11, v12}, Lorg/snmp4j/smi/UdpAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v9, v10, v0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->fireProcessMessage(Lorg/snmp4j/smi/Address;Ljava/nio/ByteBuffer;)V
    :try_end_119
    .catch Ljava/net/SocketTimeoutException; {:try_start_8b .. :try_end_119} :catch_11b
    .catch Ljava/net/PortUnreachableException; {:try_start_8b .. :try_end_119} :catch_13e
    .catch Ljava/net/SocketException; {:try_start_8b .. :try_end_119} :catch_16b
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_119} :catch_1a1

    goto/16 :goto_66

    .line 368
    .end local v0           #bis:Ljava/nio/ByteBuffer;
    :catch_11b
    move-exception v9

    goto/16 :goto_66

    .line 330
    .end local v6           #packet:Ljava/net/DatagramPacket;
    :catch_11e
    move-exception v3

    .line 331
    .local v3, ex:Ljava/net/SocketException;
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    invoke-interface {v9, v3}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 332
    iget-object v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->setSocketTimeout(I)V

    goto/16 :goto_66

    .line 342
    .end local v3           #ex:Ljava/net/SocketException;
    .restart local v6       #packet:Ljava/net/DatagramPacket;
    :catch_12e
    move-exception v4

    .line 343
    .local v4, iiox:Ljava/io/InterruptedIOException;
    :try_start_12f
    iget v9, v4, Ljava/io/InterruptedIOException;->bytesTransferred:I

    if-gtz v9, :cond_8b

    goto/16 :goto_66

    .line 363
    .end local v4           #iiox:Ljava/io/InterruptedIOException;
    :cond_135
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_13c
    .catch Ljava/net/SocketTimeoutException; {:try_start_12f .. :try_end_13c} :catch_11b
    .catch Ljava/net/PortUnreachableException; {:try_start_12f .. :try_end_13c} :catch_13e
    .catch Ljava/net/SocketException; {:try_start_12f .. :try_end_13c} :catch_16b
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_13c} :catch_1a1

    move-result-object v0

    .restart local v0       #bis:Ljava/nio/ByteBuffer;
    goto :goto_107

    .line 371
    .end local v0           #bis:Ljava/nio/ByteBuffer;
    :catch_13e
    move-exception v7

    .line 372
    .local v7, purex:Ljava/net/PortUnreachableException;
    iget-object v10, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    monitor-enter v10

    .line 373
    :try_start_142
    iget-object v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    const/4 v11, 0x0

    iput-object v11, v9, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    .line 374
    monitor-exit v10
    :try_end_148
    .catchall {:try_start_142 .. :try_end_148} :catchall_168

    .line 375
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    invoke-interface {v9, v7}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 376
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    invoke-interface {v9}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_15c

    .line 377
    invoke-virtual {v7}, Ljava/net/PortUnreachableException;->printStackTrace()V

    .line 379
    :cond_15c
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->isFowardRuntimeExceptions()Z

    move-result v9

    if-eqz v9, :cond_1c2

    .line 380
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 374
    :catchall_168
    move-exception v9

    :try_start_169
    monitor-exit v10
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    throw v9

    .line 384
    .end local v7           #purex:Ljava/net/PortUnreachableException;
    :catch_16b
    move-exception v8

    .line 385
    .local v8, soex:Ljava/net/SocketException;
    iget-boolean v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->stop:Z

    if-nez v9, :cond_19c

    .line 386
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Socket for transport mapping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v8}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 389
    :cond_19c
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->stop:Z

    goto/16 :goto_66

    .line 391
    .end local v8           #soex:Ljava/net/SocketException;
    :catch_1a1
    move-exception v5

    .line 392
    .local v5, iox:Ljava/io/IOException;
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    invoke-interface {v9, v5}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 393
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    invoke-interface {v9}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_1b6

    .line 394
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 396
    :cond_1b6
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->isFowardRuntimeExceptions()Z

    move-result v9

    if-eqz v9, :cond_66

    .line 397
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 401
    .end local v5           #iox:Ljava/io/IOException;
    .end local v6           #packet:Ljava/net/DatagramPacket;
    :cond_1c2
    iget-object v10, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    monitor-enter v10

    .line 402
    :try_start_1c5
    iget-object v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    const/4 v11, 0x0

    iput-object v11, v9, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->listener:Lorg/snmp4j/util/WorkerTask;

    .line 403
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->stop:Z

    .line 404
    iget-object v9, p0, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->this$0:Lorg/snmp4j/transport/DefaultUdpTransportMapping;

    iget-object v2, v9, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->socket:Ljava/net/DatagramSocket;

    .line 405
    .local v2, closingSocket:Ljava/net/DatagramSocket;
    if-eqz v2, :cond_1dc

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v9

    if-nez v9, :cond_1dc

    .line 406
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 408
    :cond_1dc
    monitor-exit v10
    :try_end_1dd
    .catchall {:try_start_1c5 .. :try_end_1dd} :catchall_20a

    .line 409
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    invoke-interface {v9}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_209

    .line 410
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Worker task stopped:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 412
    :cond_209
    return-void

    .line 408
    .end local v2           #closingSocket:Ljava/net/DatagramSocket;
    :catchall_20a
    move-exception v9

    :try_start_20b
    monitor-exit v10
    :try_end_20c
    .catchall {:try_start_20b .. :try_end_20c} :catchall_20a

    throw v9
.end method

.method public terminate()V
    .registers 4

    .prologue
    .line 419
    invoke-virtual {p0}, Lorg/snmp4j/transport/DefaultUdpTransportMapping$ListenThread;->close()V

    .line 420
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 421
    invoke-static {}, Lorg/snmp4j/transport/DefaultUdpTransportMapping;->access$100()Lorg/snmp4j/log/LogAdapter;

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

    .line 423
    :cond_2f
    return-void
.end method
