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

.field private mAcceptSocketList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/net/Socket;",
            ">;>;"
        }
    .end annotation
.end field

.field private serverSock:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 273
    const/4 v0, 0x0

    sput v0, Lcom/samsung/http/HTTPServer;->faultCount:I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 83
    iput-object v1, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    .line 211
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/http/HTTPServer;->httpRequestListenerList:Lcom/samsung/util/ListenerList;

    .line 212
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/http/HTTPServer;->httpReceivedListenerList:Lcom/samsung/util/ListenerList;

    .line 272
    iput-object v1, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/http/HTTPServer;->mAcceptSocketList:Ljava/util/ArrayList;

    .line 75
    iput-object v1, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 76
    return-void
.end method

.method public static getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 64
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, osName:Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
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

    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, sock:Ljava/net/Socket;
    iget-object v4, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v4, :cond_7

    .line 194
    :goto_6
    return-object v3

    .line 177
    :cond_7
    :try_start_7
    iget-object v4, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 178
    const v4, 0x88b8

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 179
    const v4, 0x4b000

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 180
    const v4, 0x4b000

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 181
    const/4 v4, 0x1

    const/16 v5, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 182
    const-string v4, "HTTPServer"

    invoke-virtual {v2}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/api/Debugs;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_34

    move-object v3, v2

    .line 183
    goto :goto_6

    .line 185
    :catch_34
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    if-eqz v2, :cond_3a

    .line 188
    :try_start_37
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_42

    .line 193
    :cond_3a
    :goto_3a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    goto :goto_6

    .line 189
    :catch_42
    move-exception v1

    .line 191
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a
.end method

.method public addReceivedListener(Lcom/samsung/http/HTTPReceivedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->httpReceivedListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public addRequestListener(Lcom/samsung/http/HTTPRequestListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->httpRequestListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public close()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 151
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v3, :cond_8

    .line 164
    :goto_7
    return v1

    .line 154
    :cond_8
    :try_start_8
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_14

    .line 160
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 161
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 162
    iput v2, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    goto :goto_7

    .line 156
    :catch_14
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    :try_start_15
    invoke-static {v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_20

    .line 160
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 161
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 162
    iput v2, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    move v1, v2

    .line 158
    goto :goto_7

    .line 159
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_20
    move-exception v1

    .line 160
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 161
    iput-object v4, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 162
    iput v2, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    .line 163
    throw v1
.end method

.method public getBindAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_7

    .line 102
    const-string v0, ""

    .line 103
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
    .line 204
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

    .line 127
    iget-object v2, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v2, :cond_6

    .line 142
    :goto_5
    return v1

    .line 131
    :cond_6
    :try_start_6
    invoke-static {p1}, Lcom/samsung/util/IPAddressUtil;->getIPAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 132
    iput p2, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    .line 135
    new-instance v2, Ljava/net/ServerSocket;

    iget v3, p0, Lcom/samsung/http/HTTPServer;->bindPort:I

    const/16 v4, 0x200

    iget-object v5, p0, Lcom/samsung/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-direct {v2, v3, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 136
    iget-object v2, p0, Lcom/samsung/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_25} :catch_26

    goto :goto_5

    .line 138
    :catch_26
    move-exception v0

    .line 139
    .local v0, e:Ljava/io/IOException;
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTPServer: open failed :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public performReceivedListener(Ljava/lang/String;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 261
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->httpReceivedListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3}, Lcom/samsung/util/ListenerList;->size()I

    move-result v1

    .line 262
    .local v1, listenerSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    if-lt v2, v1, :cond_a

    .line 266
    return-void

    .line 263
    :cond_a
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->httpReceivedListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3, v2}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/http/HTTPReceivedListener;

    .line 264
    .local v0, listener:Lcom/samsung/http/HTTPReceivedListener;
    invoke-interface {v0, p1}, Lcom/samsung/http/HTTPReceivedListener;->httptRecieved(Ljava/lang/String;)V

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public performRequestListener(Lcom/samsung/http/HTTPRequest;)V
    .registers 6
    .parameter "httpReq"

    .prologue
    .line 234
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->httpRequestListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3}, Lcom/samsung/util/ListenerList;->size()I

    move-result v1

    .line 235
    .local v1, listenerSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    if-lt v2, v1, :cond_a

    .line 239
    return-void

    .line 236
    :cond_a
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->httpRequestListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v3, v2}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/http/HTTPRequestListener;

    .line 237
    .local v0, listener:Lcom/samsung/http/HTTPRequestListener;
    invoke-interface {v0, p1}, Lcom/samsung/http/HTTPRequestListener;->httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public run()V
    .registers 8

    .prologue
    const/16 v1, 0x20

    .line 278
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_9

    .line 331
    :goto_8
    return-void

    .line 282
    :cond_9
    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 283
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x23

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 285
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 286
    const-string v1, "http server started!!!!"

    invoke-static {v1}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 288
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_30

    .line 328
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 329
    const-string v0, "http server stopped!!!!"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    goto :goto_8

    .line 289
    :cond_30
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 293
    :try_start_33
    const-string v1, "accept ..."

    invoke-static {v1}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 294
    :goto_38
    sget v1, Lcom/samsung/http/HTTPServerThread;->usedServerSocket:I

    const/16 v3, 0x64

    if-gt v1, v3, :cond_85

    .line 298
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServer;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_79

    .line 301
    sget v3, Lcom/samsung/http/HTTPServerThread;->usedServerSocket:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/samsung/http/HTTPServerThread;->usedServerSocket:I

    .line 306
    iget-object v3, p0, Lcom/samsung/http/HTTPServer;->mAcceptSocketList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4d} :catch_83

    .line 308
    :try_start_4d
    iget-object v4, p0, Lcom/samsung/http/HTTPServer;->mAcceptSocketList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_89

    .line 311
    :try_start_58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Accept success : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/samsung/http/HTTPServerThread;->usedServerSocket:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 312
    new-instance v3, Lcom/samsung/http/HTTPServerThread;

    invoke-direct {v3, p0, v1}, Lcom/samsung/http/HTTPServerThread;-><init>(Lcom/samsung/http/HTTPServer;Ljava/net/Socket;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 313
    const-string v3, "httpServThread ..."

    invoke-static {v3}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 316
    :cond_79
    if-nez v1, :cond_23

    .line 317
    const-string v1, "HTTPServer class"

    const-string v3, "accept return socket is null!!!!"

    invoke-static {v1, v3}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 321
    :catch_83
    move-exception v1

    goto :goto_23

    .line 295
    :cond_85
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_88} :catch_83

    goto :goto_38

    .line 306
    :catchall_89
    move-exception v1

    :try_start_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v1
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8c} :catch_83
.end method

.method public declared-synchronized start()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 335
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 336
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 337
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

    .line 339
    :cond_33
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 340
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 341
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_47

    .line 342
    monitor-exit p0

    return v3

    .line 335
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()Z
    .registers 4

    .prologue
    .line 349
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/http/HTTPServer;->close()Z

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 356
    iget-object v1, p0, Lcom/samsung/http/HTTPServer;->mAcceptSocketList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3e

    .line 358
    :try_start_a
    const-string v0, "http server stop : close of all !!!!"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->info(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->mAcceptSocketList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    .line 375
    iget-object v0, p0, Lcom/samsung/http/HTTPServer;->mAcceptSocketList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 356
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_3b

    .line 378
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 359
    :cond_24
    :try_start_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_3b

    .line 363
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 364
    if-eqz v0, :cond_15

    .line 366
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_3b
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_35} :catch_36

    goto :goto_15

    .line 369
    :catch_36
    move-exception v0

    .line 371
    :try_start_37
    invoke-static {v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    goto :goto_15

    .line 356
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 349
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
