.class Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/vlingo/client/core/util/ThreadPoolRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/http/HttpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRequestFetchTask"
.end annotation


# instance fields
.field private final background:Z

.field private finished:Z

.field private future:Lcom/vlingo/client/core/util/Future;

.field private final highPriority:Z

.field private final ordered:Z

.field private final parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

.field final synthetic this$0:Lcom/vlingo/client/core/http/HttpManager;

.field private timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

.field private volatile waitTime:J


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;)V
    .registers 9
    .parameter
    .parameter "request"

    .prologue
    const/4 v3, 0x0

    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;-><init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;ZZZ)V

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpManager$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;-><init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;)V

    return-void
.end method

.method private constructor <init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;ZZZ)V
    .registers 8
    .parameter
    .parameter "request"
    .parameter "background"
    .parameter "highPriority"
    .parameter "ordered"

    .prologue
    const/4 v0, 0x0

    .line 241
    iput-object p1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->future:Lcom/vlingo/client/core/util/Future;

    .line 222
    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finished:Z

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->waitTime:J

    .line 242
    iput-object p2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    .line 243
    iput-boolean p3, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->background:Z

    .line 244
    iput-boolean p4, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->highPriority:Z

    .line 245
    iput-boolean p5, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->ordered:Z

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;ZZZLcom/vlingo/client/core/http/HttpManager$1;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 208
    invoke-direct/range {p0 .. p5}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;-><init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;ZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->start()V

    return-void
.end method

.method static synthetic access$400(Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->schedule(J)V

    return-void
.end method

.method private declared-synchronized finish()V
    .registers 2

    .prologue
    .line 322
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finished:Z

    .line 323
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    if-eqz v0, :cond_10

    .line 324
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;->cancel()Z

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    .line 327
    :cond_10
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->future:Lcom/vlingo/client/core/util/Future;

    if-eqz v0, :cond_1c

    .line 328
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->future:Lcom/vlingo/client/core/util/Future;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/Future;->cancel()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->future:Lcom/vlingo/client/core/util/Future;
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1e

    .line 331
    :cond_1c
    monitor-exit p0

    return-void

    .line 322
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized schedule(J)V
    .registers 7
    .parameter "delay"

    .prologue
    .line 272
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finished:Z

    if-nez v0, :cond_4b

    .line 275
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_4d

    .line 276
    iput-wide p1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->waitTime:J

    .line 277
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    #getter for: Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;
    invoke-static {v0}, Lcom/vlingo/client/core/http/HttpManager;->access$600(Lcom/vlingo/client/core/http/HttpManager;)Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->executeLater(Ljava/lang/Runnable;J)Lcom/vlingo/client/core/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->future:Lcom/vlingo/client/core/util/Future;

    .line 283
    :goto_19
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    if-eqz v0, :cond_25

    .line 284
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;->cancel()Z

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    .line 287
    :cond_25
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpRequest;->getTimeout()I

    move-result v0

    if-lez v0, :cond_4b

    .line 288
    new-instance v0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;-><init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpManager$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    .line 289
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    #getter for: Lcom/vlingo/client/core/http/HttpManager;->timeoutTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/vlingo/client/core/http/HttpManager;->access$900(Lcom/vlingo/client/core/http/HttpManager;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v2}, Lcom/vlingo/client/core/http/HttpRequest;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_5a

    .line 292
    :cond_4b
    monitor-exit p0

    return-void

    .line 280
    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    #getter for: Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;
    invoke-static {v0}, Lcom/vlingo/client/core/http/HttpManager;->access$600(Lcom/vlingo/client/core/http/HttpManager;)Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)Lcom/vlingo/client/core/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->future:Lcom/vlingo/client/core/util/Future;
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_5a

    goto :goto_19

    .line 272
    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized start()V
    .registers 5

    .prologue
    .line 249
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finished:Z

    if-nez v0, :cond_47

    .line 254
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->background:Z

    if-eqz v0, :cond_49

    .line 255
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    #getter for: Lcom/vlingo/client/core/http/HttpManager;->backgroundExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;
    invoke-static {v0}, Lcom/vlingo/client/core/http/HttpManager;->access$600(Lcom/vlingo/client/core/http/HttpManager;)Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)Lcom/vlingo/client/core/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->future:Lcom/vlingo/client/core/util/Future;

    .line 260
    :goto_15
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    if-eqz v0, :cond_21

    .line 261
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;->cancel()Z

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    .line 264
    :cond_21
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpRequest;->getTimeout()I

    move-result v0

    if-lez v0, :cond_47

    .line 265
    new-instance v0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;-><init>(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpManager$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    .line 266
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    #getter for: Lcom/vlingo/client/core/http/HttpManager;->timeoutTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/vlingo/client/core/http/HttpManager;->access$900(Lcom/vlingo/client/core/http/HttpManager;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v2}, Lcom/vlingo/client/core/http/HttpRequest;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_56

    .line 269
    :cond_47
    monitor-exit p0

    return-void

    .line 257
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    #getter for: Lcom/vlingo/client/core/http/HttpManager;->onDemandExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;
    invoke-static {v0}, Lcom/vlingo/client/core/http/HttpManager;->access$700(Lcom/vlingo/client/core/http/HttpManager;)Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)Lcom/vlingo/client/core/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->future:Lcom/vlingo/client/core/util/Future;
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_56

    goto :goto_15

    .line 249
    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finished:Z

    if-nez v0, :cond_d

    .line 296
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpRequest;->notifyCancelled()V

    .line 297
    invoke-direct {p0}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finish()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 299
    :cond_d
    monitor-exit p0

    return-void

    .line 295
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isHighPriority()Z
    .registers 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->background:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->highPriority:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOrdered()Z
    .registers 2

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->background:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->ordered:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public declared-synchronized isRetry()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 359
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finished:Z

    if-nez v2, :cond_27

    .line 360
    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v2}, Lcom/vlingo/client/core/http/HttpRequest;->isRetry()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 361
    iget-boolean v2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->background:Z

    if-eqz v2, :cond_1b

    .line 362
    iget-wide v2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->waitTime:J
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_29

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1d

    .line 376
    :cond_1b
    :goto_1b
    monitor-exit p0

    return v0

    .line 368
    :cond_1d
    :try_start_1d
    iget-wide v2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->waitTime:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->schedule(J)V
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    move v0, v1

    .line 369
    goto :goto_1b

    :cond_27
    move v0, v1

    .line 376
    goto :goto_1b

    .line 359
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 335
    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/HttpRequest;->notifyWillExecute()V

    .line 338
    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/HttpRequest;->fetchResponse()Lcom/vlingo/client/core/http/HttpResponse;

    move-result-object v0

    .line 340
    .local v0, response:Lcom/vlingo/client/core/http/HttpResponse;
    monitor-enter p0

    .line 341
    :try_start_c
    iget-boolean v1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finished:Z

    if-nez v1, :cond_18

    .line 342
    invoke-direct {p0}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finish()V

    .line 343
    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/http/HttpRequest;->notifyResponse(Lcom/vlingo/client/core/http/HttpResponse;)V

    .line 345
    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_21

    .line 347
    iget-object v1, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->this$0:Lcom/vlingo/client/core/http/HttpManager;

    iget-object v2, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    #calls: Lcom/vlingo/client/core/http/HttpManager;->requestWasRan(Lcom/vlingo/client/core/http/HttpRequest;)V
    invoke-static {v1, v2}, Lcom/vlingo/client/core/http/HttpManager;->access$1000(Lcom/vlingo/client/core/http/HttpManager;Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 348
    return-void

    .line 345
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public declared-synchronized timeout(Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;)Z
    .registers 3
    .parameter "originatingTask"

    .prologue
    .line 311
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->timeoutTask:Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTimeoutTask;

    if-ne p1, v0, :cond_18

    .line 312
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finished:Z

    if-nez v0, :cond_14

    .line 313
    invoke-direct {p0}, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finish()V

    .line 314
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->parentRequest:Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/HttpRequest;->notifyTimeout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finished:Z

    .line 316
    :cond_14
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpManager$HttpRequestFetchTask;->finished:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    .line 318
    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    .line 311
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
