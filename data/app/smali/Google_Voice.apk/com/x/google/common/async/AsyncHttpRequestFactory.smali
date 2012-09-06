.class public Lcom/x/google/common/async/AsyncHttpRequestFactory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/common/async/AsyncHttpRequestFactory$WatchdogTask;,
        Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_WORKER_COUNT:I = 0x1

.field private static final DEFAULT_WORKER_NAME:Ljava/lang/String; = "AsyncHttpRequestFactory"

.field protected static logger:Lcom/x/google/debug/LogSource;


# instance fields
.field private connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;

.field private mutex:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private queue:Ljava/util/Vector;

.field protected running:Z

.field private taskRunner:Lcom/x/google/common/task/TaskRunner;

.field private threadFactory:Lcom/x/google/common/lang/ThreadFactory;

.field private workers:[Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/x/google/common/async/AsyncHttpRequestFactory;

    invoke-static {v0}, Lcom/x/google/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/x/google/debug/LogSource;

    move-result-object v0

    sput-object v0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;Lcom/x/google/common/lang/ThreadFactory;Lcom/x/google/common/io/HttpConnectionFactory;)V
    .registers 10

    const-string v4, "AsyncHttpRequestFactory"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/x/google/common/async/AsyncHttpRequestFactory;-><init>(Lcom/x/google/common/task/TaskRunner;Lcom/x/google/common/lang/ThreadFactory;Lcom/x/google/common/io/HttpConnectionFactory;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;Lcom/x/google/common/lang/ThreadFactory;Lcom/x/google/common/io/HttpConnectionFactory;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    iput-object p1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    iput-object p2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->threadFactory:Lcom/x/google/common/lang/ThreadFactory;

    iput-object p3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;

    iput-object p4, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->name:Ljava/lang/String;

    new-array v0, p5, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/x/google/common/async/AsyncHttpRequestFactory;)Lcom/x/google/common/task/TaskRunner;
    .registers 2

    invoke-direct {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->getTaskRunner()Lcom/x/google/common/task/TaskRunner;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/x/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;Z)Lcom/x/google/common/io/GoogleHttpConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->createHttpConnection(Ljava/lang/String;Z)Lcom/x/google/common/io/GoogleHttpConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/x/google/common/async/AsyncHttpRequestFactory;)Lcom/x/google/common/io/HttpConnectionFactory;
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/x/google/common/async/AsyncHttpRequestFactory;Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->submitRequest(Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z

    move-result v0

    return v0
.end method

.method private createHttpConnection(Ljava/lang/String;Z)Lcom/x/google/common/io/GoogleHttpConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/x/google/common/io/HttpConnectionFactory;

    invoke-interface {v0, p1, p2}, Lcom/x/google/common/io/HttpConnectionFactory;->createConnection(Ljava/lang/String;Z)Lcom/x/google/common/io/GoogleHttpConnection;

    move-result-object v0

    return-object v0
.end method

.method private executeNextRequest()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_19

    iget-boolean v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->running:Z
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1f

    if-eqz v2, :cond_19

    :try_start_10
    iget-object v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_4

    :catch_16
    move-exception v2

    :try_start_17
    monitor-exit v1

    :goto_18
    return v0

    :cond_19
    iget-boolean v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->running:Z

    if-nez v2, :cond_22

    monitor-exit v1

    goto :goto_18

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    iget-object v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_1f

    :try_start_32
    sget-object v1, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "Executing AsyncHttpRequest "

    invoke-virtual {v1, v2}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->run()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3c} :catch_3e

    :goto_3c
    const/4 v0, 0x1

    goto :goto_18

    :catch_3e
    move-exception v0

    sget-object v1, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "AsyncHttpRequestFactory.run(): uncaught exception"

    invoke-virtual {v1, v2, v0}, Lcom/x/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c
.end method

.method private getTaskRunner()Lcom/x/google/common/task/TaskRunner;
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->taskRunner:Lcom/x/google/common/task/TaskRunner;

    return-object v0
.end method

.method private submitRequest(Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    .registers 4

    iget-object v1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_17

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method


# virtual methods
.method public cancelRequest(Lcom/x/google/common/async/AsyncHttpRequest;)Z
    .registers 4

    iget-object v1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public createAsyncHttpRequest(Ljava/lang/String;)Lcom/x/google/common/async/AsyncHttpRequest;
    .registers 4

    new-instance v0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;-><init>(Lcom/x/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createAsyncHttpRequest(Ljava/lang/String;I)Lcom/x/google/common/async/AsyncHttpRequest;
    .registers 4

    new-instance v0, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/x/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;-><init>(Lcom/x/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;I)V

    return-object v0
.end method

.method public run()V
    .registers 3

    sget-object v0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    const-string v1, "run"

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    :cond_7
    invoke-direct {p0}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->executeNextRequest()Z

    move-result v0

    if-nez v0, :cond_7

    return-void
.end method

.method public start()V
    .registers 7

    iget-object v1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->running:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->running:Z

    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    iget-object v3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->threadFactory:Lcom/x/google/common/lang/ThreadFactory;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lcom/x/google/common/lang/ThreadFactory;->createThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3d
    monitor-exit v1

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public stop()V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Thread;

    iget-object v2, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-boolean v3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->running:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->running:Z

    :goto_11
    iget-object v3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    array-length v3, v3

    if-ge v0, v3, :cond_24

    iget-object v3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    aget-object v3, v3, v0

    aput-object v3, v1, v0

    iget-object v3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_24
    iget-object v0, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_29
    monitor-exit v2

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public stopAndWait()V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/Thread;

    iget-object v1, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-boolean v3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->running:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->running:Z

    iget-object v3, p0, Lcom/x/google/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_38

    :goto_17
    array-length v1, v2

    if-ge v0, v1, :cond_54

    aget-object v1, v2, v0

    if-eqz v1, :cond_35

    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_35

    aget-object v1, v2, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v1, v3, :cond_3b

    sget-object v1, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "Skipping stopAndWait as the caller is a worker"

    invoke-virtual {v1, v3}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    :cond_35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0

    :cond_3b
    :try_start_3b
    sget-object v1, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "stopAndWait - waiting"

    invoke-virtual {v1, v3}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    sget-object v1, Lcom/x/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/x/google/debug/LogSource;

    const-string v3, "stopAndWait - done"

    invoke-virtual {v1, v3}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_4e} :catch_4f

    goto :goto_35

    :catch_4f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_35

    :cond_54
    return-void
.end method
