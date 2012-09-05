.class public Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;
.super Ljava/lang/Object;
.source "SPSNetworkOutputStream.java"

# interfaces
.implements Lcom/sec/print/mobileprint/io/ISPSOutputStream;


# static fields
.field static final CANCEL_TIMEOUT:J = 0xbb8L

.field static final TIMEOUT:J = 0x493e0L

.field static final WAIT_TIME:J = 0x64L


# instance fields
.field buf:Ljava/nio/ByteBuffer;

.field bufLength:I

.field ipAddr:Ljava/lang/String;

.field isCancel:Z

.field isOccurTimeout:Z

.field portNum:I

.field socketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "ipAddr"
    .parameter "portNum"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->buf:Ljava/nio/ByteBuffer;

    .line 23
    iput v1, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->bufLength:I

    .line 32
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isCancel:Z

    .line 33
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isOccurTimeout:Z

    .line 37
    iput-object p1, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->ipAddr:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->portNum:I

    .line 39
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isCancel:Z

    .line 40
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isOccurTimeout:Z

    .line 41
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isCancel:Z

    .line 45
    monitor-enter p0

    .line 46
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 47
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public close()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 60
    :try_start_1
    iget-object v2, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v2

    if-ne v2, v1, :cond_12

    .line 61
    iget-object v2, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    .line 71
    :cond_12
    :goto_12
    return v1

    .line 64
    :catch_13
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/IOException;
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isOccurTimeout:Z

    .line 67
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public isConnect()Z
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_a

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public open()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 169
    :try_start_2
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->ipAddr:Ljava/lang/String;

    iget v5, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->portNum:I

    invoke-direct {v0, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 170
    .local v0, address:Ljava/net/InetSocketAddress;
    invoke-static {v0}, Ljava/nio/channels/SocketChannel;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 171
    iget-object v4, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 173
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isOccurTimeout:Z
    :try_end_1a
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_1a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_2a

    .line 187
    .end local v0           #address:Ljava/net/InetSocketAddress;
    :goto_1a
    return v2

    .line 174
    :catch_1b
    move-exception v1

    .line 176
    .local v1, e:Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 177
    iput-boolean v2, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isOccurTimeout:Z

    .line 178
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v3

    .line 179
    goto :goto_1a

    .line 180
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_2a
    move-exception v1

    .line 182
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    iput-boolean v2, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isOccurTimeout:Z

    .line 184
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v3

    .line 185
    goto :goto_1a
.end method

.method public write([BI)Z
    .registers 16
    .parameter "buffer"
    .parameter "length"

    .prologue
    const-wide/32 v11, 0x493e0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 78
    :try_start_5
    iget-boolean v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isOccurTimeout:Z

    if-ne v9, v7, :cond_a

    .line 151
    :cond_9
    :goto_9
    return v7

    .line 82
    :cond_a
    iget-object v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->buf:Ljava/nio/ByteBuffer;

    if-nez v9, :cond_48

    .line 83
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->buf:Ljava/nio/ByteBuffer;

    .line 84
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->buf:Ljava/nio/ByteBuffer;

    .line 85
    iput p2, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->bufLength:I

    .line 94
    :goto_19
    iget-object v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->buf:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 98
    .local v5, stime:J
    const-wide/16 v1, 0x0

    .line 99
    .local v1, rtime:J
    const/4 v3, 0x0

    .line 100
    .local v3, rvalue:I
    const/4 v4, 0x0

    .line 101
    .local v4, rvalues:I
    :goto_27
    cmp-long v9, v1, v11

    if-gez v9, :cond_72

    .line 102
    iget-object v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v1, v9, v5

    .line 104
    iget-object v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v10, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v10}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 105
    const/4 v9, -0x1

    if-ne v3, v9, :cond_6d

    .line 106
    const-string v9, "socketChannel.write(buf) return -1"

    invoke-static {p0, v9}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v7, v8

    .line 107
    goto :goto_9

    .line 86
    .end local v1           #rtime:J
    .end local v3           #rvalue:I
    .end local v4           #rvalues:I
    .end local v5           #stime:J
    :cond_48
    iget v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->bufLength:I

    if-eq v9, p2, :cond_67

    .line 87
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->buf:Ljava/nio/ByteBuffer;

    .line 88
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->buf:Ljava/nio/ByteBuffer;

    .line 89
    iput p2, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->bufLength:I
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_57} :catch_58

    goto :goto_19

    .line 144
    :catch_58
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    iput-boolean v7, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isOccurTimeout:Z

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v7, v8

    .line 149
    goto :goto_9

    .line 91
    .end local v0           #e:Ljava/io/IOException;
    :cond_67
    :try_start_67
    iget-object v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_19

    .line 110
    .restart local v1       #rtime:J
    .restart local v3       #rvalue:I
    .restart local v4       #rvalues:I
    .restart local v5       #stime:J
    :cond_6d
    add-int/2addr v4, v3

    .line 111
    cmp-long v9, v1, v11

    if-lez v9, :cond_84

    .line 136
    :cond_72
    :goto_72
    cmp-long v9, v1, v11

    if-lez v9, :cond_9

    .line 137
    const-string v9, "write - connection closed (rtime > timeout) == Timeout"

    invoke-static {p0, v9}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isOccurTimeout:Z

    .line 139
    iget-boolean v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isCancel:Z

    if-eq v9, v7, :cond_9

    move v7, v8

    .line 142
    goto :goto_9

    .line 115
    :cond_84
    if-ge v4, p2, :cond_72

    .line 120
    iget-boolean v9, p0, Lcom/sec/print/mobileprint/io/SPSNetworkOutputStream;->isCancel:Z

    if-ne v9, v7, :cond_99

    const-wide/16 v9, 0xbb8

    cmp-long v9, v1, v9

    if-lez v9, :cond_99

    .line 121
    const-string v9, "canceled - Timeout"

    invoke-static {p0, v9}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const-wide/32 v1, 0x493e1

    .line 123
    goto :goto_72

    .line 126
    :cond_99
    monitor-enter p0
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_9a} :catch_58

    .line 128
    const-wide/16 v9, 0x64

    :try_start_9c
    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a1
    .catch Ljava/lang/InterruptedException; {:try_start_9c .. :try_end_9f} :catch_a4

    .line 133
    :goto_9f
    :try_start_9f
    monitor-exit p0

    goto :goto_27

    :catchall_a1
    move-exception v9

    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw v9
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a4} :catch_58

    .line 129
    :catch_a4
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a1

    goto :goto_9f
.end method
