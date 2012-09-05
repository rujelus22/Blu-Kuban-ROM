.class public Lorg/snmp4j/transport/DefaultTcpTransportMapping;
.super Lorg/snmp4j/transport/TcpTransportMapping;
.source "DefaultTcpTransportMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;,
        Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;,
        Lorg/snmp4j/transport/DefaultTcpTransportMapping$SnmpMesssageLengthDecoder;,
        Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    }
.end annotation


# static fields
.field private static final MIN_SNMP_HEADER_LENGTH:I = 0x6

.field static class$org$snmp4j$transport$DefaultTcpTransportMapping:Ljava/lang/Class;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private connectionTimeout:J

.field private messageLengthDecoder:Lorg/snmp4j/transport/MessageLengthDecoder;

.field private server:Lorg/snmp4j/util/WorkerTask;

.field private serverEnabled:Z

.field private serverThread:Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;

.field private socketCleaner:Lorg/snmp4j/util/CommonTimer;

.field private sockets:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->class$org$snmp4j$transport$DefaultTcpTransportMapping:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.transport.DefaultTcpTransportMapping"

    invoke-static {v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->class$org$snmp4j$transport$DefaultTcpTransportMapping:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->class$org$snmp4j$transport$DefaultTcpTransportMapping:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    new-instance v0, Lorg/snmp4j/smi/TcpAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/TcpAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lorg/snmp4j/transport/TcpTransportMapping;-><init>(Lorg/snmp4j/smi/TcpAddress;)V

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->sockets:Ljava/util/Map;

    .line 61
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->connectionTimeout:J

    .line 62
    iput-boolean v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->serverEnabled:Z

    .line 65
    new-instance v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SnmpMesssageLengthDecoder;

    invoke-direct {v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SnmpMesssageLengthDecoder;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->messageLengthDecoder:Lorg/snmp4j/transport/MessageLengthDecoder;

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/TcpAddress;)V
    .registers 4
    .parameter "serverAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/snmp4j/transport/TcpTransportMapping;-><init>(Lorg/snmp4j/smi/TcpAddress;)V

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->sockets:Ljava/util/Map;

    .line 61
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->connectionTimeout:J

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->serverEnabled:Z

    .line 65
    new-instance v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SnmpMesssageLengthDecoder;

    invoke-direct {v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SnmpMesssageLengthDecoder;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->messageLengthDecoder:Lorg/snmp4j/transport/MessageLengthDecoder;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->serverEnabled:Z

    .line 96
    return-void
.end method

.method static access$000()Lorg/snmp4j/log/LogAdapter;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    return-object v0
.end method

.method static access$100(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Lorg/snmp4j/util/CommonTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->socketCleaner:Lorg/snmp4j/util/CommonTimer;

    return-object v0
.end method

.method static access$200(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->connectionTimeout:J

    return-wide v0
.end method

.method static access$300(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->sockets:Ljava/util/Map;

    return-object v0
.end method

.method static access$400(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->serverEnabled:Z

    return v0
.end method

.method static access$500(Lorg/snmp4j/transport/DefaultTcpTransportMapping;Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->timeoutSocket(Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;)V

    return-void
.end method

.method static access$600(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Lorg/snmp4j/util/WorkerTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    return-object v0
.end method

.method static access$602(Lorg/snmp4j/transport/DefaultTcpTransportMapping;Lorg/snmp4j/util/WorkerTask;)Lorg/snmp4j/util/WorkerTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    return-object p1
.end method

.method static access$700(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)Lorg/snmp4j/transport/MessageLengthDecoder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->messageLengthDecoder:Lorg/snmp4j/transport/MessageLengthDecoder;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private declared-synchronized timeoutSocket(Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;)V
    .registers 6
    .parameter "entry"

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->connectionTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 379
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->socketCleaner:Lorg/snmp4j/util/CommonTimer;

    new-instance v1, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;

    invoke-direct {v1, p0, p1}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketTimeout;-><init>(Lorg/snmp4j/transport/DefaultTcpTransportMapping;Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;)V

    iget-wide v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->connectionTimeout:J

    invoke-interface {v0, v1, v2, v3}, Lorg/snmp4j/util/CommonTimer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 381
    :cond_15
    monitor-exit p0

    return-void

    .line 378
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 192
    iget-object v6, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    .line 193
    .local v6, st:Lorg/snmp4j/util/WorkerTask;
    if-eqz v6, :cond_a7

    .line 194
    invoke-interface {v6}, Lorg/snmp4j/util/WorkerTask;->terminate()V

    .line 195
    invoke-interface {v6}, Lorg/snmp4j/util/WorkerTask;->interrupt()V

    .line 197
    :try_start_b
    invoke-interface {v6}, Lorg/snmp4j/util/WorkerTask;->join()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_94

    .line 202
    :goto_e
    iput-object v10, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    .line 203
    iget-object v7, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->sockets:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 204
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    .line 205
    .local v0, entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    invoke-virtual {v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getSocket()Ljava/net/Socket;

    move-result-object v4

    .line 206
    .local v4, s:Ljava/net/Socket;
    if-eqz v4, :cond_1a

    .line 208
    :try_start_2c
    invoke-virtual {v4}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v5

    .line 209
    .local v5, sc:Ljava/nio/channels/SocketChannel;
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 210
    sget-object v7, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v7}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 211
    sget-object v7, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Socket to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getPeerAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " closed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 213
    :cond_5d
    if-eqz v5, :cond_1a

    .line 214
    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->close()V

    .line 215
    sget-object v7, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v7}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 216
    sget-object v7, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Socket channel to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getPeerAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " closed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_8c} :catch_8d

    goto :goto_1a

    .line 221
    .end local v5           #sc:Ljava/nio/channels/SocketChannel;
    :catch_8d
    move-exception v2

    .line 223
    .local v2, iox:Ljava/io/IOException;
    sget-object v7, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v7, v2}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    goto :goto_1a

    .line 199
    .end local v0           #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    .end local v2           #iox:Ljava/io/IOException;
    .end local v3           #it:Ljava/util/Iterator;
    .end local v4           #s:Ljava/net/Socket;
    :catch_94
    move-exception v1

    .line 200
    .local v1, ex:Ljava/lang/InterruptedException;
    sget-object v7, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v7, v1}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 227
    .end local v1           #ex:Ljava/lang/InterruptedException;
    .restart local v3       #it:Ljava/util/Iterator;
    :cond_9c
    iget-object v7, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->socketCleaner:Lorg/snmp4j/util/CommonTimer;

    if-eqz v7, :cond_a5

    .line 228
    iget-object v7, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->socketCleaner:Lorg/snmp4j/util/CommonTimer;

    invoke-interface {v7}, Lorg/snmp4j/util/CommonTimer;->cancel()V

    .line 230
    :cond_a5
    iput-object v10, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->socketCleaner:Lorg/snmp4j/util/CommonTimer;

    .line 232
    .end local v3           #it:Ljava/util/Iterator;
    :cond_a7
    return-void
.end method

.method public declared-synchronized close(Lorg/snmp4j/smi/Address;)Z
    .registers 8
    .parameter "remoteAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    monitor-enter p0

    :try_start_1
    sget-object v3, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 250
    sget-object v3, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Closing socket for peer address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 252
    :cond_21
    iget-object v3, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->sockets:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;

    .line 253
    .local v0, entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    if-eqz v0, :cond_92

    .line 254
    invoke-virtual {v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 255
    .local v1, s:Ljava/net/Socket;
    if-eqz v1, :cond_8f

    .line 256
    invoke-virtual {v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 257
    .local v2, sc:Ljava/nio/channels/SocketChannel;
    invoke-virtual {v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 258
    sget-object v3, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 259
    sget-object v3, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Socket to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;->getPeerAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->info(Ljava/lang/Object;)V

    .line 261
    :cond_6a
    if-eqz v2, :cond_8f

    .line 262
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V

    .line 263
    sget-object v3, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 264
    sget-object v3, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Closed socket channel for peer address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_94

    .line 269
    .end local v2           #sc:Ljava/nio/channels/SocketChannel;
    :cond_8f
    const/4 v3, 0x1

    .line 271
    .end local v1           #s:Ljava/net/Socket;
    :goto_90
    monitor-exit p0

    return v3

    :cond_92
    const/4 v3, 0x0

    goto :goto_90

    .line 249
    .end local v0           #entry:Lorg/snmp4j/transport/DefaultTcpTransportMapping$SocketEntry;
    :catchall_94
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getConnectionTimeout()J
    .registers 3

    .prologue
    .line 299
    iget-wide v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->connectionTimeout:J

    return-wide v0
.end method

.method public getMaxInboundMessageSize()I
    .registers 2

    .prologue
    .line 362
    invoke-super {p0}, Lorg/snmp4j/transport/TcpTransportMapping;->getMaxInboundMessageSize()I

    move-result v0

    return v0
.end method

.method public getMessageLengthDecoder()Lorg/snmp4j/transport/MessageLengthDecoder;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->messageLengthDecoder:Lorg/snmp4j/transport/MessageLengthDecoder;

    return-object v0
.end method

.method public getPriority()I
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    .line 147
    .local v0, st:Lorg/snmp4j/util/WorkerTask;
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_d

    .line 148
    check-cast v0, Ljava/lang/Thread;

    .end local v0           #st:Lorg/snmp4j/util/WorkerTask;
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    .line 151
    :goto_c
    return v1

    .restart local v0       #st:Lorg/snmp4j/util/WorkerTask;
    :cond_d
    const/4 v1, 0x5

    goto :goto_c
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    .line 179
    .local v0, st:Lorg/snmp4j/util/WorkerTask;
    if-eqz v0, :cond_b

    .line 180
    check-cast v0, Ljava/lang/Thread;

    .end local v0           #st:Lorg/snmp4j/util/WorkerTask;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 183
    :goto_a
    return-object v1

    .restart local v0       #st:Lorg/snmp4j/util/WorkerTask;
    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isListening()Z
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isServerEnabled()Z
    .registers 2

    .prologue
    .line 319
    iget-boolean v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->serverEnabled:Z

    return v0
.end method

.method public declared-synchronized listen()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    if-eqz v0, :cond_10

    .line 108
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Port already listening"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 107
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_10
    :try_start_10
    new-instance v0, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;

    invoke-direct {v0, p0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;-><init>(Lorg/snmp4j/transport/DefaultTcpTransportMapping;)V

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->serverThread:Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;

    .line 111
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->getThreadFactory()Lorg/snmp4j/util/ThreadFactory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DefaultTCPTransportMapping_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->getAddress()Lorg/snmp4j/smi/TcpAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->serverThread:Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lorg/snmp4j/util/ThreadFactory;->createWorkerThread(Ljava/lang/String;Lorg/snmp4j/util/WorkerTask;Z)Lorg/snmp4j/util/WorkerTask;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    .line 113
    iget-wide v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->connectionTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4d

    .line 115
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->getTimerFactory()Lorg/snmp4j/util/TimerFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/snmp4j/util/TimerFactory;->createTimer()Lorg/snmp4j/util/CommonTimer;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->socketCleaner:Lorg/snmp4j/util/CommonTimer;

    .line 117
    :cond_4d
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    invoke-interface {v0}, Lorg/snmp4j/util/WorkerTask;->run()V
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_d

    .line 118
    monitor-exit p0

    return-void
.end method

.method public sendMessage(Lorg/snmp4j/smi/Address;[B)V
    .registers 4
    .parameter "address"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    if-nez v0, :cond_7

    .line 287
    invoke-virtual {p0}, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->listen()V

    .line 289
    :cond_7
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->serverThread:Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;

    invoke-virtual {v0, p1, p2}, Lorg/snmp4j/transport/DefaultTcpTransportMapping$ServerThread;->sendMessage(Lorg/snmp4j/smi/Address;[B)V

    .line 290
    return-void
.end method

.method public setConnectionTimeout(J)V
    .registers 3
    .parameter "connectionTimeout"

    .prologue
    .line 311
    iput-wide p1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->connectionTimeout:J

    .line 312
    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .registers 2
    .parameter "maxInboundMessageSize"

    .prologue
    .line 373
    iput p1, p0, Lorg/snmp4j/transport/AbstractTransportMapping;->maxInboundMessageSize:I

    .line 374
    return-void
.end method

.method public setMessageLengthDecoder(Lorg/snmp4j/transport/MessageLengthDecoder;)V
    .registers 3
    .parameter "messageLengthDecoder"

    .prologue
    .line 348
    if-nez p1, :cond_8

    .line 349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 351
    :cond_8
    iput-object p1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->messageLengthDecoder:Lorg/snmp4j/transport/MessageLengthDecoder;

    .line 352
    return-void
.end method

.method public setPriority(I)V
    .registers 4
    .parameter "newPriority"

    .prologue
    .line 132
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    .line 133
    .local v0, st:Lorg/snmp4j/util/WorkerTask;
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_b

    .line 134
    check-cast v0, Ljava/lang/Thread;

    .end local v0           #st:Lorg/snmp4j/util/WorkerTask;
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 136
    :cond_b
    return-void
.end method

.method public setServerEnabled(Z)V
    .registers 2
    .parameter "serverEnabled"

    .prologue
    .line 336
    iput-boolean p1, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->serverEnabled:Z

    .line 337
    return-void
.end method

.method protected setSocketOptions(Ljava/net/ServerSocket;)V
    .registers 2
    .parameter "serverSocket"

    .prologue
    .line 394
    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 165
    iget-object v0, p0, Lorg/snmp4j/transport/DefaultTcpTransportMapping;->server:Lorg/snmp4j/util/WorkerTask;

    .line 166
    .local v0, st:Lorg/snmp4j/util/WorkerTask;
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_b

    .line 167
    check-cast v0, Ljava/lang/Thread;

    .end local v0           #st:Lorg/snmp4j/util/WorkerTask;
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 169
    :cond_b
    return-void
.end method
