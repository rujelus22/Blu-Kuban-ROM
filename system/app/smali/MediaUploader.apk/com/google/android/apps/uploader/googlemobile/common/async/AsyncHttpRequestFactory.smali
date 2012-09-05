.class public Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;,
        Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_WORKER_COUNT:I = 0x1

.field private static final DEFAULT_WORKER_NAME:Ljava/lang/String; = "AsyncHttpRequestFactory"


# instance fields
.field private connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

.field private mutex:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private queue:Ljava/util/Vector;

.field private running:Z

.field private taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

.field private threadFactory:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

.field private workers:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;)V
    .registers 10

    const-string v4, "AsyncHttpRequestFactory"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->threadFactory:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

    iput-object p3, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    iput-object p4, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->name:Ljava/lang/String;

    new-array v0, p5, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;)Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->getTaskRunner()Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;Ljava/lang/String;Z)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->createHttpConnection(Ljava/lang/String;Z)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;)Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z

    move-result v0

    return v0
.end method

.method private createHttpConnection(Ljava/lang/String;Z)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;->createConnection(Ljava/lang/String;Z)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    move-result-object v0

    return-object v0
.end method

.method private getTaskRunner()Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->taskRunner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    return-object v0
.end method

.method private submitRequest(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    :goto_18
    return v0

    :cond_19
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_18

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public cancelRequest(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public createAsyncHttpRequest(Ljava/lang/String;)Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;
    .registers 3

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;Ljava/lang/String;)V

    return-object v0
.end method

.method public run()V
    .registers 5

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    move-result v0

    if-nez v0, :cond_14

    :try_start_b
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_3

    :catch_11
    move-exception v0

    :try_start_12
    monitor-exit v1

    :goto_13
    return-void

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->running:Z

    if-nez v0, :cond_1d

    monitor-exit v1

    goto :goto_13

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->queue:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_1a

    :try_start_2d
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->run()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_0

    :catch_31
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->running:Z

    if-nez v1, :cond_3d

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->running:Z

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v1, v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->threadFactory:Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/google/android/apps/uploader/googlemobile/common/lang/ThreadFactory;->createThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public stop()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->running:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->running:Z

    move v1, v3

    :goto_d
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->workers:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v1
.end method
