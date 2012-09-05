.class public final Llibcore/io/IoBridge;
.super Ljava/lang/Object;
.source "IoBridge.java"


# static fields
.field public static final JAVA_IP_MULTICAST_TTL:I = 0x11

.field public static final JAVA_MCAST_JOIN_GROUP:I = 0x13

.field public static final JAVA_MCAST_LEAVE_GROUP:I = 0x14


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static available(Ljava/io/FileDescriptor;)I
    .registers 6
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 51
    :try_start_1
    new-instance v0, Llibcore/util/MutableInt;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Llibcore/util/MutableInt;-><init>(I)V

    .line 52
    .local v0, available:Llibcore/util/MutableInt;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Llibcore/io/OsConstants;->FIONREAD:I

    invoke-interface {v3, p0, v4, v0}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILlibcore/util/MutableInt;)I

    .line 53
    iget v3, v0, Llibcore/util/MutableInt;->value:I

    if-gez v3, :cond_15

    .line 60
    const/4 v3, 0x0

    iput v3, v0, Llibcore/util/MutableInt;->value:I

    .line 62
    :cond_15
    iget v2, v0, Llibcore/util/MutableInt;->value:I
    :try_end_17
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_17} :catch_18

    .line 66
    .end local v0           #available:Llibcore/util/MutableInt;
    :cond_17
    return v2

    .line 63
    :catch_18
    move-exception v1

    .line 64
    .local v1, errnoException:Llibcore/io/ErrnoException;
    iget v3, v1, Llibcore/io/ErrnoException;->errno:I

    sget v4, Llibcore/io/OsConstants;->ENOTTY:I

    if-eq v3, v4, :cond_17

    .line 68
    invoke-virtual {v1}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 9
    .parameter "fd"
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 74
    instance-of v3, p1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3c

    move-object v3, p1

    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    if-nez v3, :cond_3c

    .line 76
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 77
    .local v2, nif:Ljava/net/NetworkInterface;
    if-nez v2, :cond_2c

    .line 78
    new-instance v3, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t bind to a link-local address without a scope id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_3b
    .catch Ljava/net/UnknownHostException; {:try_start_2c .. :try_end_3b} :catch_42

    move-result-object p1

    .line 87
    .end local v2           #nif:Ljava/net/NetworkInterface;
    :cond_3c
    :try_start_3c
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_41
    .catch Llibcore/io/ErrnoException; {:try_start_3c .. :try_end_41} :catch_49

    .line 91
    return-void

    .line 82
    .restart local v2       #nif:Ljava/net/NetworkInterface;
    :catch_42
    move-exception v1

    .line 83
    .local v1, ex:Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 88
    .end local v1           #ex:Ljava/net/UnknownHostException;
    .end local v2           #nif:Ljava/net/NetworkInterface;
    :catch_49
    move-exception v0

    .line 89
    .local v0, errnoException:Llibcore/io/ErrnoException;
    new-instance v3, Ljava/net/BindException;

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/net/BindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static booleanFromInt(I)Z
    .registers 2
    .parameter "i"

    .prologue
    .line 288
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static booleanToInt(Z)I
    .registers 2
    .parameter "b"

    .prologue
    .line 292
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static closeSocket(Ljava/io/FileDescriptor;)V
    .registers 4
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_7

    .line 185
    :goto_6
    return-void

    .line 175
    :cond_7
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 176
    .local v0, intFd:I
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 177
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 178
    .local v1, oldFd:Ljava/io/FileDescriptor;
    invoke-virtual {v1, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 179
    invoke-static {v1}, Llibcore/io/AsynchronousCloseMonitor;->signalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 181
    :try_start_1a
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1f
    .catch Llibcore/io/ErrnoException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_6

    .line 182
    :catch_20
    move-exception v2

    goto :goto_6
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z
    .registers 5
    .parameter "fd"
    .parameter "inetAddress"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1, p2, v1}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v1

    return v1

    .line 101
    :catch_6
    move-exception v0

    .line 102
    .local v0, ex:Ljava/net/SocketTimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    .registers 8
    .parameter "fd"
    .parameter "inetAddress"
    .parameter "port"
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Llibcore/io/IoBridge;->connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    :try_end_3
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_3} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_14

    move-result v2

    return v2

    .line 113
    :catch_5
    move-exception v0

    .line 114
    .local v0, errnoException:Llibcore/io/ErrnoException;
    new-instance v2, Ljava/net/ConnectException;

    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 115
    .end local v0           #errnoException:Llibcore/io/ErrnoException;
    :catch_10
    move-exception v1

    .line 116
    .local v1, ex:Ljava/net/SocketException;
    throw v1

    .line 117
    .end local v1           #ex:Ljava/net/SocketException;
    :catch_12
    move-exception v1

    .line 118
    .local v1, ex:Ljava/net/SocketTimeoutException;
    throw v1

    .line 119
    .end local v1           #ex:Ljava/net/SocketTimeoutException;
    :catch_14
    move-exception v1

    .line 120
    .local v1, ex:Ljava/io/IOException;
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;
    .registers 7
    .parameter "inetAddress"
    .parameter "port"
    .parameter "timeoutMs"
    .parameter "cause"

    .prologue
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, detail:Ljava/lang/String;
    if-lez p2, :cond_42

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_42
    if-eqz p3, :cond_5f

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_5f
    return-object v0
.end method

.method private static connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    .registers 13
    .parameter "fd"
    .parameter "inetAddress"
    .parameter "port"
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 126
    if-nez p3, :cond_9

    .line 127
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 155
    :goto_8
    return v8

    .line 134
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p3

    add-long v1, v4, v6

    .line 135
    .local v1, finishTimeMs:J
    const/4 v4, 0x0

    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 138
    :try_start_14
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_25
    .catch Llibcore/io/ErrnoException; {:try_start_14 .. :try_end_19} :catch_1d

    .line 155
    invoke-static {p0, v8}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    goto :goto_8

    .line 140
    :catch_1d
    move-exception v0

    .line 141
    .local v0, errnoException:Llibcore/io/ErrnoException;
    :try_start_1e
    iget v4, v0, Llibcore/io/ErrnoException;->errno:I

    sget v5, Llibcore/io/OsConstants;->EINPROGRESS:I

    if-eq v4, v5, :cond_2a

    .line 142
    throw v0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_25

    .line 155
    .end local v0           #errnoException:Llibcore/io/ErrnoException;
    :catchall_25
    move-exception v4

    invoke-static {p0, v8}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    throw v4

    .line 148
    .restart local v0       #errnoException:Llibcore/io/ErrnoException;
    :cond_2a
    :try_start_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v1, v4

    long-to-int v3, v4

    .line 149
    .local v3, remainingTimeoutMs:I
    if-gtz v3, :cond_3e

    .line 150
    new-instance v4, Ljava/net/SocketTimeoutException;

    const/4 v5, 0x0

    invoke-static {p1, p2, p3, v5}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_3e
    invoke-static {p0, p1, p2, p3, v3}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_25

    move-result v4

    if-eqz v4, :cond_2a

    .line 155
    invoke-static {p0, v8}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    goto :goto_8
.end method

.method public static getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .registers 6
    .parameter "fd"

    .prologue
    .line 579
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    .line 580
    .local v3, sa:Ljava/net/SocketAddress;
    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    .line 581
    .local v2, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;
    :try_end_d
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v4

    return-object v4

    .line 582
    .end local v2           #isa:Ljava/net/InetSocketAddress;
    .end local v3           #sa:Ljava/net/SocketAddress;
    :catch_f
    move-exception v1

    .line 583
    .local v1, errnoException:Llibcore/io/ErrnoException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static getSocketLocalPort(Ljava/io/FileDescriptor;)I
    .registers 6
    .parameter "fd"

    .prologue
    .line 589
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    .line 590
    .local v3, sa:Ljava/net/SocketAddress;
    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    .line 591
    .local v2, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_d
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v4

    return v4

    .line 592
    .end local v2           #isa:Ljava/net/InetSocketAddress;
    .end local v3           #sa:Ljava/net/SocketAddress;
    :catch_f
    move-exception v1

    .line 593
    .local v1, errnoException:Llibcore/io/ErrnoException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .registers 4
    .parameter "fd"
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 234
    :try_start_0
    invoke-static {p0, p1}, Llibcore/io/IoBridge;->getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    :try_end_3
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 235
    :catch_5
    move-exception v0

    .line 236
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .registers 6
    .parameter "fd"
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 241
    sparse-switch p1, :sswitch_data_11c

    .line 283
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown socket option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :sswitch_1c
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v3, Llibcore/io/OsConstants;->IP_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 281
    :goto_26
    return-object v1

    .line 247
    :sswitch_27
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_26

    .line 251
    :sswitch_36
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_MULTICAST_LOOP:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_26

    .line 255
    :sswitch_49
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_MULTICAST_HOPS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_26

    .line 259
    :sswitch_58
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_TCLASS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_26

    .line 261
    :sswitch_67
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_BROADCAST:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_26

    .line 263
    :sswitch_7a
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_KEEPALIVE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_26

    .line 265
    :sswitch_8d
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_LINGER:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Llibcore/io/StructLinger;

    move-result-object v0

    .line 266
    .local v0, linger:Llibcore/io/StructLinger;
    invoke-virtual {v0}, Llibcore/io/StructLinger;->isOn()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 267
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_26

    .line 269
    :cond_a3
    iget v1, v0, Llibcore/io/StructLinger;->l_linger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_26

    .line 271
    .end local v0           #linger:Llibcore/io/StructLinger;
    :sswitch_ab
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_OOBINLINE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_26

    .line 273
    :sswitch_bf
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_SNDBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_26

    .line 275
    :sswitch_cf
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_REUSEADDR:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_26

    .line 277
    :sswitch_e3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_SNDBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_26

    .line 279
    :sswitch_f3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Llibcore/io/StructTimeval;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/io/StructTimeval;->toMillis()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_26

    .line 281
    :sswitch_108
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_TCP:I

    sget v3, Llibcore/io/OsConstants;->TCP_NODELAY:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_26

    .line 241
    :sswitch_data_11c
    .sparse-switch
        0x1 -> :sswitch_108
        0x3 -> :sswitch_58
        0x4 -> :sswitch_cf
        0x8 -> :sswitch_7a
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_49
        0x12 -> :sswitch_36
        0x1f -> :sswitch_27
        0x20 -> :sswitch_67
        0x80 -> :sswitch_8d
        0x1001 -> :sswitch_e3
        0x1002 -> :sswitch_bf
        0x1003 -> :sswitch_ab
        0x1006 -> :sswitch_f3
    .end sparse-switch
.end method

.method public static isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    .registers 16
    .parameter "fd"
    .parameter "inetAddress"
    .parameter "port"
    .parameter "timeoutMs"
    .parameter "remainingTimeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 190
    const/4 v8, 0x1

    :try_start_3
    new-array v4, v8, [Llibcore/io/StructPollfd;

    const/4 v8, 0x0

    new-instance v9, Llibcore/io/StructPollfd;

    invoke-direct {v9}, Llibcore/io/StructPollfd;-><init>()V

    aput-object v9, v4, v8

    .line 191
    .local v4, pollFds:[Llibcore/io/StructPollfd;
    const/4 v8, 0x0

    aget-object v8, v4, v8

    iput-object p0, v8, Llibcore/io/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 192
    const/4 v8, 0x0

    aget-object v8, v4, v8

    sget v9, Llibcore/io/OsConstants;->POLLOUT:I

    int-to-short v9, v9

    iput-short v9, v8, Llibcore/io/StructPollfd;->events:S

    .line 193
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4, p4}, Llibcore/io/Os;->poll([Llibcore/io/StructPollfd;I)I

    move-result v5

    .line 194
    .local v5, rc:I
    if-nez v5, :cond_23

    .line 204
    .end local v4           #pollFds:[Llibcore/io/StructPollfd;
    .end local v5           #rc:I
    :cond_22
    :goto_22
    return v6

    .line 197
    .restart local v4       #pollFds:[Llibcore/io/StructPollfd;
    .restart local v5       #rc:I
    :cond_23
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_ERROR:I

    invoke-interface {v8, p0, v9, v10}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    .line 198
    .local v1, connectError:I
    if-nez v1, :cond_31

    move v6, v7

    .line 199
    goto :goto_22

    .line 201
    :cond_31
    new-instance v7, Llibcore/io/ErrnoException;

    const-string v8, "isConnected"

    invoke-direct {v7, v8, v1}, Llibcore/io/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_39
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_39} :catch_39

    .line 202
    .end local v1           #connectError:I
    .end local v4           #pollFds:[Llibcore/io/StructPollfd;
    .end local v5           #rc:I
    :catch_39
    move-exception v3

    .line 203
    .local v3, errnoException:Llibcore/io/ErrnoException;
    iget v7, v3, Llibcore/io/ErrnoException;->errno:I

    sget v8, Llibcore/io/OsConstants;->EINTR:I

    if-eq v7, v8, :cond_22

    .line 206
    move-object v0, v3

    .line 210
    .local v0, cause:Llibcore/io/ErrnoException;
    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, detail:Ljava/lang/String;
    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ECONNRESET:I

    if-eq v6, v7, :cond_63

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ECONNREFUSED:I

    if-eq v6, v7, :cond_63

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EADDRNOTAVAIL:I

    if-eq v6, v7, :cond_63

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EADDRINUSE:I

    if-eq v6, v7, :cond_63

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ENETUNREACH:I

    if-ne v6, v7, :cond_69

    .line 214
    :cond_63
    new-instance v6, Ljava/net/ConnectException;

    invoke-direct {v6, v2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 215
    :cond_69
    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EACCES:I

    if-ne v6, v7, :cond_75

    .line 216
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 217
    :cond_75
    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ETIMEDOUT:I

    if-ne v6, v7, :cond_81

    .line 218
    new-instance v6, Ljava/net/SocketTimeoutException;

    invoke-direct {v6, v2, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 220
    :cond_81
    new-instance v6, Ljava/net/SocketException;

    invoke-direct {v6, v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static maybeThrowAfterRecvfrom(ZZLlibcore/io/ErrnoException;)I
    .registers 5
    .parameter "isRead"
    .parameter "isConnected"
    .parameter "errnoException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 538
    if-eqz p0, :cond_15

    .line 539
    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_e

    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EWOULDBLOCK:I

    if-ne v0, v1, :cond_10

    .line 540
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 542
    :cond_10
    invoke-virtual {p2}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0

    .line 545
    :cond_15
    if-eqz p1, :cond_25

    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_25

    .line 546
    new-instance v0, Ljava/net/PortUnreachableException;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 547
    :cond_25
    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_31

    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EWOULDBLOCK:I

    if-ne v0, v1, :cond_37

    .line 548
    :cond_31
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 550
    :cond_37
    invoke-virtual {p2}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method private static maybeThrowAfterSendto(ZLlibcore/io/ErrnoException;)I
    .registers 5
    .parameter "isDatagram"
    .parameter "errnoException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 485
    if-eqz p0, :cond_10

    .line 486
    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->ECONNRESET:I

    if-eq v0, v1, :cond_f

    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_1c

    .line 493
    :cond_f
    return v2

    .line 490
    :cond_10
    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_f

    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EWOULDBLOCK:I

    if-eq v0, v1, :cond_f

    .line 496
    :cond_1c
    invoke-virtual {p1}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method public static open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .registers 9
    .parameter "path"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v2, 0x0

    .line 389
    .local v2, fd:Ljava/io/FileDescriptor;
    :try_start_1
    sget v4, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int/2addr v4, p1

    sget v5, Llibcore/io/OsConstants;->O_RDONLY:I

    if-ne v4, v5, :cond_57

    const/4 v3, 0x0

    .line 390
    .local v3, mode:I
    :goto_9
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, v3}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 394
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;

    move-result-object v4

    iget v4, v4, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v4}, Llibcore/io/OsConstants;->S_ISDIR(I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 395
    new-instance v4, Llibcore/io/ErrnoException;

    const-string v5, "open"

    sget v6, Llibcore/io/OsConstants;->EISDIR:I

    invoke-direct {v4, v5, v6}, Llibcore/io/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_2d
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_2d} :catch_2d

    .line 399
    .end local v3           #mode:I
    :catch_2d
    move-exception v0

    .line 401
    .local v0, errnoException:Llibcore/io/ErrnoException;
    if-eqz v2, :cond_33

    .line 402
    :try_start_30
    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_5a

    .line 406
    :cond_33
    :goto_33
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 408
    throw v1

    .line 389
    .end local v0           #errnoException:Llibcore/io/ErrnoException;
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :cond_57
    const/16 v3, 0x180

    goto :goto_9

    .line 404
    .restart local v0       #errnoException:Llibcore/io/ErrnoException;
    :catch_5a
    move-exception v4

    goto :goto_33

    .line 398
    .end local v0           #errnoException:Llibcore/io/ErrnoException;
    .restart local v3       #mode:I
    :cond_5c
    return-object v2
.end method

.method private static postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    .registers 6
    .parameter "isRead"
    .parameter "packet"
    .parameter "isConnected"
    .parameter "srcAddress"
    .parameter "byteCount"

    .prologue
    .line 524
    if-eqz p0, :cond_6

    if-nez p4, :cond_6

    .line 525
    const/4 p4, -0x1

    .line 534
    .end local p4
    :cond_5
    :goto_5
    return p4

    .line 527
    .restart local p4
    :cond_6
    if-eqz p1, :cond_5

    .line 528
    invoke-virtual {p1, p4}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 529
    if-nez p2, :cond_5

    .line 530
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 531
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_5
.end method

.method public static read(Ljava/io/FileDescriptor;[BII)I
    .registers 8
    .parameter "fd"
    .parameter "bytes"
    .parameter "byteOffset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 417
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 418
    if-nez p3, :cond_8

    .line 430
    :cond_7
    :goto_7
    return v1

    .line 422
    :cond_8
    :try_start_8
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_d
    .catch Llibcore/io/ErrnoException; {:try_start_8 .. :try_end_d} :catch_12

    move-result v1

    .line 423
    .local v1, readCount:I
    if-nez v1, :cond_7

    .line 424
    const/4 v1, -0x1

    goto :goto_7

    .line 427
    .end local v1           #readCount:I
    :catch_12
    move-exception v0

    .line 428
    .local v0, errnoException:Llibcore/io/ErrnoException;
    iget v2, v0, Llibcore/io/ErrnoException;->errno:I

    sget v3, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v2, v3, :cond_7

    .line 432
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    .registers 10
    .parameter "isRead"
    .parameter "fd"
    .parameter "buffer"
    .parameter "flags"
    .parameter "packet"
    .parameter "isConnected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    if-eqz p4, :cond_14

    if-nez p5, :cond_14

    :try_start_4
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V

    .line 515
    .local v2, srcAddress:Ljava/net/InetSocketAddress;
    :goto_9
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p1, p2, p3, v2}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v1

    .line 516
    .local v1, result:I
    invoke-static {p0, p4, p5, v2, v1}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    :try_end_12
    .catch Llibcore/io/ErrnoException; {:try_start_4 .. :try_end_12} :catch_16

    move-result v1

    .line 520
    .end local v2           #srcAddress:Ljava/net/InetSocketAddress;
    :goto_13
    return v1

    .line 514
    .end local v1           #result:I
    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    .line 517
    :catch_16
    move-exception v0

    .line 518
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-static {p0, p5, v0}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLlibcore/io/ErrnoException;)I

    move-result v1

    .restart local v1       #result:I
    goto :goto_13
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I
    .registers 19
    .parameter "isRead"
    .parameter "fd"
    .parameter "bytes"
    .parameter "byteOffset"
    .parameter "byteCount"
    .parameter "flags"
    .parameter "packet"
    .parameter "isConnected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    if-eqz p6, :cond_1e

    if-nez p7, :cond_1e

    :try_start_4
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8}, Ljava/net/InetSocketAddress;-><init>()V

    .line 503
    .local v8, srcAddress:Ljava/net/InetSocketAddress;
    :goto_9
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v10

    .line 504
    .local v10, result:I
    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-static {p0, v0, v1, v8, v10}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    :try_end_1c
    .catch Llibcore/io/ErrnoException; {:try_start_4 .. :try_end_1c} :catch_20

    move-result v10

    .line 508
    .end local v8           #srcAddress:Ljava/net/InetSocketAddress;
    :goto_1d
    return v10

    .line 502
    .end local v10           #result:I
    :cond_1e
    const/4 v8, 0x0

    goto :goto_9

    .line 505
    :catch_20
    move-exception v9

    .line 506
    .local v9, errnoException:Llibcore/io/ErrnoException;
    move/from16 v0, p7

    invoke-static {p0, v0, v9}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLlibcore/io/ErrnoException;)I

    move-result v10

    .restart local v10       #result:I
    goto :goto_1d
.end method

.method public static sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .registers 14
    .parameter "fd"
    .parameter "buffer"
    .parameter "flags"
    .parameter "inetAddress"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 471
    if-eqz p3, :cond_d

    const/4 v7, 0x1

    .line 472
    .local v7, isDatagram:Z
    :goto_4
    if-nez v7, :cond_f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_f

    .line 481
    :goto_c
    return v8

    .end local v7           #isDatagram:Z
    :cond_d
    move v7, v8

    .line 471
    goto :goto_4

    .line 477
    .restart local v7       #isDatagram:Z
    :cond_f
    :try_start_f
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_19
    .catch Llibcore/io/ErrnoException; {:try_start_f .. :try_end_19} :catch_1b

    move-result v8

    .local v8, result:I
    goto :goto_c

    .line 478
    .end local v8           #result:I
    :catch_1b
    move-exception v6

    .line 479
    .local v6, errnoException:Llibcore/io/ErrnoException;
    invoke-static {v7, v6}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLlibcore/io/ErrnoException;)I

    move-result v8

    .restart local v8       #result:I
    goto :goto_c
.end method

.method public static sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .registers 18
    .parameter "fd"
    .parameter "bytes"
    .parameter "byteOffset"
    .parameter "byteCount"
    .parameter "flags"
    .parameter "inetAddress"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    if-eqz p5, :cond_9

    const/4 v9, 0x1

    .line 458
    .local v9, isDatagram:Z
    :goto_3
    if-nez v9, :cond_b

    if-gtz p3, :cond_b

    .line 459
    const/4 v10, 0x0

    .line 467
    :goto_8
    return v10

    .line 457
    .end local v9           #isDatagram:Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 463
    .restart local v9       #isDatagram:Z
    :cond_b
    :try_start_b
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_19
    .catch Llibcore/io/ErrnoException; {:try_start_b .. :try_end_19} :catch_1b

    move-result v10

    .local v10, result:I
    goto :goto_8

    .line 464
    .end local v10           #result:I
    :catch_1b
    move-exception v8

    .line 465
    .local v8, errnoException:Llibcore/io/ErrnoException;
    invoke-static {v9, v8}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLlibcore/io/ErrnoException;)I

    move-result v10

    .restart local v10       #result:I
    goto :goto_8
.end method

.method public static setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .registers 5
    .parameter "fd"
    .parameter "option"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 301
    :try_start_0
    invoke-static {p0, p1, p2}, Llibcore/io/IoBridge;->setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_3
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_3} :catch_4

    .line 305
    return-void

    .line 302
    :catch_4
    move-exception v0

    .line 303
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .registers 15
    .parameter "fd"
    .parameter "option"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 308
    sparse-switch p1, :sswitch_data_192

    .line 375
    new-instance v8, Ljava/net/SocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown socket option: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 310
    :sswitch_1c
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Use IP_MULTICAST_IF2 on Android"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 313
    :sswitch_24
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_MULTICAST_IF:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    .line 314
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_MULTICAST_IF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 373
    :goto_43
    return-void

    .line 318
    .restart local p2
    :sswitch_44
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_MULTICAST_LOOP:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v8}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    .line 319
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_MULTICAST_LOOP:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_43

    .line 324
    .restart local p2
    :sswitch_6c
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_MULTICAST_TTL:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    .line 325
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_MULTICAST_HOPS:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_43

    .line 328
    .restart local p2
    :sswitch_8c
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_TOS:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 329
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_TCLASS:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_43

    .line 332
    .restart local p2
    :sswitch_ac
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_BROADCAST:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_43

    .line 335
    .restart local p2
    :sswitch_c0
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_KEEPALIVE:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .line 338
    .restart local p2
    :sswitch_d5
    const/4 v4, 0x0

    .line 339
    .local v4, on:Z
    const/4 v6, 0x0

    .line 340
    .local v6, seconds:I
    instance-of v8, p2, Ljava/lang/Integer;

    if-eqz v8, :cond_e9

    .line 341
    const/4 v4, 0x1

    .line 342
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0xffff

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 344
    :cond_e9
    new-instance v2, Llibcore/io/StructLinger;

    invoke-static {v4}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v8

    invoke-direct {v2, v8, v6}, Llibcore/io/StructLinger;-><init>(II)V

    .line 345
    .local v2, linger:Llibcore/io/StructLinger;
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_LINGER:I

    invoke-interface {v8, p0, v9, v10, v2}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILlibcore/io/StructLinger;)V

    goto/16 :goto_43

    .line 348
    .end local v2           #linger:Llibcore/io/StructLinger;
    .end local v4           #on:Z
    .end local v6           #seconds:I
    .restart local p2
    :sswitch_fd
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_OOBINLINE:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .line 351
    .restart local p2
    :sswitch_112
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_RCVBUF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .line 354
    .restart local p2
    :sswitch_123
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_REUSEADDR:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .line 357
    .restart local p2
    :sswitch_138
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_SNDBUF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .line 360
    .restart local p2
    :sswitch_149
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 361
    .local v3, millis:I
    int-to-long v8, v3

    invoke-static {v8, v9}, Llibcore/io/StructTimeval;->fromMillis(J)Llibcore/io/StructTimeval;

    move-result-object v7

    .line 362
    .local v7, tv:Llibcore/io/StructTimeval;
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v8, p0, v9, v10, v7}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    goto/16 :goto_43

    .line 365
    .end local v3           #millis:I
    .end local v7           #tv:Llibcore/io/StructTimeval;
    .restart local p2
    :sswitch_15f
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_TCP:I

    sget v10, Llibcore/io/OsConstants;->TCP_NODELAY:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_43

    .restart local p2
    :sswitch_174
    move-object v0, p2

    .line 369
    check-cast v0, Llibcore/io/StructGroupReq;

    .line 370
    .local v0, groupReq:Llibcore/io/StructGroupReq;
    iget-object v8, v0, Llibcore/io/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_18c

    sget v1, Llibcore/io/OsConstants;->IPPROTO_IP:I

    .line 371
    .local v1, level:I
    :goto_17f
    const/16 v8, 0x13

    if-ne p1, v8, :cond_18f

    sget v5, Llibcore/io/OsConstants;->MCAST_JOIN_GROUP:I

    .line 372
    .local v5, op:I
    :goto_185
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, p0, v1, v5, v0}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILlibcore/io/StructGroupReq;)V

    goto/16 :goto_43

    .line 370
    .end local v1           #level:I
    .end local v5           #op:I
    :cond_18c
    sget v1, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    goto :goto_17f

    .line 371
    .restart local v1       #level:I
    :cond_18f
    sget v5, Llibcore/io/OsConstants;->MCAST_LEAVE_GROUP:I

    goto :goto_185

    .line 308
    :sswitch_data_192
    .sparse-switch
        0x1 -> :sswitch_15f
        0x3 -> :sswitch_8c
        0x4 -> :sswitch_123
        0x8 -> :sswitch_c0
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_6c
        0x12 -> :sswitch_44
        0x13 -> :sswitch_174
        0x14 -> :sswitch_174
        0x1f -> :sswitch_24
        0x20 -> :sswitch_ac
        0x80 -> :sswitch_d5
        0x1001 -> :sswitch_138
        0x1002 -> :sswitch_112
        0x1003 -> :sswitch_fd
        0x1006 -> :sswitch_149
    .end sparse-switch
.end method

.method public static socket(Z)Ljava/io/FileDescriptor;
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 558
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Llibcore/io/OsConstants;->AF_INET6:I

    if-eqz p0, :cond_1a

    sget v2, Llibcore/io/OsConstants;->SOCK_STREAM:I

    :goto_8
    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 567
    .local v1, fd:Ljava/io/FileDescriptor;
    if-nez p0, :cond_19

    .line 568
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v4, Llibcore/io/OsConstants;->IPV6_MULTICAST_HOPS:I

    const/4 v5, 0x1

    invoke-interface {v2, v1, v3, v4, v5}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 571
    :cond_19
    return-object v1

    .line 558
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_1a
    sget v2, Llibcore/io/OsConstants;->SOCK_DGRAM:I
    :try_end_1c
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_8

    .line 572
    :catch_1d
    move-exception v0

    .line 573
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static write(Ljava/io/FileDescriptor;[BII)V
    .registers 7
    .parameter "fd"
    .parameter "bytes"
    .parameter "byteOffset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 442
    if-nez p3, :cond_7

    .line 454
    :cond_6
    return-void

    .line 446
    :cond_7
    :goto_7
    if-lez p3, :cond_6

    .line 447
    :try_start_9
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_e
    .catch Llibcore/io/ErrnoException; {:try_start_9 .. :try_end_e} :catch_12

    move-result v0

    .line 448
    .local v0, bytesWritten:I
    sub-int/2addr p3, v0

    .line 449
    add-int/2addr p2, v0

    .line 450
    goto :goto_7

    .line 451
    .end local v0           #bytesWritten:I
    :catch_12
    move-exception v1

    .line 452
    .local v1, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v1}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method
