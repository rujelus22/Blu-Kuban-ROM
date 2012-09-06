.class Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;
.super Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;
.source "ContinuousConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/ContinuousConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PullingRunnable"
.end annotation


# instance fields
.field private final responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private stopped:Z

.field final synthetic this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/network/ContinuousConnector;)V
    .registers 3
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;-><init>(Lcom/google/android/apps/unveil/network/ContinuousConnector;Lcom/google/android/apps/unveil/network/ContinuousConnector$1;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #getter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->pullResponseHandlerFactory:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;
    invoke-static {v0}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$900(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler$Factory;->newResponseHandler()Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/network/ContinuousConnector;Lcom/google/android/apps/unveil/network/ContinuousConnector$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;-><init>(Lcom/google/android/apps/unveil/network/ContinuousConnector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 311
    :try_start_1
    sget-object v1, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CONTINUOUS_PULL:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    invoke-static {v1}, Lcom/google/android/apps/unveil/network/utils/Stats;->setThreadTag(Lcom/google/android/apps/unveil/network/utils/Stats$Tags;)V

    .line 312
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #getter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->pullRequestEntity:[B
    invoke-static {v1}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$1000(Lcom/google/android/apps/unveil/network/ContinuousConnector;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->doRequest([BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    :try_end_11
    .catch Lcom/google/android/apps/unveil/network/RequestFailedException; {:try_start_1 .. :try_end_11} :catch_21

    .line 324
    monitor-enter p0

    .line 325
    :try_start_12
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->stopped:Z

    if-nez v1, :cond_1f

    .line 326
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #getter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->threadPool:Ljava/util/concurrent/Executor;
    invoke-static {v1}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$500(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 328
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_4b

    .line 329
    :goto_20
    return-void

    .line 313
    :catch_21
    move-exception v0

    .line 314
    .local v0, e:Lcom/google/android/apps/unveil/network/RequestFailedException;
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/network/RequestFailedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/net/SocketException;

    if-eqz v1, :cond_3a

    iget-boolean v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->stopped:Z

    if-eqz v1, :cond_3a

    .line 316
    invoke-static {}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "SocketException after pull abort."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20

    .line 319
    :cond_3a
    invoke-static {}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Pull failed"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onNetworkError()V

    goto :goto_20

    .line 328
    .end local v0           #e:Lcom/google/android/apps/unveil/network/RequestFailedException;
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public declared-synchronized stop()V
    .registers 2

    .prologue
    .line 302
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->stopped:Z

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->request:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->request:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->isAborted()Z

    move-result v0

    if-nez v0, :cond_15

    .line 304
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PullingRunnable;->request:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_17

    .line 306
    :cond_15
    monitor-exit p0

    return-void

    .line 302
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
