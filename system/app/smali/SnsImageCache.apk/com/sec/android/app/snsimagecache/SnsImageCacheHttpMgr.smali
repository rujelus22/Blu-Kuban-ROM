.class public Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;
.super Ljava/lang/Thread;
.source "SnsImageCacheHttpMgr.java"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mConnectionMgr:Lorg/apache/http/conn/ClientConnectionManager;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mHttpParams:Lorg/apache/http/params/HttpParams;

.field private mHttpReqQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mReceivedFileDir:Ljava/lang/String;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    .line 192
    iput-object p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mAppContext:Landroid/content/Context;

    .line 193
    iput-object v2, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 194
    iput-object v2, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mUserAgent:Ljava/lang/String;

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->invokeHttpSendingThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->deliverHttpResponse(Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;)V

    return-void
.end method

.method private deliverHttpResponse(Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;)V
    .registers 9
    .parameter "resp"

    .prologue
    .line 229
    const/4 v2, 0x1

    .line 232
    .local v2, threadMessage:I
    iget-object v3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 233
    iget-object v3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 235
    :cond_16
    iget-object v3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mAppContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    check-cast v3, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    invoke-virtual {v3}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 236
    .local v0, hdr:Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 237
    .local v1, msg:Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 238
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    return-void
.end method

.method private invokeHttpSendingThread()V
    .registers 5

    .prologue
    .line 252
    new-instance v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpSendingThread;-><init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;)V

    .line 253
    .local v0, sendRunnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-string v3, "SnsHttpSendingThread"

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 254
    .local v1, sendThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 255
    return-void
.end method


# virtual methods
.method public abortRequest(I)V
    .registers 6
    .parameter "reqID"

    .prologue
    .line 353
    iget-object v3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 355
    iget-object v3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 356
    .local v2, queueSize:I
    if-lez v2, :cond_2d

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, httpReq:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_2d

    .line 359
    iget-object v3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #httpReq:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
    check-cast v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;

    .line 360
    .restart local v0       #httpReq:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
    invoke-virtual {v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->getFwkReqID()I

    move-result v3

    if-ne v3, p1, :cond_33

    .line 363
    invoke-virtual {v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->getSendingFlag()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 364
    invoke-virtual {v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->abort()V

    .line 368
    :cond_28
    iget-object v3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 373
    .end local v0           #httpReq:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
    .end local v1           #i:I
    :cond_2d
    iget-object v3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 374
    return-void

    .line 358
    .restart local v0       #httpReq:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
    .restart local v1       #i:I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public dequeueHttpRequest(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;)V
    .registers 3
    .parameter "httpReq"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 281
    return-void
.end method

.method public enqueueHttpRequest(ILjava/lang/String;)V
    .registers 5
    .parameter "reqID"
    .parameter "reqUri"

    .prologue
    .line 264
    new-instance v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;

    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mUserAgent:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v0, httpReq:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 270
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public getHttpReqQueue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReceivedFileDir()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mReceivedFileDir:Ljava/lang/String;

    return-object v0
.end method

.method public getSemaphore()Ljava/util/concurrent/Semaphore;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method public initAndStart()V
    .registers 16

    .prologue
    const v14, 0x9c40

    const/16 v13, 0x1e

    .line 105
    const/16 v3, 0x1e

    .line 106
    .local v3, HTTP_MAX_CONNECTION:I
    const v0, 0x9c40

    .line 107
    .local v0, CONNECTION_TIMEOUT_DURATION:I
    const/16 v1, 0x50

    .line 108
    .local v1, DEFAULT_PORT:I
    const/16 v2, 0x1bb

    .line 109
    .local v2, DEFAULT_SSL_PORT:I
    const-string v5, "ReceivedFiles"

    .line 110
    .local v5, RECEIVED_FILE_DIR_NAME:Ljava/lang/String;
    const-string v4, "Samsung mobiles/android"

    .line 112
    .local v4, HTTP_USER_AGENT_STRING:Ljava/lang/String;
    const/4 v7, 0x0

    .line 113
    .local v7, proxyAddr:Ljava/lang/String;
    const/16 v8, 0x50

    .line 116
    .local v8, proxyPort:I
    const-string v10, "Samsung mobiles/android"

    iput-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mUserAgent:Ljava/lang/String;

    .line 117
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mAppContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ReceivedFiles"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mReceivedFileDir:Ljava/lang/String;

    .line 121
    new-instance v10, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v10}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 122
    iget-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v11, "http.conn-manager.max-total"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 123
    iget-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v11, "http.conn-manager.max-per-route"

    new-instance v12, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v12, v13}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-interface {v10, v11, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 125
    iget-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v11, "http.protocol.expect-continue"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 128
    iget-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v10, v14}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 129
    iget-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v10, v14}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 132
    iget-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    sget-object v11, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v10, v11}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 134
    iget-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 135
    if-eqz v7, :cond_f8

    .line 136
    iget-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v8

    .line 138
    new-instance v6, Lorg/apache/http/HttpHost;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 139
    .local v6, httpProxy:Lorg/apache/http/HttpHost;
    iget-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v11, "http.route.default-proxy"

    invoke-interface {v10, v11, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 141
    invoke-static {}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_bb

    .line 142
    const-string v10, "SNS_IMAGE_CACHE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SnsImageCacheHttpMgr : initAndStart() : [android.net.Proxy.getHost] : Proxy Address = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v6           #httpProxy:Lorg/apache/http/HttpHost;
    :cond_bb
    :goto_bb
    new-instance v9, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 153
    .local v9, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v10, Lorg/apache/http/conn/scheme/Scheme;

    const-string v11, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v12

    const/16 v13, 0x50

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 160
    new-instance v10, Lorg/apache/http/conn/scheme/Scheme;

    const-string v11, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v12

    const/16 v13, 0x1bb

    invoke-direct {v10, v11, v12, v13}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 166
    new-instance v10, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v11, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v10, v11, v9}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mConnectionMgr:Lorg/apache/http/conn/ClientConnectionManager;

    .line 167
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v11, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mConnectionMgr:Lorg/apache/http/conn/ClientConnectionManager;

    iget-object v12, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->start()V

    .line 171
    return-void

    .line 147
    .end local v9           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_f8
    const-string v10, "SNS_IMAGE_CACHE"

    const-string v11, "SnsImageCacheHttpMgr : initAndStart() : [android.net.Proxy.getHost] : NO PROXY ADDRESS"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb
.end method

.method public registerHttpScheme(I)V
    .registers 6
    .parameter "port"

    .prologue
    .line 179
    invoke-static {}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 180
    const-string v0, "SNS_IMAGE_CACHE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnsHttpMgr : registerHttpScheme() : Port = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 184
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 204
    new-instance v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr$1;-><init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;)V

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->mHandler:Landroid/os/Handler;

    .line 225
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 226
    return-void
.end method
