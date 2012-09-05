.class public Lcom/samsung/http/HTTPServer;
.super Ljava/lang/Object;
.source "HTTPServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static faultCount:I


# instance fields
.field private bindAddr:Ljava/net/InetAddress;

.field private bindPort:I

.field private httpReceivedListenerList:Lcom/samsung/util/ListenerList;

.field private httpRequestListenerList:Lcom/samsung/util/ListenerList;

.field private httpServerThread:Ljava/lang/Thread;

.field private serverSock:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 269
    const/4 v0, 0x0

    sput v0, Lcom/samsung/http/HTTPServer;->faultCount:I

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 79
    iput-object v1, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    .line 207
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/http/HTTPServer;->httpRequestListenerList:Lcom/samsung/util/ListenerList;

    .line 208
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/http/HTTPServer;->httpReceivedListenerList:Lcom/samsung/util/ListenerList;

    .line 268
    iput-object v1, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 71
    iput-object v1, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 72
    return-void
.end method

.method public static getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 60
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, osName:Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, osVer:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DoaHTTP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, sock:Ljava/net/Socket;
    iget-object v4, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v4, :cond_7

    .line 190
    :goto_6
    return-object v3

    .line 173
    :cond_7
    :try_start_7
    iget-object v4, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 174
    const v4, 0x88b8

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 175
    const v4, 0x4b000

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 176
    const v4, 0x4b000

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 177
    const/4 v4, 0x1

    const/16 v5, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 178
    const-string v4, "HTTPServer"

    invoke-virtual {v2}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/api/Debugs;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_34

    move-object v3, v2

    .line 179
    goto :goto_6

    .line 181
    :catch_34
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    if-eqz v2, :cond_3a

    .line 184
    :try_start_37
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_42

    .line 189
    :cond_3a
    :goto_3a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    goto :goto_6

    .line 185
    :catch_42
    move-exception v1

    .line 187
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a
.end method

.method public addReceivedListener(Lcom/samsung/http/HTTPReceivedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->httpReceivedListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public addRequestListener(Lcom/samsung/http/HTTPRequestListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->httpRequestListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public close()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 147
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v3, :cond_8

    .line 160
    :goto_7
    return v1

    .line 150
    :cond_8
    :try_start_8
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_14

    .line 156
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 157
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 158
    iput v2, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    goto :goto_7

    .line 152
    :catch_14
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    :try_start_15
    invoke-static {v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_20

    .line 156
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 157
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 158
    iput v2, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    move v1, v2

    .line 154
    goto :goto_7

    .line 155
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_20
    move-exception v1

    .line 156
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 157
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 158
    iput v2, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    .line 159
    throw v1
.end method

.method public getBindAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_7

    .line 98
    const-string v0, ""

    .line 99
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public open(Ljava/lang/String;I)Z
    .registers 9
    .parameter "addr"
    .parameter "port"

    .prologue
    const/4 v1, 0x1

    .line 123
    iget-object v2, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v2, :cond_6

    .line 138
    :goto_5
    return v1

    .line 127
    :cond_6
    :try_start_6
    invoke-static {p1}, Lcom/samsung/util/IPAddressUtil;->getIPAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 128
    iput p2, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    .line 131
    new-instance v2, Ljava/net/ServerSocket;

    iget v3, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    const/16 v4, 0x200

    iget-object v5, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-direct {v2, v3, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 132
    iget-object v2, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_25} :catch_26

    goto :goto_5

    .line 134
    :catch_26
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/IOException;
    const-string v1, "HTTPServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public performReceivedListener(Ljava/lang/String;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 257
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->httpReceivedListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3}, Lcom/samsung/util/ListenerList;->size()I

    move-result v1

    .line 258
    .local v1, listenerSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    if-lt v2, v1, :cond_a

    .line 262
    return-void

    .line 259
    :cond_a
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->httpReceivedListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3, v2}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/http/HTTPReceivedListener;

    .line 260
    .local v0, listener:Lcom/samsung/http/HTTPReceivedListener;
    invoke-interface {v0, p1}, Lcom/samsung/http/HTTPReceivedListener;->httptRecieved(Ljava/lang/String;)V

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public performRequestListener(Lcom/samsung/http/HTTPRequest;)V
    .registers 6
    .parameter "httpReq"

    .prologue
    .line 230
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->httpRequestListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3}, Lcom/samsung/util/ListenerList;->size()I

    move-result v1

    .line 231
    .local v1, listenerSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    if-lt v2, v1, :cond_a

    .line 235
    return-void

    .line 232
    :cond_a
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->httpRequestListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3, v2}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/http/HTTPRequestListener;

    .line 233
    .local v0, listener:Lcom/samsung/http/HTTPRequestListener;
    invoke-interface {v0, p1}, Lcom/samsung/http/HTTPRequestListener;->httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public run()V
    .registers 8

    .prologue
    const/16 v1, 0x20

    .line 273
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_9

    .line 320
    :goto_8
    return-void

    .line 277
    :cond_9
    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 278
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x23

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 280
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 281
    const-string v2, "http server started!!!!"

    invoke-static {v2}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 283
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    if-eq v2, v1, :cond_30

    .line 317
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 318
    const-string v0, "http server stopped!!!!"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    goto :goto_8

    .line 284
    :cond_30
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 288
    :try_start_33
    const-string v2, "accept ..."

    invoke-static {v2}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 289
    :goto_38
    sget v2, Lcom/samsung/http/HTTPServerThread;->usedServerSocket:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_77

    .line 293
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServer;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 295
    if-eqz v2, :cond_6b

    .line 296
    sget v3, Lcom/samsung/http/HTTPServerThread;->usedServerSocket:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/samsung/http/HTTPServerThread;->usedServerSocket:I

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Accept success : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/samsung/http/HTTPServerThread;->usedServerSocket:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 302
    new-instance v3, Lcom/samsung/http/HTTPServerThread;

    invoke-direct {v3, p0, v2}, Lcom/samsung/http/HTTPServerThread;-><init>(Lcom/samsung/http/HTTPServer;Ljava/net/Socket;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 303
    const-string v3, "httpServThread ..."

    invoke-static {v3}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 305
    :cond_6b
    if-nez v2, :cond_23

    .line 306
    const-string v2, "HTTPServer class"

    const-string v3, "accept return socket is null!!!!"

    invoke-static {v2, v3}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 310
    :catch_75
    move-exception v2

    goto :goto_23

    .line 290
    :cond_77
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_7a} :catch_75

    goto :goto_38
.end method

.method public declared-synchronized start()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 324
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 325
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 326
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP Accept Thread"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/http/HTTPServer;->getBindAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 328
    :cond_33
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 329
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 330
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_47

    .line 331
    monitor-exit p0

    return v3

    .line 324
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()Z
    .registers 2

    .prologue
    .line 338
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_7

    .line 339
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 338
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
