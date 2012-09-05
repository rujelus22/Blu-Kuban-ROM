.class Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
.super Ljava/lang/Thread;
.source "StreamingHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/stream/StreamingHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerThread"
.end annotation


# instance fields
.field private final mAllowedToStreamFile:Lcom/google/android/music/dl/ContentIdentifier;

.field private mHandler:Lcom/google/android/music/dl/stream/StreamRequestHandler;

.field private final mSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/stream/StreamingHttpServer;Ljava/net/Socket;Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 5
    .parameter
    .parameter "socket"
    .parameter "allowedToStreamFile"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    .line 184
    const-string v0, "StreamingHttpServer.WorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->setDaemon(Z)V

    .line 186
    iput-object p2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    .line 187
    iput-object p3, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mAllowedToStreamFile:Lcom/google/android/music/dl/ContentIdentifier;

    .line 188
    return-void
.end method


# virtual methods
.method public getRequestedDownload()Lcom/google/android/music/dl/DownloadOrder;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mHandler:Lcom/google/android/music/dl/stream/StreamRequestHandler;

    if-eqz v0, :cond_b

    .line 247
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mHandler:Lcom/google/android/music/dl/stream/StreamRequestHandler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamRequestHandler;->getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 249
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public run()V
    .registers 11

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    new-instance v7, Lcom/google/android/music/dl/stream/StreamRequestHandler;

    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;
    invoke-static {v8}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Lcom/google/android/music/dl/DownloadManager;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mAllowedToStreamFile:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-direct {v7, v8, v9}, Lcom/google/android/music/dl/stream/StreamRequestHandler;-><init>(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/dl/ContentIdentifier;)V

    iput-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mHandler:Lcom/google/android/music/dl/stream/StreamRequestHandler;

    .line 195
    :try_start_10
    new-instance v1, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_df
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_88

    .line 197
    .end local v0           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .local v1, conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    :try_start_15
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    iget-object v8, v8, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v1, v7, v8}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 199
    new-instance v4, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v4}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 200
    .local v4, processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    new-instance v7, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v7}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v4, v7}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 201
    new-instance v7, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v7}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v4, v7}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 203
    new-instance v5, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v5}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    .line 205
    .local v5, registry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    const-string v7, "*"

    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mHandler:Lcom/google/android/music/dl/stream/StreamRequestHandler;

    invoke-virtual {v5, v7, v8}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 207
    new-instance v6, Lorg/apache/http/protocol/HttpService;

    new-instance v7, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v7}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    new-instance v8, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v8}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    invoke-direct {v6, v4, v7, v8}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 210
    .local v6, service:Lorg/apache/http/protocol/HttpService;
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    iget-object v7, v7, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v6, v7}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 211
    invoke-virtual {v6, v5}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    .line 213
    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 215
    .local v3, httpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-virtual {v6, v1, v3}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_61
    .catchall {:try_start_15 .. :try_end_61} :catchall_112
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_61} :catch_115

    .line 231
    if-eqz v1, :cond_79

    .line 232
    :try_start_63
    invoke-virtual {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_83

    .line 239
    :cond_66
    :goto_66
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v8

    monitor-enter v8

    .line 240
    :try_start_6d
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v8
    :try_end_77
    .catchall {:try_start_6d .. :try_end_77} :catchall_85

    move-object v0, v1

    .line 243
    .end local v1           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .end local v3           #httpContext:Lorg/apache/http/protocol/HttpContext;
    .end local v4           #processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    .end local v5           #registry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    .end local v6           #service:Lorg/apache/http/protocol/HttpService;
    .restart local v0       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    :goto_78
    return-void

    .line 233
    .end local v0           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v1       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v3       #httpContext:Lorg/apache/http/protocol/HttpContext;
    .restart local v4       #processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    .restart local v5       #registry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    .restart local v6       #service:Lorg/apache/http/protocol/HttpService;
    :cond_79
    :try_start_79
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    if-eqz v7, :cond_66

    .line 234
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_82} :catch_83

    goto :goto_66

    .line 236
    :catch_83
    move-exception v7

    goto :goto_66

    .line 241
    :catchall_85
    move-exception v7

    :try_start_86
    monitor-exit v8
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v7

    .line 216
    .end local v1           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .end local v3           #httpContext:Lorg/apache/http/protocol/HttpContext;
    .end local v4           #processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    .end local v5           #registry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    .end local v6           #service:Lorg/apache/http/protocol/HttpService;
    .restart local v0       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    :catch_88
    move-exception v2

    .line 221
    .local v2, e:Ljava/lang/Exception;
    :goto_89
    :try_start_89
    instance-of v7, v2, Lorg/apache/http/ConnectionClosedException;

    if-nez v7, :cond_9d

    instance-of v7, v2, Ljava/net/SocketException;

    if-eqz v7, :cond_c2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Connection reset by peer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 224
    :cond_9d
    sget-boolean v7, Lcom/google/android/music/dl/stream/StreamingHttpServer;->LOCAL_LOGV:Z

    if-eqz v7, :cond_a8

    const-string v7, "Streamer"

    const-string v8, "StreamingHttpServer.Worker connection closed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_89 .. :try_end_a8} :catchall_df

    .line 231
    :cond_a8
    :goto_a8
    if-eqz v0, :cond_f7

    .line 232
    :try_start_aa
    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_101

    .line 239
    :cond_ad
    :goto_ad
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v8

    monitor-enter v8

    .line 240
    :try_start_b4
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v8

    goto :goto_78

    :catchall_bf
    move-exception v7

    monitor-exit v8
    :try_end_c1
    .catchall {:try_start_b4 .. :try_end_c1} :catchall_bf

    throw v7

    .line 226
    :cond_c2
    :try_start_c2
    const-string v7, "Streamer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP server disrupted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_de
    .catchall {:try_start_c2 .. :try_end_de} :catchall_df

    goto :goto_a8

    .line 230
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_df
    move-exception v7

    .line 231
    :goto_e0
    if-eqz v0, :cond_103

    .line 232
    :try_start_e2
    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_10d

    .line 239
    :cond_e5
    :goto_e5
    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v8

    monitor-enter v8

    .line 240
    :try_start_ec
    iget-object v9, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->this$0:Lcom/google/android/music/dl/stream/StreamingHttpServer;

    #getter for: Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;
    invoke-static {v9}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v8
    :try_end_f6
    .catchall {:try_start_ec .. :try_end_f6} :catchall_10f

    throw v7

    .line 233
    .restart local v2       #e:Ljava/lang/Exception;
    :cond_f7
    :try_start_f7
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    if-eqz v7, :cond_ad

    .line 234
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_100} :catch_101

    goto :goto_ad

    .line 236
    :catch_101
    move-exception v7

    goto :goto_ad

    .line 233
    .end local v2           #e:Ljava/lang/Exception;
    :cond_103
    :try_start_103
    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    if-eqz v8, :cond_e5

    .line 234
    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_10c} :catch_10d

    goto :goto_e5

    .line 236
    :catch_10d
    move-exception v8

    goto :goto_e5

    .line 241
    :catchall_10f
    move-exception v7

    :try_start_110
    monitor-exit v8
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw v7

    .line 230
    .end local v0           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v1       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    :catchall_112
    move-exception v7

    move-object v0, v1

    .end local v1           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v0       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    goto :goto_e0

    .line 216
    .end local v0           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v1       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    :catch_115
    move-exception v2

    move-object v0, v1

    .end local v1           #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    .restart local v0       #conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    goto/16 :goto_89
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->interrupt()V

    .line 256
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    .line 259
    :goto_8
    return-void

    .line 257
    :catch_9
    move-exception v0

    goto :goto_8
.end method
