.class public Lcom/samsung/swift/service/fx/UploadServer;
.super Ljava/lang/Object;
.source "UploadServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;
    }
.end annotation


# static fields
.field public static final ACCESS_INTENT_COUNTER:I = 0xbb8

.field static final MAX_CONNECTIONS:I = 0x5

.field public static final SOCKET_TIMEOUT:I = 0x3a98

.field public static final SO_COUNTER_DEFAULT_VALUE:I = 0x2ee

.field public static final THREAD_SLEEP_TIME:J = 0x14L

.field private static _instance:Lcom/samsung/swift/service/fx/UploadServer;


# instance fields
.field activeConnectionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;",
            "Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;",
            ">;"
        }
    .end annotation
.end field

.field activeConnections:I

.field private iob:I

.field private netb:I

.field private port:I

.field private running:Z

.field private server:Ljava/net/ServerSocket;

.field private serverThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(I)V
    .registers 4
    .parameter "port"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->running:Z

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnections:I

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnectionList:Ljava/util/Map;

    .line 174
    iput p1, p0, Lcom/samsung/swift/service/fx/UploadServer;->port:I

    .line 175
    const-string v0, "netb"

    const/high16 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->netb:I

    .line 176
    const-string v0, "iob"

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->iob:I

    .line 177
    return-void
.end method

.method static Log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "c"
    .parameter "m"

    .prologue
    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/swift/service/fx/UploadServer;Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/samsung/swift/service/fx/UploadServer;->connectionReleased(Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/swift/service/fx/UploadServer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->iob:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/swift/service/fx/UploadServer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->running:Z

    return v0
.end method

.method private declared-synchronized connectionReleased(Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;)V
    .registers 3
    .parameter "connectionHandler"

    .prologue
    .line 332
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnectionList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnections:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnections:I

    .line 334
    iget v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnections:I

    if-gez v0, :cond_15

    const/4 v0, 0x0

    :goto_11
    iput v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnections:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_18

    .line 335
    monitor-exit p0

    return-void

    .line 334
    :cond_15
    :try_start_15
    iget v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnections:I
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_18

    goto :goto_11

    .line 332
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/samsung/swift/service/fx/UploadServer;
    .registers 2

    .prologue
    .line 191
    sget-object v0, Lcom/samsung/swift/service/fx/UploadServer;->_instance:Lcom/samsung/swift/service/fx/UploadServer;

    if-nez v0, :cond_d

    .line 193
    new-instance v0, Lcom/samsung/swift/service/fx/UploadServer;

    const/16 v1, 0x1a86

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/fx/UploadServer;-><init>(I)V

    sput-object v0, Lcom/samsung/swift/service/fx/UploadServer;->_instance:Lcom/samsung/swift/service/fx/UploadServer;

    .line 196
    :cond_d
    sget-object v0, Lcom/samsung/swift/service/fx/UploadServer;->_instance:Lcom/samsung/swift/service/fx/UploadServer;

    return-object v0
.end method

.method public static getInstance(I)Lcom/samsung/swift/service/fx/UploadServer;
    .registers 2
    .parameter "port"

    .prologue
    .line 181
    sget-object v0, Lcom/samsung/swift/service/fx/UploadServer;->_instance:Lcom/samsung/swift/service/fx/UploadServer;

    if-nez v0, :cond_b

    .line 183
    new-instance v0, Lcom/samsung/swift/service/fx/UploadServer;

    invoke-direct {v0, p0}, Lcom/samsung/swift/service/fx/UploadServer;-><init>(I)V

    sput-object v0, Lcom/samsung/swift/service/fx/UploadServer;->_instance:Lcom/samsung/swift/service/fx/UploadServer;

    .line 186
    :cond_b
    sget-object v0, Lcom/samsung/swift/service/fx/UploadServer;->_instance:Lcom/samsung/swift/service/fx/UploadServer;

    return-object v0
.end method

.method public static getTmpFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, fos:Ljava/io/FileInputStream;
    const/16 v4, 0x100

    new-array v2, v4, [B

    .line 152
    .local v2, input:[B
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 153
    .local v1, i:I
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 154
    if-lez v1, :cond_42

    .line 156
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Ljava/lang/String;-><init>([BII)V

    .line 157
    .local v3, s:Ljava/lang/String;
    const-string v4, "ext="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ext="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    .end local v3           #s:Ljava/lang/String;
    :goto_41
    return-object v4

    :cond_42
    const/4 v4, 0x0

    goto :goto_41
.end method

.method public static isRunning()Z
    .registers 1

    .prologue
    .line 201
    sget-object v0, Lcom/samsung/swift/service/fx/UploadServer;->_instance:Lcom/samsung/swift/service/fx/UploadServer;

    if-eqz v0, :cond_b

    .line 202
    invoke-static {}, Lcom/samsung/swift/service/fx/UploadServer;->getInstance()Lcom/samsung/swift/service/fx/UploadServer;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/swift/service/fx/UploadServer;->running:Z

    .line 204
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    const/16 v0, 0x1a86

    .line 129
    .local v0, port:I
    array-length v1, p0

    if-lez v1, :cond_c

    .line 131
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    :cond_c
    invoke-static {v0}, Lcom/samsung/swift/service/fx/UploadServer;->getInstance(I)Lcom/samsung/swift/service/fx/UploadServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/fx/UploadServer;->startup()V

    .line 135
    return-void
.end method

.method private declared-synchronized maxConnectionExceeded(Ljava/net/Socket;)Z
    .registers 4
    .parameter "socket"

    .prologue
    .line 321
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnections:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_f

    .line 323
    iget v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnections:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    .line 324
    const/4 v0, 0x0

    .line 327
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_d

    .line 321
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static threadSleep()V
    .registers 2

    .prologue
    .line 141
    const-wide/16 v0, 0x14

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 146
    :goto_5
    return-void

    .line 143
    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public getPort()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->port:I

    return v0
.end method

.method public isAllowedConnection(Ljava/lang/String;)Z
    .registers 6
    .parameter "ipAddress"

    .prologue
    .line 244
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/security/SecurityManager;->getConnections()[Lcom/samsung/swift/security/Connection;

    move-result-object v0

    .line 245
    .local v0, cnx:[Lcom/samsung/swift/security/Connection;
    array-length v2, v0

    if-eqz v2, :cond_28

    .line 247
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 249
    aget-object v2, v0, v1

    invoke-interface {v2}, Lcom/samsung/swift/security/Connection;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 251
    aget-object v2, v0, v1

    invoke-interface {v2}, Lcom/samsung/swift/security/Connection;->isWhiteListed()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 252
    const/4 v2, 0x1

    .line 260
    .end local v1           #i:I
    :goto_24
    return v2

    .line 247
    .restart local v1       #i:I
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 259
    .end local v1           #i:I
    :cond_28
    const-string v2, "UploadServer.isAllowedConnection()"

    const-string v3, "##### ***** Connection denied"

    invoke-static {v2, v3}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 282
    iput-boolean v3, p0, Lcom/samsung/swift/service/fx/UploadServer;->running:Z

    .line 283
    :cond_4
    :goto_4
    iget-boolean v3, p0, Lcom/samsung/swift/service/fx/UploadServer;->running:Z

    if-eqz v3, :cond_64

    .line 287
    :try_start_8
    const-string v3, "UploadServer.run()"

    const-string v4, "##### ***** Waiting for client"

    invoke-static {v3, v4}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lcom/samsung/swift/service/fx/UploadServer;->server:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 290
    .local v2, socket:Ljava/net/Socket;
    invoke-direct {p0, v2}, Lcom/samsung/swift/service/fx/UploadServer;->maxConnectionExceeded(Ljava/net/Socket;)Z

    move-result v3

    if-nez v3, :cond_6a

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/swift/service/fx/UploadServer;->isAllowedConnection(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 292
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 293
    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 295
    new-instance v0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;

    invoke-direct {v0, p0, v2}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;-><init>(Lcom/samsung/swift/service/fx/UploadServer;Ljava/net/Socket;)V

    .line 296
    .local v0, connectionHandler:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;
    iget-object v3, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnectionList:Ljava/util/Map;

    invoke-interface {v3, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3c} :catch_3d

    goto :goto_4

    .line 303
    .end local v0           #connectionHandler:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;
    .end local v2           #socket:Ljava/net/Socket;
    :catch_3d
    move-exception v1

    .line 305
    .local v1, e:Ljava/io/IOException;
    const-string v3, "UploadServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### ***** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/samsung/swift/service/fx/UploadServer;->server:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 309
    iput-object v6, p0, Lcom/samsung/swift/service/fx/UploadServer;->server:Ljava/net/ServerSocket;

    .line 315
    .end local v1           #e:Ljava/io/IOException;
    :cond_64
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/swift/service/fx/UploadServer;->running:Z

    .line 316
    iput-object v6, p0, Lcom/samsung/swift/service/fx/UploadServer;->serverThread:Ljava/lang/Thread;

    .line 317
    return-void

    .line 300
    .restart local v2       #socket:Ljava/net/Socket;
    :cond_6a
    :try_start_6a
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_3d

    goto :goto_4
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->serverThread:Ljava/lang/Thread;

    if-eqz v0, :cond_16

    .line 269
    const-string v0, "UploadServer.shutdown()"

    const-string v1, "##### ***** shutdown ..."

    invoke-static {v0, v1}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/swift/service/fx/UploadServer;->_instance:Lcom/samsung/swift/service/fx/UploadServer;

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->running:Z

    .line 272
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer;->server:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 278
    :cond_16
    :goto_16
    return-void

    .line 275
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public shutdownActiveConnections()V
    .registers 4

    .prologue
    .line 234
    const-string v1, "UploadServer.shutdownActiveConnections()"

    const-string v2, "##### ***** Shutdown of Active connections requested "

    invoke-static {v1, v2}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer;->activeConnectionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 236
    .local v0, connectionHandlerItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;>;"
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;

    invoke-virtual {v1}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->close()V

    goto :goto_11

    .line 240
    :cond_21
    return-void
.end method

.method public startup()V
    .registers 5

    .prologue
    .line 214
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer;->serverThread:Ljava/lang/Thread;

    if-nez v1, :cond_34

    .line 218
    :try_start_4
    const-string v1, "UploadServer.startup()"

    const-string v2, "##### ***** startup ..."

    invoke-static {v1, v2}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer;->server:Ljava/net/ServerSocket;

    .line 220
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer;->server:Ljava/net/ServerSocket;

    iget v2, p0, Lcom/samsung/swift/service/fx/UploadServer;->netb:I

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 221
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer;->server:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget v3, p0, Lcom/samsung/swift/service/fx/UploadServer;->port:I

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 222
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "UploadServerThread"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer;->serverThread:Ljava/lang/Thread;

    .line 223
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_34} :catch_35

    .line 230
    :cond_34
    :goto_34
    return-void

    .line 225
    :catch_35
    move-exception v0

    .line 227
    .local v0, e:Ljava/io/IOException;
    const-string v1, "UploadServer.startup()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### ***** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method
