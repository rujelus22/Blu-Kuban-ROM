.class final Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;
.super Lcom/vlingo/client/core/http/BaseHttpCallback;
.source "CarTTSCachedRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/tts/CarTTSCachedRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HttpCallbackImpl"
.end annotation


# static fields
.field private static final RETRY_ATTEMPTS:I = 0x2


# instance fields
.field private onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

.field private request:Lcom/vlingo/client/core/tts/TTSRequest2;

.field private retryAttempt:I

.field final synthetic this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Lcom/vlingo/client/core/tts/TTSRequest2;)V
    .registers 5
    .parameter
    .parameter "request"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->retryAttempt:I

    .line 513
    iput-object p2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 514
    invoke-static {p2, p0}, Lcom/vlingo/client/core/tts/TTSEngine;->getHttpRequest(Lcom/vlingo/client/core/tts/TTSRequest2;Lcom/vlingo/client/core/http/HttpCallback;)Lcom/vlingo/client/core/http/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

    .line 515
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

    const/16 v1, 0x2ee0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/http/HttpRequest;->setTimeout(I)V

    .line 516
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Lcom/vlingo/client/core/tts/TTSRequest2;Lcom/vlingo/client/car/tts/CarTTSCachedRequests$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 504
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Lcom/vlingo/client/core/tts/TTSRequest2;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->cancel()V

    return-void
.end method

.method static synthetic access$1500(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->fetchAudio()V

    return-void
.end method

.method static synthetic access$1700(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)Lcom/vlingo/client/core/tts/TTSRequest2;
    .registers 2
    .parameter "x0"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    return-object v0
.end method

.method private cancel()V
    .registers 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpRequest;->cancel()V

    .line 524
    monitor-enter p0

    .line 525
    :try_start_6
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    if-eqz v0, :cond_13

    .line 526
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->setCancelled(Z)V

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 529
    :cond_13
    monitor-exit p0

    .line 530
    return-void

    .line 529
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private fetchAudio()V
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->onDemandRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpRequest;->start()V

    .line 537
    return-void
.end method

.method private declared-synchronized ignore()V
    .registers 2

    .prologue
    .line 542
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$1;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 550
    invoke-direct {p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->cancel()V

    .line 551
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestComplete(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
    invoke-static {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1600(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 552
    monitor-exit p0

    return-void

    .line 542
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized onCancelled(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 649
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_7

    if-nez v0, :cond_5

    .line 654
    :cond_5
    monitor-exit p0

    return-void

    .line 649
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 599
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_7

    .line 614
    :goto_5
    monitor-exit p0

    return-void

    .line 605
    :cond_7
    :try_start_7
    new-instance v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$4;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;Lcom/vlingo/client/core/http/HttpRequest;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 613
    invoke-direct {p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->ignore()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_5

    .line 599
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 8
    .parameter "onDemandRequest"
    .parameter "response"

    .prologue
    .line 555
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cancelled:Z
    invoke-static {v3}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$100(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_2d

    move-result v3

    if-eqz v3, :cond_f

    .line 596
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 564
    :cond_f
    const/4 v1, 0x1

    .line 565
    .local v1, error:Z
    const/4 v0, 0x0

    .line 567
    .local v0, audioData:[B
    :try_start_11
    iget v3, p2, Lcom/vlingo/client/core/http/HttpResponse;->responseCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1f

    .line 568
    invoke-virtual {p2}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsBytes()[B

    move-result-object v0

    .line 569
    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSEngine;->isErrorResponse([B)Z

    move-result v1

    .line 572
    :cond_1f
    if-eqz v1, :cond_30

    .line 573
    new-instance v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$2;

    invoke-direct {v3, p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$2;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V

    invoke-static {v3}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 580
    invoke-direct {p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->ignore()V
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_2d

    goto :goto_d

    .line 555
    .end local v0           #audioData:[B
    .end local v1           #error:Z
    :catchall_2d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 584
    .restart local v0       #audioData:[B
    .restart local v1       #error:Z
    :cond_30
    :try_start_30
    iget-object v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->persistentCache:Lcom/vlingo/client/core/tts/TTSFileCache;
    invoke-static {v3}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$400(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Lcom/vlingo/client/core/tts/TTSFileCache;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v3, v4, v0}, Lcom/vlingo/client/core/tts/TTSFileCache;->addToCache(Lcom/vlingo/client/core/tts/TTSRequest2;[B)Z

    move-result v2

    .line 585
    .local v2, isNew:Z
    iget-object v3, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestComplete(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
    invoke-static {v3, p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1600(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V

    .line 586
    if-nez v2, :cond_d

    .line 587
    new-instance v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$3;

    invoke-direct {v3, p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$3;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V

    invoke-static {v3}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V
    :try_end_4b
    .catchall {:try_start_30 .. :try_end_4b} :catchall_2d

    goto :goto_d
.end method

.method public declared-synchronized onTimeout(Lcom/vlingo/client/core/http/HttpRequest;)Z
    .registers 5
    .parameter "request"

    .prologue
    const/4 v0, 0x1

    .line 617
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1f

    if-nez v1, :cond_8

    .line 640
    :goto_6
    monitor-exit p0

    return v0

    .line 623
    :cond_8
    :try_start_8
    new-instance v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl$5;-><init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;Lcom/vlingo/client/core/http/HttpRequest;)V

    invoke-static {v1}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 631
    iget v1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->retryAttempt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->retryAttempt:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1b

    .line 634
    const/4 v0, 0x0

    goto :goto_6

    .line 639
    :cond_1b
    invoke-direct {p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;->ignore()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1f

    goto :goto_6

    .line 617
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
