.class public abstract Lcom/vlingo/client/core/http/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/http/HttpManager$1;,
        Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;,
        Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;,
        Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
    }
.end annotation


# instance fields
.field private final backgroudExecutorLock:Ljava/lang/Object;

.field private final backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

.field private volatile backgroundExecutorPaused:Z

.field private final onDemandExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

.field private final recoListener:Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;

.field private final requestTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/vlingo/client/core/http/HttpRequest;",
            "Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutTimer:Ljava/util/Timer;


# direct methods
.method protected constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    const-string v1, "OnDemandHttpManager"

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->onDemandExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    .line 56
    new-instance v0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    const-string v1, "BackgroundHttpManager"

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    .line 59
    new-instance v0, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;-><init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpManager$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->recoListener:Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;

    .line 62
    iput-boolean v3, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutorPaused:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroudExecutorLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->requestTable:Ljava/util/Hashtable;

    .line 76
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->onDemandExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->setMinPoolSize(I)V

    .line 77
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->onDemandExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->setMaxPoolSize(I)V

    .line 78
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->onDemandExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->setDynamicSizing(Z)V

    .line 79
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->onDemandExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->setThreadPriority(I)V

    .line 81
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->setMinPoolSize(I)V

    .line 82
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->setMaxPoolSize(I)V

    .line 83
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->setDynamicSizing(Z)V

    .line 84
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->setThreadPriority(I)V

    .line 86
    invoke-static {}, Lcom/vlingo/client/core/util/TimerSingleton;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->timeoutTimer:Ljava/util/Timer;

    .line 89
    :try_start_60
    invoke-static {}, Lcom/vlingo/client/core/asr/RecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager;->recoListener:Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->addRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_69} :catch_6a

    .line 94
    :goto_69
    return-void

    .line 91
    :catch_6a
    move-exception v0

    goto :goto_69
.end method

.method static synthetic access$1000(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/http/HttpManager;->requestWasRan(Lcom/vlingo/client/core/http/HttpRequest;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/core/http/HttpManager;->requestHasTimedOut(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vlingo/client/core/http/HttpManager;)Lcom/vlingo/client/core/util/ThreadPoolExecutor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vlingo/client/core/http/HttpManager;)Lcom/vlingo/client/core/util/ThreadPoolExecutor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->onDemandExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vlingo/client/core/http/HttpManager;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->timeoutTimer:Ljava/util/Timer;

    return-object v0
.end method

.method public static declared-synchronized getSharedInstance()Lcom/vlingo/client/core/http/HttpManager;
    .registers 2

    .prologue
    .line 72
    const-class v1, Lcom/vlingo/client/core/http/HttpManager;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/vlingo/client/core/common/SharedInstanceManager;->getInstance()Lcom/vlingo/client/core/common/SharedInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/common/SharedInstanceManager;->httpSharedInstance_get()Lcom/vlingo/client/core/http/HttpManager;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized requestHasTimedOut(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;)V
    .registers 6
    .parameter "request"
    .parameter "originatingTimeoutTask"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpManager;->requestTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 169
    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpManager;->requestTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;

    .line 170
    .local v0, fetcher:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
    invoke-virtual {v0, p2}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeout(Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;)Z

    move-result v1

    .line 171
    .local v1, timedOut:Z
    if-eqz v1, :cond_1c

    .line 172
    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpManager;->requestTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 175
    .end local v0           #fetcher:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
    .end local v1           #timedOut:Z
    :cond_1c
    monitor-exit p0

    return-void

    .line 168
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized requestWasRan(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->requestTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 179
    monitor-exit p0

    return-void

    .line 178
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancelRequest(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/http/HttpManager;->cancelRequestInternal(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 110
    return-void
.end method

.method protected declared-synchronized cancelRequestInternal(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager;->requestTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 136
    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager;->requestTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;

    .line 137
    .local v0, fetcher:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->cancel()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 143
    .end local v0           #fetcher:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
    :cond_14
    monitor-exit p0

    return-void

    .line 135
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public doBackgroundRequest(Lcom/vlingo/client/core/http/HttpRequest;ZZ)V
    .registers 4
    .parameter "request"
    .parameter "highPriority"
    .parameter "ordered"

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lcom/vlingo/client/core/http/HttpManager;->doBackgroundRequestInternal(Lcom/vlingo/client/core/http/HttpRequest;ZZ)V

    .line 102
    return-void
.end method

.method protected declared-synchronized doBackgroundRequestInternal(Lcom/vlingo/client/core/http/HttpRequest;ZZ)V
    .registers 11
    .parameter "request"
    .parameter "highPriority"
    .parameter "ordered"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;-><init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;ZZZLcom/vlingo/client/core/http/HttpManager$1;)V

    .line 120
    .local v0, fetcher:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
    #calls: Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->start()V
    invoke-static {v0}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->access$200(Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;)V

    .line 121
    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager;->requestTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 122
    monitor-exit p0

    return-void

    .line 119
    .end local v0           #fetcher:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public doBackgroundRequestLater(Lcom/vlingo/client/core/http/HttpRequest;JZZ)V
    .registers 6
    .parameter "request"
    .parameter "delay"
    .parameter "highPriority"
    .parameter "ordered"

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p5}, Lcom/vlingo/client/core/http/HttpManager;->doBackgroundRequestLaterInternal(Lcom/vlingo/client/core/http/HttpRequest;JZZ)V

    .line 106
    return-void
.end method

.method protected declared-synchronized doBackgroundRequestLaterInternal(Lcom/vlingo/client/core/http/HttpRequest;JZZ)V
    .registers 13
    .parameter "request"
    .parameter "delay"
    .parameter "highPriority"
    .parameter "ordered"

    .prologue
    .line 125
    monitor-enter p0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_c

    .line 126
    :try_start_7
    invoke-virtual {p0, p1, p4, p5}, Lcom/vlingo/client/core/http/HttpManager;->doBackgroundRequest(Lcom/vlingo/client/core/http/HttpRequest;ZZ)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_20

    .line 132
    :goto_a
    monitor-exit p0

    return-void

    .line 128
    :cond_c
    :try_start_c
    new-instance v0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;-><init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;ZZZLcom/vlingo/client/core/http/HttpManager$1;)V

    .line 129
    .local v0, fetcher:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
    #calls: Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->schedule(J)V
    invoke-static {v0, p2, p3}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->access$400(Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;J)V

    .line 130
    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager;->requestTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_20

    goto :goto_a

    .line 125
    .end local v0           #fetcher:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public doRequestNow(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/http/HttpManager;->doRequestNowInternal(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 98
    return-void
.end method

.method protected declared-synchronized doRequestNowInternal(Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;-><init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpManager$1;)V

    .line 114
    .local v0, fetcher:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
    #calls: Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->start()V
    invoke-static {v0}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->access$200(Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;)V

    .line 115
    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager;->requestTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 116
    monitor-exit p0

    return-void

    .line 113
    .end local v0           #fetcher:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected okToResume()Z
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->recoListener:Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;

    #getter for: Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->paused:Z
    invoke-static {v0}, Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;->access$500(Lcom/vlingo/client/core/http/HttpManager$RecognitionStateListenerImpl;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onListenerPaused()V
    .registers 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroudExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_3
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutorPaused:Z

    if-nez v0, :cond_f

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutorPaused:Z

    .line 187
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->pause()V

    .line 189
    :cond_f
    monitor-exit v1

    .line 190
    return-void

    .line 189
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected onListenerResume()V
    .registers 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroudExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_3
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutorPaused:Z

    if-eqz v0, :cond_15

    .line 196
    invoke-virtual {p0}, Lcom/vlingo/client/core/http/HttpManager;->okToResume()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutorPaused:Z

    .line 198
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->resume()V

    .line 201
    :cond_15
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method
