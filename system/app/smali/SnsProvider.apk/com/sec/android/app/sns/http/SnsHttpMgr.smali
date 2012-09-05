.class public Lcom/sec/android/app/sns/http/SnsHttpMgr;
.super Ljava/lang/Thread;
.source "SnsHttpMgr.java"


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
            "Lcom/sec/android/app/sns/http/SnsHttpRequest;",
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

    .line 264
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    .line 266
    iput-object p1, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mAppContext:Landroid/content/Context;

    .line 267
    iput-object v2, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 268
    iput-object v2, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mUserAgent:Ljava/lang/String;

    .line 269
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sns/http/SnsHttpMgr;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->invokeHttpSendingThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/sns/http/SnsHttpMgr;Lcom/sec/android/app/sns/response/data/SnsResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->deliverHttpResponse(Lcom/sec/android/app/sns/response/data/SnsResponse;)V

    return-void
.end method

.method private deliverHttpResponse(Lcom/sec/android/app/sns/response/data/SnsResponse;)V
    .registers 9
    .parameter "resp"

    .prologue
    .line 309
    const/4 v2, 0x5

    .line 312
    .local v2, threadMessage:I
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 313
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 315
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 316
    .local v0, hdr:Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 317
    .local v1, msg:Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 318
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    return-void
.end method

.method private invokeHttpSendingThread()V
    .registers 5

    .prologue
    .line 332
    new-instance v0, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sns/http/SnsHttpSendingThread;-><init>(Lcom/sec/android/app/sns/http/SnsHttpMgr;)V

    .line 333
    .local v0, sendRunnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v2, 0x0

    const-string v3, "SnsHttpSendingThread"

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 334
    .local v1, sendThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 335
    return-void
.end method


# virtual methods
.method public abortRequest(I)V
    .registers 6
    .parameter "reqID"

    .prologue
    .line 458
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 460
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 461
    .local v2, queueSize:I
    if-lez v2, :cond_2d

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, httpReq:Lcom/sec/android/app/sns/http/SnsHttpRequest;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_2d

    .line 464
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #httpReq:Lcom/sec/android/app/sns/http/SnsHttpRequest;
    check-cast v0, Lcom/sec/android/app/sns/http/SnsHttpRequest;

    .line 465
    .restart local v0       #httpReq:Lcom/sec/android/app/sns/http/SnsHttpRequest;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getFwkReqID()I

    move-result v3

    if-ne v3, p1, :cond_33

    .line 468
    invoke-virtual {v0}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->getSendingFlag()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 469
    invoke-virtual {v0}, Lcom/sec/android/app/sns/http/SnsHttpRequest;->abort()V

    .line 473
    :cond_28
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 478
    .end local v0           #httpReq:Lcom/sec/android/app/sns/http/SnsHttpRequest;
    .end local v1           #i:I
    :cond_2d
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 479
    return-void

    .line 463
    .restart local v0       #httpReq:Lcom/sec/android/app/sns/http/SnsHttpRequest;
    .restart local v1       #i:I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public dequeueHttpRequest(Lcom/sec/android/app/sns/http/SnsHttpRequest;)V
    .registers 3
    .parameter "httpReq"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 386
    return-void
.end method

.method public enqueueHttpRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 17
    .parameter "reqID"
    .parameter "reqType"
    .parameter "httpMethod"
    .parameter "reqUri"
    .parameter "body"
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p7, httpHeaderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicHeader;>;"
    new-instance v0, Lcom/sec/android/app/sns/http/SnsHttpRequest;

    iget-object v5, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mUserAgent:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sns/http/SnsHttpRequest;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 372
    .local v0, httpReq:Lcom/sec/android/app/sns/http/SnsHttpRequest;
    iget-object v1, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v1, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 375
    return-void
.end method

.method public enqueueHttpRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 15
    .parameter "reqID"
    .parameter "reqType"
    .parameter "httpMethod"
    .parameter "reqUri"
    .parameter "body"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p6, httpHeaderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicHeader;>;"
    new-instance v0, Lcom/sec/android/app/sns/http/SnsHttpRequest;

    iget-object v5, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mUserAgent:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sns/http/SnsHttpRequest;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 352
    .local v0, httpReq:Lcom/sec/android/app/sns/http/SnsHttpRequest;
    iget-object v1, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 355
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public getHttpHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHttpReqQueue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sns/http/SnsHttpRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpReqQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSemaphore()Ljava/util/concurrent/Semaphore;
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method public getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;
    .registers 2

    .prologue
    .line 482
    invoke-static {}, Lcom/sec/android/app/sns/SnsSvc;->getInstance()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    return-object v0
.end method

.method public initAndStart()V
    .registers 16

    .prologue
    .line 120
    const/16 v3, 0x1e

    .line 121
    .local v3, SNS_HTTP_MAX_CONNECTION:I
    const/16 v1, 0x50

    .line 122
    .local v1, DEFAULT_PORT:I
    const/16 v2, 0x1bb

    .line 123
    .local v2, SECURE_PORT:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/sns/SnsSvc;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 126
    .local v8, resource:Landroid/content/res/Resources;
    const v11, 0x7f040001

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mUserAgent:Ljava/lang/String;

    .line 128
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mAppContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ReceivedFiles"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mReceivedFileDir:Ljava/lang/String;

    .line 131
    const/4 v6, 0x0

    .line 132
    .local v6, proxyAddr:Ljava/lang/String;
    const/16 v7, 0x50

    .line 133
    .local v7, proxyPort:I
    const v0, 0x9c40

    .line 136
    .local v0, CONNECTION_TIMEOUT_DURATION:I
    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 137
    iget-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v12, "http.conn-manager.max-total"

    const/16 v13, 0x1e

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 138
    iget-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v12, "http.conn-manager.max-per-route"

    new-instance v13, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v14, 0x1e

    invoke-direct {v13, v14}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 140
    iget-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v12, "http.protocol.expect-continue"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 145
    iget-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const v12, 0x9c40

    invoke-static {v11, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 146
    iget-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const v12, 0x9c40

    invoke-static {v11, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 149
    iget-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    sget-object v12, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v11, v12}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 151
    iget-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 152
    if-eqz v6, :cond_101

    .line 153
    iget-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v7

    .line 155
    new-instance v4, Lorg/apache/http/HttpHost;

    invoke-direct {v4, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 156
    .local v4, httpProxy:Lorg/apache/http/HttpHost;
    iget-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v12, "http.route.default-proxy"

    invoke-interface {v11, v12, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 157
    const-string v11, "SNS_HTTPMGR"

    const-string v12, "SnsHttpMgr : initAndStart() : [android.net.Proxy.getHost] : Proxy Address"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v4           #httpProxy:Lorg/apache/http/HttpHost;
    :goto_a8
    new-instance v9, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 165
    .local v9, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    const/4 v5, 0x0

    .line 166
    .local v5, normalPort:I
    invoke-static {}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getHttpServerAddress()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_109

    .line 167
    invoke-static {}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getHttpServerAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/sns/util/SnsUtil;->extractPortNumber(Ljava/lang/String;)I

    move-result v5

    .line 168
    if-nez v5, :cond_c0

    .line 169
    const/16 v5, 0x50

    .line 173
    :cond_c0
    :goto_c0
    new-instance v11, Lorg/apache/http/conn/scheme/Scheme;

    const-string v12, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v13

    invoke-direct {v11, v12, v13, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v11}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 181
    const/4 v10, 0x0

    .line 182
    .local v10, sslPort:I
    invoke-static {}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getSSLServerAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/sns/util/SnsUtil;->extractPortNumber(Ljava/lang/String;)I

    move-result v10

    .line 184
    if-nez v10, :cond_db

    .line 185
    const/16 v10, 0x1bb

    .line 187
    :cond_db
    new-instance v11, Lorg/apache/http/conn/scheme/Scheme;

    const-string v12, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v13

    invoke-direct {v11, v12, v13, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v9, v11}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 192
    new-instance v11, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v12, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v11, v12, v9}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mConnectionMgr:Lorg/apache/http/conn/ClientConnectionManager;

    .line 193
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v12, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mConnectionMgr:Lorg/apache/http/conn/ClientConnectionManager;

    iget-object v13, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v11, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->start()V

    .line 197
    return-void

    .line 160
    .end local v5           #normalPort:I
    .end local v9           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v10           #sslPort:I
    :cond_101
    const-string v11, "SNS_HTTPMGR"

    const-string v12, "SnsHttpMgr : initAndStart() : [android.net.Proxy.getHost] : NO PROXY ADDRESS"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 171
    .restart local v5       #normalPort:I
    .restart local v9       #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_109
    const/16 v5, 0x50

    goto :goto_c0
.end method

.method public registerHttpScheme(I)V
    .registers 6
    .parameter "port"

    .prologue
    .line 221
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 222
    const-string v0, "SNS_HTTPMGR"

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

    .line 226
    :goto_24
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

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

    .line 228
    return-void

    .line 224
    :cond_3d
    const-string v0, "SNS_HTTPMGR"

    const-string v1, "SnsHttpMgr : registerHttpScheme() : Port "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public registerSSLScheme(I)V
    .registers 6
    .parameter "port"

    .prologue
    .line 205
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 206
    const-string v0, "SNS_HTTPMGR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnsHttpMgr : registerSSLScheme() : Port = ["

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

    .line 211
    :goto_24
    iget-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 213
    return-void

    .line 208
    :cond_3d
    const-string v0, "SNS_HTTPMGR"

    const-string v1, "SnsHttpMgr : registerSSLScheme() : Port"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public run()V
    .registers 2

    .prologue
    .line 276
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 278
    new-instance v0, Lcom/sec/android/app/sns/http/SnsHttpMgr$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sns/http/SnsHttpMgr$1;-><init>(Lcom/sec/android/app/sns/http/SnsHttpMgr;)V

    iput-object v0, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHandler:Landroid/os/Handler;

    .line 305
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 306
    return-void
.end method

.method public setHttpDefaultProxy()V
    .registers 7

    .prologue
    .line 234
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, proxyAddr:Ljava/lang/String;
    const/16 v2, 0x50

    .line 237
    .local v2, proxyPort:I
    if-eqz v1, :cond_58

    .line 238
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v2

    .line 240
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 241
    .local v0, httpProxy:Lorg/apache/http/HttpHost;
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 242
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 244
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 245
    const-string v3, "SNS_HTTPMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SnsHttpMgr : setHttpDefaultProxy() : [android.net.Proxy.getHost] : Proxy Address = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v0           #httpProxy:Lorg/apache/http/HttpHost;
    :goto_4f
    return-void

    .line 249
    .restart local v0       #httpProxy:Lorg/apache/http/HttpHost;
    :cond_50
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "SnsHttpMgr : setHttpDefaultProxy()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 253
    .end local v0           #httpProxy:Lorg/apache/http/HttpHost;
    :cond_58
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpParams:Lorg/apache/http/params/HttpParams;

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 254
    iget-object v3, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.route.default-proxy"

    invoke-interface {v3, v4}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 255
    const-string v3, "SNS_HTTPMGR"

    const-string v4, "SnsHttpMgr : setHttpDefaultProxy() : [android.net.Proxy.getHost] : NO PROXY ADDRESS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method
